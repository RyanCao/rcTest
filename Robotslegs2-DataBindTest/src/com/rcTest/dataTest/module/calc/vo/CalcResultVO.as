/**
 * Class Name: CalcResultVO
 * Description:
 * Created by Ryan on 2014/10/28 22:04.
 */
package com.rcTest.dataTest.module.calc.vo {
import org.rcSpark.binding.BindingData;

public class CalcResultVO extends BindingData {
    //-----------------------------------------
    //Var
    //-----------------------------------------
    private var _result:String = "1232";

    public function CalcResultVO() {
        super();
    }

    //-----------------------------------------
    //Methods
    //-----------------------------------------

    public function get result():String {
        return _result;
    }

    public function set result(value:String):void {
        _result = value;
        update("result",_result);
    }
}
}
