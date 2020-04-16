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
        return jsx('
          <div className="class-level-container">
            <$ClassPicker
              value=${ props.classValue }
              handleChange=${ props.handleClassChange }
            />
            <$LevelPicker
              value=${ props.levelValue }
              handleChange=${ props.handleLevelChange }
            />
          </div>
        ');
    }

}
