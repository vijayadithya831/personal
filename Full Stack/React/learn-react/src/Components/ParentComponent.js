import React from 'react';
import NormalClassComponent from './NormalClassComponent';
import PureComponentsPractice from './PureComponentsPractice';

export class ParentComponent extends React.Component {
    constructor(props){
        super(props)

        this.state = {
            customer:"Vijay"
        }
    }
    componentDidMount() {
        setInterval(() => {
            this.setState({customer:'Venkat'})
        },4000)
    }
  render() {
    console.log('Parent Component Rendering')
    return (
      <div>
        <h1>ParentComponent</h1>
        <NormalClassComponent customer={this.state.customer}></NormalClassComponent>
        <PureComponentsPractice customer={this.state.customer}></PureComponentsPractice>
        </div>
      
    )
  }
}

export default ParentComponent