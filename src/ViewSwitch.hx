import react.ReactComponent;
import react.ReactMacro.jsx;

typedef ViewSwitchProps = {
    previousView:() -> Void,
    nextView:() -> Void,
    previousDisabled:Bool
}

class ViewSwitch extends ReactComponentOfProps<ViewSwitchProps> {

    public override function render():ReactElement {
        return jsx('
          <div className="view-switch-container">
            <button
              onClick=${ props.previousView }
              disabled=${ props.previousDisabled }
            >
              Previous
            </button>
            <button
              onClick=${ props.nextView }
            >
              Next
            </button>
          </div>
        ');
    }

}
