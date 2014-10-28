/**
 * Class Name: TestSpriteBase
 * Description:
 * Created by Ryan on 2014/10/17 20:36.
 */
package {
import flash.display.Sprite;
import flash.events.Event;

public class TestSpriteBase extends Sprite {
    //-----------------------------------------
    //Var
    //-----------------------------------------

    public function TestSpriteBase() {
        super();
        if(stage)
        {
            initSelf();
        }else{
            addEventListener(Event.ADDED_TO_STAGE, initSelf);
        }

    }
    //-----------------------------------------
    //Methods
    //-----------------------------------------
    private function initSelf(e:Event=null):void {
        removeEventListener(Event.ADDED_TO_STAGE, initSelf);
        initUI();
    }

    protected function initUI():void {

    }
}
}
