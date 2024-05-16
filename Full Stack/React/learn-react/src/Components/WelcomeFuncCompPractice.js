import React from "react";

const Welcome1 = ({name, sportsName}) => {
    // console.log(props);
    return(
        <div>
            {/* <h1>This is an introduction of {name}</h1>
            <h2>Here it goes!</h2> */}
            <p>Hello, I am {name}, I play {sportsName}
            {/* , I am {props.age} years old and I am {props.gender} */}
            </p>
        </div>
    );
}

const Welcome2 = (props) => {
    // console.log(props);

    const {name, sportsName} = props;
    return(
        <div>
            {/* <h1>This is an introduction of {name}</h1>
            <h2>Here it goes!</h2> */}
            <p>Hello, I am {name}, I play {sportsName}
            {/* , I am {props.age} years old and I am {props.gender} */}
            </p>
        </div>
    );
}

const Buttons = (props) => {
    return(
        <div>
            <button>Button 1</button>&nbsp;&nbsp;&nbsp;&nbsp;
            <button>Button 2</button>&nbsp;&nbsp;&nbsp;&nbsp;
            <button>Button 3</button>
        </div>
    );
}

const Forms = (props) => {
    return(
        <div>
            <form>
                <label>Username:</label>&nbsp;&nbsp;&nbsp;
                <input type="text" placeholder="Enter your username" required></input>
                <br></br><br></br>
                <label>Password:</label>&nbsp;&nbsp;&nbsp;
                <input type="password" placeholder="Enter your password" required></input>
                <br></br><br></br>
                <input type="submit"></input>
                <br></br>
            </form>
        </div>
    )
}

export {Welcome1, Welcome2, Buttons, Forms};