import React from 'react';
import UpdatedComponent from './DecrementCounter(HOC)';

class ClickDecrementCounter extends React.Component {
    render() {
        const {count, decrementCount} = this.props;
        return (
            <div>
                <button onClick={()=>decrementCount()}>This button has been clicked {count} times</button>
            </div>
        );
    }
}

export default UpdatedComponent(ClickDecrementCounter);