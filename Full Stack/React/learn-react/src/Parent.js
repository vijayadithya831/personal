import React, {useState} from 'react';
import {MemoizedChild} from './Child';

const Parent = () => {
    const [count,setCount] = useState(0)
    const [name, setName] = useState('Student')
    console.log('Parent Rendering')
    return(
        <div>
            <h1>Parent Component</h1>
            <button onClick={() => setCount(count+1)}>Increment</button>
            <button onClick={() => setName('Vijay')}>Change Name</button>
            <h2>{count}</h2>
            <MemoizedChild name={name}/>
        </div>
    );
}

export default Parent;