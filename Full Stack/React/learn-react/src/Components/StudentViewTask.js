import React from 'react';

function StudentViewTask(props) {
    const studentNames = props.studentNames || [];
    const studentAges = props.studentAges || [];
    const studentDepts = props.studentDepts || [];
    const studentObject = props.studentObject || [];
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
            <h2>Object datas</h2>
            {
                studentObject.map((student,index)=><p key={index}>{student.name} and {student.age} and {student.dept}</p>)
            }
        </>
    );
}

export default StudentViewTask;