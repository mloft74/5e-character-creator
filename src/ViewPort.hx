import ClassEnum;
import ClassLevelPicker;
import ViewSwitch;
import react.ReactEvent;

typedef ViewPortState = {
    currentView:Int,
    previousDisabled:Bool,
    classValue:String,
    levelValue:String
}

class ViewPort extends ReactComponentOfState<ViewPortState> {

    public function new() {
        super();
        state = {
            currentView: 0,
            previousDisabled: true,
            classValue: None.getName(),
            levelValue: "1"
        };
    }

    private function previousView():Void {
        final currentView = state.currentView;
        final shouldDisable = currentView - 1 == 0 ? true : false;
        setState({
            currentView: state.currentView - 1,
            previousDisabled: shouldDisable
        });
    }

    private function nextView():Void {
        setState({
            currentView: state.currentView + 1,
            previousDisabled: false
        });
    }

    private function handleClassChange(event:ReactEvent) {
        final target:Dynamic = event.currentTarget;
        setState({
            classValue: target.value
        });
    }

    private function handleLevelChange(event:ReactEvent) {
        final target:Dynamic = event.currentTarget;
        setState({
            levelValue: target.value
        });
    }

    public override function render():ReactElement {
        return jsx('
          <div>
            <p>
              ${ state.currentView }
            </p>
            <p>
              ${ state.classValue } : ${ state.levelValue }
            </p>
            <$ClassLevelPicker
              classValue=${ state.classValue }
              levelValue=${ state.levelValue }
              handleClassChange=${ (e:ReactEvent) -> handleClassChange(e) }
              handleLevelChange=${ (e:ReactEvent) -> handleLevelChange(e) }
            />
            <$ViewSwitch
              previousView=${ () -> previousView() }
              previousDisabled=${ state.previousDisabled }
              nextView=${ () -> nextView() }
            />
          </div>
        ');
    }

}
