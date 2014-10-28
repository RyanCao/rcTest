package {

import com.rcTest.dataTest.context.MainContext;
import com.rcTest.dataTest.context.MainContextData;
import com.rcTest.dataTest.module.calc.proxy.CalcService;
import com.rcTest.dataTest.module.calc.view.CalcView;

import flash.events.MouseEvent;
import flash.text.TextField;

public class Main extends TestSpriteBase {
    private var calc:CalcView;
    public function Main() {
        super();
    }
    override protected function initUI():void {
        MainContext.initFrameWork(this);

        var textField:TextField = new TextField();
        textField.text = "Click Test";
        addChild(textField);
        textField.selectable = false ;
        textField.addEventListener(MouseEvent.CLICK, onClickHandler);
        
        var textField2:TextField = new TextField();
        textField2.text = "改变服务器数据";
        addChild(textField2);
        textField2.y = 100 ;
        textField2.selectable = false ;
        textField2.addEventListener(MouseEvent.CLICK, onClickHandler2);
    }

    private function onClickHandler2(event:MouseEvent):void {
        var service:CalcService = MainContextData.context.injector.getInstance(CalcService) ;
        service.getResult();
    }

    private function onClickHandler(event:MouseEvent):void {
        if(!calc){
            calc = new CalcView();
        }

        calc.x = 100 ;

        if(!contains(calc))
            this.addChild(calc);
    }
}
}
