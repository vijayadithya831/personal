import React from 'react';
import ComponentWithPropsB from './ComponentWithPropsB';

function ComponentWithPropsA(props) {
    return(
        <div>
            <ComponentWithPropsB name={props.name}/>
        </div>
    );
}

export default ComponentWithPropsA;