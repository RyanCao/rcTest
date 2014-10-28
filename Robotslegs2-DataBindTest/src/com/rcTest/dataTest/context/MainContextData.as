/**
 * Class Name: MainContextData
 * Description:
 * Created by Ryan on 2014/10/28 21:50.
 */
package com.rcTest.dataTest.context {
import robotlegs.bender.framework.api.IContext;

public class MainContextData {
    //-----------------------------------------
    //Var
    //-----------------------------------------
    private static var _context:IContext ;

    public function MainContextData() {
    }

    //-----------------------------------------
    //Methods
    //-----------------------------------------
    public static function get context():IContext {
        return _context;
    }

    public static function set context(value:IContext):void {
        _context = value;
    }
}
}
