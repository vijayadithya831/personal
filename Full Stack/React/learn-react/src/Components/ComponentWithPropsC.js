import React from 'react';

function ComponentWithPropsC(props) {
    return(
        <div>
            <h1>Hi, My Name is {props.name}. Passed the name via Props</h1>
        </div>
    );
}

export default ComponentWithPropsC;