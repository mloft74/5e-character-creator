import ClassEnum;
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
            <option value=$None>
              --
            </option>
            <option value=$Barbarian>
              Barbarian
            </option>
            <option value=$Fighter>
              Fighter
            </option>
            <option value=$Monk>
              Monk
            </option>
            <option value=$Rogue>
              Rogue
            </option>
          </select>
        ');
    }

}
