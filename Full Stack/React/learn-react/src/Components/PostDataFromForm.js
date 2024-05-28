import React, { Component } from 'react';
import axios from 'axios';

export class PostDataFromForm extends Component {
    constructor(props){
        super(props)
        this.state = {
            userId: '',
            title: '',
            body: ''
        }
    }
    changeHandler = (e) => {
        this.setState({[e.target.className]: e.target.value})
    }
    submitHandler = (e) => {
        e.preventDefault();
        console.log(this.state);
        axios.post('https://jsonplaceholder.typicode.com/posts',this.state)
        .then(response => {
            console.log(response);
        })
        .catch(error => {
            console.log(error);
        })
    }

    render() {
    const {userId, title, body} = this.state;
    return (
      <div>
        <form action='' onSubmit={this.submitHandler}>
            <div>
                <input type='text' className='userId' value={userId} onChange={this.changeHandler}/>
            </div>
            <div>
                <input type='text' className='title' value={title} onChange={this.changeHandler}/>
            </div>
            <div>
                <input type='text' className='body' value={body} onChange={this.changeHandler}/>
            </div>
            <button type='submit'>Submit</button>
        </form>
      </div>
    )
  }
}

export default PostDataFromForm