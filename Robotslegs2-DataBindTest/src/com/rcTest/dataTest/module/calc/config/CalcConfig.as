/**
 * Class Name: CalcConfig
 * Description:
 * Created by Ryan on 2014/10/28 21:54.
 */
package com.rcTest.dataTest.module.calc.config {
import com.rcTest.dataTest.module.calc.mediator.CalcMediator;
import com.rcTest.dataTest.module.calc.proxy.CalcModel;
import com.rcTest.dataTest.module.calc.proxy.CalcService;
import com.rcTest.dataTest.module.calc.view.CalcView;

import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
import robotlegs.bender.framework.api.IConfig;
import robotlegs.bender.framework.api.IInjector;

public class CalcConfig implements IConfig {
    //-----------------------------------------
    //Var
    //-----------------------------------------
    [Inject]
    public var injector:IInjector ;

    [Inject]
    public var mediatorMap:IMediatorMap ;

    [Inject]
    public var commandMap:IEventCommandMap ;

    public function CalcConfig() {
    }

    //-----------------------------------------
    //Methods
    //-----------------------------------------

    public function configure():void {
        injector.map(CalcModel).asSingleton();
        injector.map(CalcService).asSingleton();

        mediatorMap.map(CalcView).toMediator(CalcMediator);
    }
}
}
