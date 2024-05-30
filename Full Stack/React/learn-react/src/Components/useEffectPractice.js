import React, {useEffect, useState} from 'react';

function UseEffectPractice() {
    const [count, setCount] = useState(0) 
    useEffect(() => { document.title = `You clicked ${count} times`; });
    return(
        <div>
            <button onClick={() => setCount(count+1)}>Clicked {count} times</button>
        </div>
    );
}

export default UseEffectPractice;