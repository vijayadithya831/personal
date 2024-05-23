import React from 'react';

class PureCompForIncrement extends React.PureComponent {
    constructor(props) {
        super(props)

        this.state = {
            count:0
        }
    }
    
    render(){
        console.log('Rendering Pure Component');
        return(
            <div>
                <h1>Pure Component</h1>
                {this.state.count}<br/>
                <button onClick={() => this.setState({count:0})}>Click to Increment</button>
            </div>
        );
    }
}

export default PureCompForIncrement;