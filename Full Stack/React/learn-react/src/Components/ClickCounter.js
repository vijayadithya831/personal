import React, { Component } from 'react'
import UpdatedComponent from './WithCounter(HOC)';

class ClickCounter extends Component {
  render() {
    const {count,incrementCount} = this.props;
    return (
      <div>
        <button onClick={()=>incrementCount()}>Clicked for {count} times</button>
    </div>
    )
  }
}

export default UpdatedComponent(ClickCounter)