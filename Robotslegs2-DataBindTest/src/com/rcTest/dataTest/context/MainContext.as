/**
 * Class Name: MainContext
 * Description:
 * Created by Ryan on 2014/10/28 21:49.
 */
package com.rcTest.dataTest.context {
import com.rcTest.dataTest.module.calc.config.CalcConfig;

import flash.display.DisplayObjectContainer;

import robotlegs.bender.bundles.mvcs.MVCSBundle;
import robotlegs.bender.extensions.contextView.ContextView;
import robotlegs.bender.framework.impl.Context;

public class MainContext {
    //-----------------------------------------
    //Var
    //-----------------------------------------

    public function MainContext() {
    }

    //-----------------------------------------
    //Methods
    //-----------------------------------------
    public static function initFrameWork(root:DisplayObjectContainer):void{
        MainContextData.context = new Context().
                install(MVCSBundle).
                configure(new ContextView(root)).
                configure(CalcConfig);
        MainContextData.context.initialize();
    }
}
}
