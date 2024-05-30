import React, {useState} from 'react';

function CounterWithHooksTask() {
    const [count, setCount] = useState(0);
    return(
        <div>
            <h1>Count: {count}</h1>
            <button onClick={()=>setCount(count+1)}>Increment</button>&nbsp;&nbsp;&nbsp;&nbsp;
            <button onClick={()=>setCount(count-1)}>Decrement</button>
        </div>
    );
}

export default CounterWithHooksTask;