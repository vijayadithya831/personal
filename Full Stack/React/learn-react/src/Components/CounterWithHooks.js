import React, {useState} from 'react';

function CounterWithHooks() {
    const [count, setCount] = useState(0)
    return(
        <div>
            <button onClick={()=>setCount(count+1)}>Clicked {count} times</button>
        </div>
    );
}

export default CounterWithHooks;