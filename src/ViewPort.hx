import react.ReactComponent;
import react.ReactMacro.jsx;

typedef ViewPortState = {
    currentView:Int,
    previousDisabled:Bool
}

class ViewPort extends ReactComponentOfState<ViewPortState> {

    public function new() {
        super();
        state = {
            currentView: 0,
            previousDisabled: true
        };
    }

    public function previousView():Void {
        final currentView = state.currentView;
        final shouldDisable = currentView - 1 == 0 ? true : false;
        setState({
            currentView: state.currentView - 1,
            previousDisabled: shouldDisable
        });
    }

    public function nextView():Void {
        setState({
            currentView: state.currentView + 1,
            previousDisabled: false
        });
    }

    public override function render():ReactElement {
        return jsx('
          <div>
            <p>
              ${ state.currentView }
            </p>
            <$ViewSwitch
              previousView=${ () -> previousView() }
              previousDisabled=${ state.previousDisabled }
              nextView=${ () -> nextView() }
            />
          </div>
        ');
    }

}
