import React from "react";
import './stylePractice.css'
 

function StylePracticeInReact(props) {
    // let className = props.heading1 ? 'heading1' : '';
    // if using variable, we can use template literals where we mention the class name
    return(
        <div><h2 className = {'fontSize heading1'}>Style Practice In React</h2></div>
    );
}



export default StylePracticeInReact;