import React, {useState} from 'react';
import StudentViewTask from './StudentViewTask';

function StudentAddTask() {
    const [nameInput, setNameInput] = useState("");
    const [ageInput, setAgeInput] = useState("");
    const [deptInput, setDeptInput] = useState("");
    const [studentNames, setStudentNames] = useState([]);
    const [studentAges, setStudentAges] = useState([]);
    const [studentDepts, setStudentDepts] = useState([]);
    const [showStudentInfo, setShowStudentInfo] = useState(false);
    function addStudent() {
        if(nameInput && ageInput && deptInput){
            setStudentNames((prevState)=>[...prevState, nameInput]);
            setStudentAges((prevState)=>[...prevState, ageInput]);
            setStudentDepts((prevState)=>[...prevState, deptInput]);
            console.log();
            setNameInput("");
            setAgeInput("");
            setDeptInput("");
            setShowStudentInfo(true)
        }
    }
    
    return(
        <>
            <h1>Add New Student</h1>
            <input type='text' value={nameInput} onChange={(e)=>{setNameInput(e.target.value)}}/><br/>
            <input type='text' value={ageInput} onChange={(e)=>{setAgeInput(e.target.value)}}/><br/>
            <input type='text' value={deptInput} onChange={(e)=>{setDeptInput(e.target.value)}}/><br/>
            <button onClick={addStudent}>Add Student</button><br/><br/>
            {showStudentInfo && <StudentViewTask studentNames={studentNames} studentAges={studentAges} studentDepts={studentDepts}/>}
        </>
    );
}

export default StudentAddTask;