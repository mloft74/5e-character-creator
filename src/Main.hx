import Game;
import js.Browser;
import react.ReactDOM;
import react.ReactMacro.jsx;

class Main {

    static function main() {
        ReactDOM.render(
          jsx('<Game/>'),
          Browser.document.getElementById("root")
        );
    }

}
