import React from 'react';

export const Child = (props) => {
    console.log('Child Rendering');
    return(
        <div>
            <h1>Child Component</h1>
            <h2>{props.name}</h2>
        </div>
    );
}

export const MemoizedChild = React.memo(Child);
