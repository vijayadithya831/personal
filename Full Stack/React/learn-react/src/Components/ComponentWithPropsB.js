import React from 'react';
import ComponentWithPropsC from './ComponentWithPropsC';

function ComponentWithPropsB(props) {
    return(
        <div>
            <ComponentWithPropsC name={props.name}/>
        </div>
    );
}

export default ComponentWithPropsB;