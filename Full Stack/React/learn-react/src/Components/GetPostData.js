import React, { Component } from 'react'
import axios from 'axios'; // step 1
// => axios get and post

export class GetPostData extends Component {
  constructor(props) {
      super(props)
      this.state = {
          posts: []
      }
  }
  componentDidMount() {
    axios.get('https://jsonplaceholder.typicode.com/posts')
   // Promise => Then and catch blocks.

  .then(response => {
    console.log(response);
    this.setState({posts:response.data})
  })
  .catch(error => {
    console.log(error);
  })
}
  render() {
    const {posts} = this.state
    return (
      <div>
        <h1>List of User Data</h1>
          {posts.map(post => 
            <div key={post.id}>{post.title}</div>
          )}
        </div>
    )
  }
}

export default GetPostData;