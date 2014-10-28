/**
 * Class Name: CalcService
 * Description:
 * Created by Ryan on 2014/10/28 21:58.
 */
package com.rcTest.dataTest.module.calc.proxy {
public class CalcService {
    //-----------------------------------------
    //Var
    //-----------------------------------------
    [Inject]
    public var model:CalcModel ;

    public function CalcService() {
    }

    //-----------------------------------------
    //Methods
    //-----------------------------------------
    public function getResult():void {
        model.result.result = "new Result";
    }
}
}
