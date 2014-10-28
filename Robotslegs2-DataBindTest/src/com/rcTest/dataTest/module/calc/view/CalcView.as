/**
 * Class Name: CalcView
 * Description:
 * Created by Ryan on 2014/10/28 21:55.
 */
package com.rcTest.dataTest.module.calc.view {
import flash.display.Sprite;
import flash.text.TextField;

public class CalcView extends Sprite {
    public var text:TextField;

    //-----------------------------------------
    //Var
    //-----------------------------------------

    public function CalcView() {
        super();
        initUI();
    }

    private function initUI():void {
        text = new TextField();
        addChild(text);
        text.text = "HHHHHHHHHH";
    }

    //-----------------------------------------
    //Methods
    //-----------------------------------------

}
}
