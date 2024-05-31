import React from 'react';

function StudentViewTask(props) {
    const studentNames = props.studentNames || [];
    const studentAges = props.studentAges || [];
    const studentDepts = props.studentDepts || [];
    return(
        <>
            <h2>This is the list of students</h2>
            <ul style={{listStyle: 'none'}}>
                {studentNames.map((studentName,index)=><li key={index}>{studentName}</li>)}
            </ul>
            <h2>Student Information</h2>
            <ul style={{listStyle:'none'}}>
                {studentNames.map((studentName, index)=><li key={index}>
                    {studentName} is {studentAges[index]} years old and belongs to {studentDepts[index]} department.
                </li>
                )}
            </ul>
        </>
    );
}

export default StudentViewTask;