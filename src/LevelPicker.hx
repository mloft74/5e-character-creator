import react.ReactEvent;

typedef LevelPickerProps = {
    value:String,
    handleChange:(ReactEvent) -> Void
}

class LevelPicker extends ReactComponentOfProps<LevelPickerProps> {

    public function new(inProps:LevelPickerProps) {
        super(inProps);
    }

    public override function render():ReactElement {
        final levelId = "level-picker";
        return jsx('
          <div>
            <label for=$levelId>
              Level: 
            </label>
            <select
              value=${ props.value }
              onChange=${ props.handleChange }
              id=$levelId
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
          </div>
        ');
    }

}
