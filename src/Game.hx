import Board;
import react.ReactComponent;
import react.ReactMacro.jsx;

typedef GameState = {
    history : Array<{
        squares : Array<String>
    }>,
    stepNumber : Int,
    xIsNext : Bool
}

class Game extends ReactComponentOfState<GameState> {

    public function new() {
        super();
        state = {
            history : [{
                squares : [for (_ in 0...9) ""]
            }],
            stepNumber : 0,
            xIsNext    : true
        };
        lines = [
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8],
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8],
            [0, 4, 8],
            [2, 4, 6]
        ];
    }

    public final lines : Array<Array<Int>>;

    public function calculateWinner():String {
        final history = state.history;
        final current = history[history.length - 1];
        final squares = current.squares;
        for (i in lines) {
            final a = i[0];
            final b = i[1];
            final c = i[2];
            if (
                squares[a] != "" &&
                squares[a] == squares[b] &&
                squares[a] == squares[c]
            ) {
                return squares[a];
            }
        }
        return "";
    }

    public function getPlayer():String {
        return state.xIsNext ? "X" : "O";
    }

    public function handleClick(i:Int):Void {
        final history = state.history;
        final current = history[history.length - 1];
        final squares = current.squares.copy();
        if (calculateWinner() != "" || squares[i] != "") return;
        squares[i] = getPlayer();
        setState({
            history : history.concat([{
                squares : squares
            }]),
            stepNumber : history.length,
            xIsNext    : !state.xIsNext
        });
    }

    override public function render():ReactElement {
        final history = state.history;
        final current = history[state.stepNumber];
        final winner = calculateWinner();
        final status = (
            winner != "" ?
            'Winner: $winner' :
            'Next player: ${getPlayer()}'
        );

        return jsx(
          <div className="game">
            <div className="game-board">
              <Board
                squares=${ current.squares }
                onClick=${ (i:Int) -> handleClick(i) }
              />
            </div>
            <div className="game-info">
              <div>$status</div>
            </div>
          </div>
        );
    }

}
