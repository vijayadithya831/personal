import React, { Component } from 'react'

class ClickCounter extends Component {
    constructor(props) {
      super(props)
    
      this.state = {
        count:0
      }
    }
  render() {
    const {count} = this.state;
    return (
      <div>
        <button onClick={()=> this.setState((preState)=>{return {count: preState.count+1}})}>Clicked for {count} times</button>
      </div>
    )
  }
}

export default ClickCounter