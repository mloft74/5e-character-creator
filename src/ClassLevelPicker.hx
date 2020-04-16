import ClassPicker;
import LevelPicker;
import react.ReactComponent;
import react.ReactEvent;
import react.ReactMacro.jsx;

typedef ClassLevelPickerProps = {
    classValue:String,
    levelValue:String,
    handleClassChange:(ReactEvent) -> Void,
    handleLevelChange:(ReactEvent) -> Void
}

class ClassLevelPicker extends ReactComponentOfProps<ClassLevelPickerProps> {

    public function new(inProps:ClassLevelPickerProps) {
        super(inProps);
    }

    public override function render():ReactElement {
        final classId = "class-picker";
        final levelId = "level-picker";
        return jsx('
          <div>
            <label for=$classId>
              Class:
            </label>
            <$ClassPicker
              value=${ props.classValue }
              handleChange=${ props.handleClassChange }
              id=$classId
            />
            <label for=$levelId>
              Level:
            </label>
            <$LevelPicker
              value=${ props.levelValue }
              handleChange=${ props.handleLevelChange }
              id=$levelId
            />
          </div>
        ');
    }

}
