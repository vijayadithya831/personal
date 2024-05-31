import React from 'react';

export default function CustomerView(props) {
    return(
        <>
            <h3>This is the list of customers</h3>
            <ul style={{listStyle:'none'}}>
                {
                    props.customers.map((customer,index)=><li key={index}>{customer}</li>)
                }
            </ul>

        </>
    );
}