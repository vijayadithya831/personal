import React, { Component } from "react";

class CounterClassState extends Component {

    constructor(props) {
        super()
        this.state = {
            count:0
        };
    }

    render() {
        return(
            <div>
                <div><h1>Count = {this.state.count}</h1></div>
                <button onClick={() => this.setState({count: this.state.count+1})}>Increase</button>&nbsp;&nbsp;&nbsp;&nbsp;
                <button onClick={() => this.setState({count: this.state.count-1})}>Decrease</button>
            </div>
        );
    }
}

class ChangeText extends Component {
    constructor(props) {
        super()
        this.state = {
            h1: "This is Heading 1, The content is not changed yet!",
            h2: "This is Heading 2, The content is not changed yet!",
            p1: "This is Paragraph 1, The content is not changed yet!",
            p2: "This is Paragraph 2, The content is not changed yet!"
        }
    }

    render() {
        return(
            <div>
                <div>
                    <h1>{this.state.h1}</h1>
                    <h1>{this.state.h2}</h1>
                    <p>{this.state.p1}</p>
                    <p>{this.state.p2}</p>
                </div>
                <button onClick={() => this.setState({h1: "The content of Heading 1 has been changed successfully!"})}>Change Heading 1</button>&nbsp;&nbsp;&nbsp;&nbsp;
                <button onClick={() => this.setState({h1: "The content of Heading 1 has been changed successfully!", h2: "The content of Heading 2 has been changed successfully, too!"})}>Change Both Headings</button>&nbsp;&nbsp;&nbsp;&nbsp;
                <button onClick={() => this.setState({p1: "The content of Paragraph 1 has been changed successfully!"})}>Change Paragraph 1</button>&nbsp;&nbsp;&nbsp;&nbsp;
                <button onClick={() => this.setState({p1: "The content of Paragraph 1 has been changed successfully!", p2: "The content of Paragraph 2 has been changed successfully, too!"})}>Change Both Paragraphs</button>
                <br></br><br></br>
                <button onClick={() => this.setState(
                    {h1: "This is Heading 1, The content is not changed yet!",
                    h2: "This is Heading 2, The content is not changed yet!",
                    p1: "This is Paragraph 1, The content is not changed yet!",
                    p2: "This is Paragraph 2, The content is not changed yet!"})}>Reset</button>
            </div>
        );
    }
}

export {CounterClassState, ChangeText};