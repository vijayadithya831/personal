// import logo from './logo.svg';
import './App.css';
import Greetings from './Components/WelcomeFuncCompPractice'
import WelcomeStudents from './Components/WelcomeClassCompPractice';

function App() {
  return (
    <div className='App'>
      {/* <Greetings/>
      <WelcomeStudents/>
      <h1>These two messages are rendered from function and class component respectively!</h1> */}
      <Greetings name = "Ganesh"/>
      <Greetings name = "Aslam"/>
      <Greetings name = "John"/>
    </div>

  );
}

export default App;
