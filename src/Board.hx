import Square;
import react.ReactComponent;
import react.ReactMacro.jsx;

typedef BoardProps = {
    squares : Array<String>,
    onClick : (Int) -> Void
}

class Board extends ReactComponentOfProps<BoardProps>{

    public function renderSquare(i:Int):ReactElement {
        return jsx('
          <Square
            value=${ props.squares[i] }
            onClick=${ () -> props.onClick(i) }
          />
        ');
    }

    override public function render():ReactElement {
        return jsx('
          <div>
            <div className="board-row">
              ${ renderSquare(0) }
              ${ renderSquare(1) }
              ${ renderSquare(2) }
            </div>
            <div className="board-row">
              ${ renderSquare(3) }
              ${ renderSquare(4) }
              ${ renderSquare(5) }
            </div>
            <div className="board-row">
              ${ renderSquare(6) }
              ${ renderSquare(7) }
              ${ renderSquare(8) }
            </div>
          </div>
        ');
    }

}
