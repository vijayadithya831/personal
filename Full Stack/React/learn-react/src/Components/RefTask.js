import React from 'react';

class RefTask extends React.Component {
    constructor(props){
        super(props)
        this.fnameRef = React.createRef();
        this.lnameRef = React.createRef();
        this.emailRef = React.createRef();
        this.passRef = React.createRef();
    }
    render() {
        return(
            <div>
                <input type='text' ref={this.fnameRef} placeholder='FirstName'/><br/><br/>
                <input type='text' ref={this.lnameRef} placeholder='LastName'/><br/><br/>
                <input type='email' ref={this.emailRef} placeholder='E-Mail'/><br/><br/>
                <input type='password' ref={this.passRef} placeholder='Password'/><br/><br/>
                <input type='password' ref={this.passRef} placeholder='Re-Enter Password'/><br/><br/>
            <button onClick={()=>{
                    console.log(this.fnameRef.current.value);
                    console.log(this.lnameRef.current.value);
                    console.log(this.emailRef.current.value);
                    console.log(this.passRef.current.value);
                }}>Submit</button>
            </div>
        );
    }
}

export default RefTask;