import react.ReactComponent;
import react.ReactEvent;
import react.ReactMacro.jsx;

typedef ClassPickerProps = {
    value:String,
    handleChange:(ReactEvent) -> Void,
    id:String
}

class ClassPicker extends ReactComponentOfProps<ClassPickerProps> {

    public function new(inProps:ClassPickerProps) {
        super(inProps);
    }

    public override function render():ReactElement {
        return jsx('
          <select
            value=${ props.value }
            onChange=${ props.handleChange }
            id=${ props.id }
          >
            <option value="">
              --
            </option>
            <option value="barbarian">
              Barbarian
            </option>
            <option value="fighter">
              Fighter
            </option>
            <option value="monk">
              Monk
            </option>
            <option value="rogue">
              Rogue
            </option>
          </select>
        ');
    }

}
