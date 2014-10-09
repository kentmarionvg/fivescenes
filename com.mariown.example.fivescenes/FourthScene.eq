
/*
 * FourthScene
 * Created by Eqela Studio 2.0b7.4
 */

public class FourthScene:SEScene
{
	SESprite sprite4;
	SESprite bg;

	SESprite text;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));

		rsc.prepare_image("background","bg",get_scene_width());
		bg= add_sprite_for_image(SEImage.for_resource("background"));
		bg.move(0,0);

		rsc.prepare_image("mysprite4","sprite4",get_scene_width()*0.5);
		sprite4= add_sprite_for_image(SEImage.for_resource("mysprite4"));
		sprite4.move(500,200);

		rsc.prepare_font("myfont","arial bold color=white", 40);
		text= add_sprite_for_text("TO MAIN","myfont");
		text.move(get_scene_width()-text.get_width()-50,get_scene_height()-text.get_height()-50);
	}

	public void on_pointer_press(SEPointerInfo pi) {
		if(pi.is_inside(get_scene_width()-text.get_width()-50,get_scene_height()-text.get_height()-50,get_scene_width(), get_scene_height())) {
			switch_scene(new MainScene());
		}
	}
}
