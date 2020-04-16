import react.Empty;

class Welcome extends ReactComponentOf<Empty, Empty> {

    public override function render():ReactElement {
        return jsx('<p>Hello</p>');
    }

}
