import React, {useEffect, useState} from 'react';

function UseEffectPractice() {
    const [count, setCount] = useState(0) 
    const[number, setNumber] = useState(0)
    // useEffect(() => { document.title = `You clicked ${count} times`; console.log("useEffectRunning"); }); //the array given inside is called dependency array
    useEffect(()=>{ setCount((preCount)=>preCount+1); console.log("Effect Running") },[number])
    return(
        <div>
            {/* <button onClick={() => setCount(count+1)}>Clicked {count} times</button> */}
            <p>{count}</p>
            <button onClick={() => setNumber(number+2)}>Click Me {number}</button>
        </div>
    );
}

export default UseEffectPractice;

// setCount((preCount)=>{return preCount+1});