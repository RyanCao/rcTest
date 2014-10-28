/**
 * Class Name: CalcMediator
 * Description:
 * Created by Ryan on 2014/10/28 21:55.
 */
package com.rcTest.dataTest.module.calc.mediator {
import com.rcTest.dataTest.module.calc.proxy.CalcModel;
import com.rcTest.dataTest.module.calc.view.CalcView;

import org.rcSpark.binding.BindingUtils;
import org.rcSpark.binding.ChangeWatcher;

import robotlegs.bender.bundles.mvcs.Mediator;

public class CalcMediator extends Mediator {
    //-----------------------------------------
    //Var
    //-----------------------------------------
    [Inject]
    public var view:CalcView ;

    [Inject]
    public var model:CalcModel ;

    private var changeWatcher:ChangeWatcher;

    public function CalcMediator() {
        super();
    }

    //-----------------------------------------
    //Methods
    //-----------------------------------------
    override public function initialize():void{
        super.initialize();
        //绑定 数据到 结果上
        changeWatcher = BindingUtils.bindProperty(view.text,"text",model.result,"result");
    }

    override public function destroy():void{
        super.destroy();
        if(changeWatcher){
            changeWatcher.unwatch();
        }
    }

}
}
