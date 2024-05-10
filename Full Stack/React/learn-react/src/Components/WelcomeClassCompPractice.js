import React from "react";

class WelcomeStudents extends React.Component {
    render() {
        return (
            <div>
                <h1>Hello, I am {this.props.name}, I play {this.props.sportsName}</h1>
                {this.props.children}
            </div>
        );
    }
}



export default WelcomeStudents;