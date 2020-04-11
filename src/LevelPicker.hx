import react.ReactEvent;
import react.ReactComponent;
import react.ReactMacro.jsx;

typedef LevelPickerProps = {
    value:String,
    handleChange:(ReactEvent) -> Void,
    id:String
}

class LevelPicker extends ReactComponentOfProps<LevelPickerProps> {

    public function new(inProps:LevelPickerProps) {
        super(inProps);
    }

    public override function render():ReactElement {
        return jsx('
          <select
            value=${ props.value }
            onChange=${ props.handleChange }
            id=${ props.id }
          >
            <option value="1">
              1
            </option>
            <option value="2">
              2
            </option>
            <option value="3">
              3
            </option>
            <option value="4">
              4
            </option>
          </select>
        ');
    }

}
