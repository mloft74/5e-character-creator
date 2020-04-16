import ClassEnum;
import react.ReactComponent;
import react.ReactEvent;
import react.ReactMacro.jsx;

typedef ClassPickerProps = {
    value:String,
    handleChange:(ReactEvent) -> Void
}

class ClassPicker extends ReactComponentOfProps<ClassPickerProps> {

    public function new(inProps:ClassPickerProps) {
        super(inProps);
    }

    public override function render():ReactElement {
        final classId = "class-picker";
        return jsx('
          <div>
            <label for=$classId>
              Class: 
            </label>
            <select
              value=${ props.value }
              onChange=${ props.handleChange }
              id=$classId
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
          </div>
        ');
    }

}
