import React from 'react';

const UpdatedComponent = (OriginalComponent) => {
    class NewComponent extends React.Component {
        constructor(props){
            super(props)
            this.state = {
                count:0
            }
        }
        decrementCount = () => {
            this.setState((preState) => {
                return {count:preState.count-1};
            })
        }
        render() {
            return <OriginalComponent count={this.state.count} decrementCount={this.decrementCount}/>
        }
    }
    return NewComponent
}

export default UpdatedComponent