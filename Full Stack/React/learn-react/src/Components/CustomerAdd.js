import React, {useState} from 'react';
import CustomerView from './CustomerView';

export default function CustomerAdd() {
    const [input, setInput] = useState("");
    const [customers, setCustomers] = useState([])
    function addCustomer() {
        if(input){
            setCustomers((prevState)=>[...prevState,input]);
            console.log(customers);
            setInput("");
        }
    }
    return(
        <>
            <h1>Add new customer</h1>
            <input type='text' value={input} onChange={(e)=>setInput(e.target.value)}/><br/>
            <button onClick={addCustomer}>Add</button><br/><br/>

            <CustomerView customers={customers}/>
        </>
    );
}