import React from "react";

class Information extends React.Component {
    constructor(props) {
        super()
        this.state = {
            information:'Welcome To React Class'
        }
    }
    // changeInfo() {
    //     this.setState({information:'Goodbye from React Class!'})
    // }

    render() {
        return (
            <div>
                <h1>Welcome To The Javascript React Class</h1>
                <h1>{this.state.information}</h1>
                <button onClick={() => this.setState({information:'Goodbye from React Class!'})}>Click to change state</button>
            </div>
        );
    }
}

export default Information;