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

    render() {
        return(
            <div>
                <input type='text' ></input>
            </div>
        );
    }
}