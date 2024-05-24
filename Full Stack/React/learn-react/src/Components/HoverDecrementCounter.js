import React from 'react';
import UpdatedComponent from './DecrementCounter(HOC)';

class HoverDecrementCounter extends React.Component {
    render() {
        const {count, decrementCount} = this.props;
        return (
            <div>
                <h1 onMouseOver={()=>decrementCount()}>This Heading has been hovered {count} times</h1>
            </div>
        );
    }
}

export default UpdatedComponent(HoverDecrementCounter);