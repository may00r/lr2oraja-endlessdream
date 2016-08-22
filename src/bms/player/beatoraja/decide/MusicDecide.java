package bms.player.beatoraja.decide;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

import bms.player.beatoraja.MainController;
import bms.player.beatoraja.MainState;
import bms.player.beatoraja.PlayerResource;
import bms.player.beatoraja.input.BMSPlayerInputProcessor;
import bms.player.beatoraja.play.BMSPlayer;
import bms.player.beatoraja.skin.LR2DecideSkinLoader;
import bms.player.beatoraja.skin.SkinImage;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.audio.Sound;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Rectangle;

/**
 * 曲決定部分。
 * 
 * @author exch
 */
public class MusicDecide extends MainState {

	private Sound bgm;
	
	public MusicDecide(MainController main) {
		super(main);
	}

	public void create() {
		final PlayerResource resource = getMainController().getPlayerResource();
		if(resource.getConfig().getBgmpath().length() > 0) {
			final File bgmfolder = new File(resource.getConfig().getBgmpath());
			if(bgmfolder.exists() && bgmfolder.isDirectory()) {
				for(File f : bgmfolder.listFiles()) {
					if (bgm == null) {
						if (f.getName().equals("decide.wav")) {
							bgm = Gdx.audio.newSound(Gdx.files.internal(f.getPath()));
							break;
						}
					}			
				}
			}
		}
		if(bgm != null) {
			bgm.play();			
		}

		if(getSkin() == null) {
			if (resource.getConfig().getLr2decideskin() != null) {
				LR2DecideSkinLoader loader = new LR2DecideSkinLoader();
				try {
					setSkin(loader.loadMusicDecideSkin(new File(resource.getConfig().getLr2decideskin()), resource
							.getConfig().getLr2decideskinoption()));
				} catch (IOException e) {
					e.printStackTrace();
					setSkin(new MusicDecideSkin(MainController.RESOLUTION[resource.getConfig().getResolution()]));
				}
			} else {
				setSkin(new MusicDecideSkin(MainController.RESOLUTION[resource.getConfig().getResolution()]));
			}			
		}
	}

	public void render() {
		SpriteBatch sprite = getMainController().getSpriteBatch();
		final PlayerResource resource = getMainController().getPlayerResource();
		long nowtime = getNowTime();
		final float w = MainController.RESOLUTION[resource.getConfig().getResolution()].width;
		final float h = MainController.RESOLUTION[resource.getConfig().getResolution()].height;

		if (resource.getCourseBMSModels() == null && resource.getBGAManager().getStagefileData() != null) {
			sprite.begin();
			sprite.draw(resource.getBGAManager().getStagefileData(), 0, 0, w, h);
			sprite.end();
		}

		if(getTimer()[BMSPlayer.TIMER_FADEOUT] != -1) {
			if (nowtime > getTimer()[BMSPlayer.TIMER_FADEOUT] + getSkin().getFadeoutTime()) {
				getMainController().changeState(MainController.STATE_PLAYBMS);
			}			
		} else {
			if(nowtime > getSkin().getInputTime()) {
				BMSPlayerInputProcessor input = getMainController().getInputProcessor();
				if(input.getKeystate()[0] || input.getKeystate()[2] || input.getKeystate()[4] || input.getKeystate()[6]) {
					getTimer()[BMSPlayer.TIMER_FADEOUT] = nowtime;					
				}
			}
			if(nowtime > getSkin().getSceneTime()) {
				getTimer()[BMSPlayer.TIMER_FADEOUT] = nowtime;
			}
		}
	}

	@Override
	public void dispose() {
		if(bgm != null) {
			bgm.dispose();
			bgm = null;
		}
	}

	public String getTextValue(int id) {
		final PlayerResource resource = getMainController().getPlayerResource();
		if(resource.getCourseBMSModels() != null) {
			switch(id) {
			case STRING_TITLE:
			case STRING_FULLTITLE:
				return resource.getCoursetitle();
			}
			return "";
		}
		return super.getTextValue(id);
	}
}
