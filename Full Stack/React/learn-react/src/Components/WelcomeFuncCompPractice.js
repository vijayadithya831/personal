import React from "react";

const Welcome = (props) => {
    // console.log(props);
    return(
        <div>
            <h1>This is an introduction of {props.name}</h1>
            <h2>Here it goes!</h2>
            <p>Hello, I am {props.name}, I play {props.sportsName}, I am {props.age} years old and I am {props.gender}</p>
        </div>
    );
}

const Button = (props) => {
    return(
        <div>
            <button>Button 1</button>
            <button>Button 2</button>
            <button>Button 3</button>
        </div>
    );
}

const Form = (props) => {
    return(
        <div>
            <form>
                <label>Username</label>
                <input type="text" placeholder="Enter your username" required></input>
                <br></br>
                <label>Password</label>
                <input type="password" placeholder="Enter your password" required></input>
                <br></br>
                <input type="submit"></input>
                <br></br>
            </form>
        </div>
    )
}

export default {Welcome, Button, Form};