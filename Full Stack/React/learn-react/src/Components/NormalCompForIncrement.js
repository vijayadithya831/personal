import React from 'react';

class NormalCompForIncrement extends React.Component {
    constructor(props) {
        super(props)

        this.state = {
            count:0
        }
    }
    
    render(){
        console.log('Rendering Normal Component');
        return(
            <div>
                <h1>Normal Component</h1>
                {this.state.count}<br/>
                <button onClick={() => this.setState({count:0})}>Click to Increment</button>
            </div>
        );
    }
}

export default NormalCompForIncrement;