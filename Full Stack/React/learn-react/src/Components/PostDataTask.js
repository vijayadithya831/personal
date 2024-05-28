import React from 'react';
import axios from 'axios';

class PostDataTask extends React.Component {
    constructor(props){
        super(props)
        this.state = {
            postId: '',
            name: '',
            email: '',
            body: ''
        }
    }
    changeHandler = (e) => {
        this.setState({[e.target.className]: e.target.value})
    }
    submitHandler = (e) => {
        e.preventDefault();
        console.log(this.state)
        axios.post('https://jsonplaceholder.typicode.com/comments', this.state)
        .then(response => {
            console.log(response);
        })
        .catch(error => {
            console.log(error);
        })
    }
    render() {
        const {postId, name, email, body} = this.state;
        return(
            <div>
                <form action='' onSubmit={this.submitHandler}>
                    <div>
                        <input type='text' className='postId' value={postId} onChange={this.changeHandler}/>
                    </div>
                    <div>
                        <input type='text' className='name' value={name} onChange={this.changeHandler}/>
                    </div>
                    <div>
                        <input type='email' className='email' value={email} onChange={this.changeHandler}/>
                    </div>
                    <div>
                        <input type='text' className='body' value={body} onChange={this.changeHandler}/>
                    </div>
                    <button type='submit'>Submit</button>
                </form>
            </div>
        );
    }
}

export default PostDataTask;