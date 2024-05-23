import React from 'react';

function MemoComponent({name}) {
    console.log(name);
    return(
        <h1>{name}</h1>
    );
}

export default MemoComponent;