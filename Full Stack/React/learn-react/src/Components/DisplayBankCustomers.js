import React from 'react';
import BankCustomers from './BankCustomers';

const customers = BankCustomers.map((customer) => {
    return (<h2>
        Customer Name: {customer.name}<br/>
        Account Number: {customer.acc_no}<br/>
        PAN number: {customer.pan_no}<br/>
        Account Balance: {customer.acc_bal}
    </h2>);
})

function DisplayBankCustomers() {
  return (
    <div>
        {customers}
    </div>
  )
}

export default DisplayBankCustomers;