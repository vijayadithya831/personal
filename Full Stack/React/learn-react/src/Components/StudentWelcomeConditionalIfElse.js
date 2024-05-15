import React from "react";

class StudentWelcomeConditionalIfElse1 extends React.Component {

    constructor(props) {
        super(props)
        this.state = {
            studentLoggedIn: false
        };
        var info = null;
    }
    render() {
        if(this.state.studentLoggedIn) {
            this.info = <div><h1>Welcome {this.props.name}</h1></div>
            // return(
            //     <div>
            //         <h1>Welcome {this.props.name}</h1>
            //     </div>
            // );
        }

        else {
            this.info = <div><h1>Welcome Students</h1></div>
            // return(
            //     <div>
            //         <h1>Welcome Students</h1>
            //     </div>
            // );
        }
        return <div>{this.info}</div>
    }
}

class StudentWelcomeConditionalIfElse2 extends React.Component {

    constructor(props) {
        super(props)
        this.state = {
            studentLoggedIn: true
        };
        var info = null;
    }
    render() {
        return(
            this.state.studentLoggedIn ? <div><h1>Welcome {this.props.name}</h1></div> : <div><h1>Welcome Students</h1></div>
        );
    }
}

export { StudentWelcomeConditionalIfElse1, StudentWelcomeConditionalIfElse2 };