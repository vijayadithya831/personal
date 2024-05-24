import React from 'react';

class RefPractice extends React.Component{
    constructor(props) {
        super(props)
        this.inputRef = React.createRef()
    }

    componentDidMount() {
        this.inputRef.current.focus();
        console.log("class name is --->", this.inputRef.current.className);
    }
    render() {
        return(
            <div>
                <input className='xyz' type="text" ref={this.inputRef}/>
                <br/><br/>
                <button onClick={()=>console.log(this.inputRef.current.value)}>Click Here</button>
            </div>
        );
    }
}

export default RefPractice;