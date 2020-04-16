import ClassEnum;
import Welcome;
import ClassLevelPicker;
import ViewSwitch;
import react.ReactEvent;

typedef ViewPortState = {
    currentView:Int,
    previousDisabled:Bool,
    nextDisabled:Bool,
    classValue:String,
    levelValue:String
}

class ViewPort extends ReactComponentOfState<ViewPortState> {

    public function new() {
        super();
        state = {
            currentView: 0,
            previousDisabled: true,
            nextDisabled: false,
            classValue: None.getName(),
            levelValue: "1"
        };
    }

    private function previousView():Void {
        final currentView = state.currentView;
        final shouldDisable = currentView - 1 == 0 ? true : false;
        setState({
            currentView: state.currentView - 1,
            previousDisabled: shouldDisable,
            nextDisabled: false
        });
    }

    private function nextView():Void {
        final currentView = state.currentView;
        final shouldDisable = currentView + 1 == 1 ? true : false;
        setState({
            currentView: state.currentView + 1,
            previousDisabled: false,
            nextDisabled: shouldDisable
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

    private function getCurrentView():ReactElement {
        switch (state.currentView) {
            case 0:
                return jsx('<$Welcome/>');
            case 1:
                return jsx('
                  <$ClassLevelPicker
                    classValue=${ state.classValue }
                    levelValue=${ state.levelValue }
                    handleClassChange=${ (e:ReactEvent) -> handleClassChange(e) }
                    handleLevelChange=${ (e:ReactEvent) -> handleLevelChange(e) }
                  />
                ');
            default:
                throw "Could not determine view to show";
        }
    }

    public override function render():ReactElement {
        final currentView = getCurrentView();
        return jsx('
          <div>
            <p>
              ${ state.currentView }
            </p>
            <p>
              ${ state.classValue } : ${ state.levelValue }
            </p>
            ${ currentView }
            <$ViewSwitch
              previousView=${ () -> previousView() }
              previousDisabled=${ state.previousDisabled }
              nextView=${ () -> nextView() }
              nextDisabled=${ state.nextDisabled }
            />
          </div>
        ');
    }

}
