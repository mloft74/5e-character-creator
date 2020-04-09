import ViewPort;
import js.Browser;
import react.ReactDOM;
import react.ReactMacro.jsx;

class Main {

    static function main() {
        ReactDOM.render(
          jsx('<ViewPort/>'),
          Browser.document.getElementById("root")
        );
    }

}
