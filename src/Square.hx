import react.ReactComponent;
import react.ReactMacro.jsx;

typedef SquareProps = {
    value : String,
    onClick : (Int) -> Void
}

class Square extends ReactComponentOfProps<SquareProps> {

    override public function render():ReactElement {
        return jsx(
          <button className="square" onClick=${ props.onClick }>
            ${ props.value }
          </button>
        );
    }

}
