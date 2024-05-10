import React from "react";

class WelcomeStudents extends React.Component {
    render() {
        return ( 
        <h1>Hello, I am {this.props.name}, I play {this.props.sportsName}</h1>
    );
    }
}



export default WelcomeStudents;