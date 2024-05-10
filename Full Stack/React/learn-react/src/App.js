// import logo from './logo.svg';
import './App.css';
import Greetings from './Components/WelcomeFuncCompPractice'
import WelcomeStudents from './Components/WelcomeClassCompPractice';

function App() {
  // return <h1>Welcome</h1>;
  return (
    <div className='App'>
      <Greetings/>
      <WelcomeStudents/>
      <WelcomeStudents/>
      <WelcomeStudents/>
      <WelcomeStudents/>
    </div>
  );
}

export default App;
