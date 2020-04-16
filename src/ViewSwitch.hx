typedef ViewSwitchProps = {
    previousView:() -> Void,
    nextView:() -> Void,
    previousDisabled:Bool,
    nextDisabled:Bool
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
              disabled=${ props.nextDisabled }
            >
              Next
            </button>
          </div>
        ');
    }

}
