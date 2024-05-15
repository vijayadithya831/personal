import React from "react";

class StudentWelcomeConditionalIfElse extends React.Component {

    constructor(props) {
        super(props)
        this.state = {
            studentLoggedIn: true
        };
    }
    render() {
        if(this.state.studentLoggedIn) {
            return(
                <div>
                    <h1>Welcome {this.props.name}</h1>
                </div>
            );
        }

        else {
            return(
                <div>
                    <h1>Welcome Students</h1>
                </div>
            );
        }
    }
}

export default StudentWelcomeConditionalIfElse;