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
      <h1>These two messages are rendered from function and class component respectively!</h1>
    </div>
  );
}

export default App;
