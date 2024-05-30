import React from 'react';
import { TaskContext } from '../App';

function ComponentWithoutPropsC() {
    return(
        <div>
            <TaskContext.Consumer>
                {
                    user => {
                        return <h1>Hi, My name is {user}. Passed the name via Context.</h1>
                    }
                }
            </TaskContext.Consumer>
        </div>
    );
}

export default ComponentWithoutPropsC;