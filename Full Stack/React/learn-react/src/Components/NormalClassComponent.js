import React from 'react';

class NormalClassComponent extends React.Component {
    render() {
        console.log("Normal Component Rendering")
        return(
            <div>
                <h1>Normal Component</h1>
                {this.props.customer}
            </div>
        );
    }
}

export default NormalClassComponent;