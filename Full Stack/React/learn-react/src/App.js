// import logo from './logo.svg';
import './App.css';
import Welcome from './Components/WelcomeFuncCompPractice'
import WelcomeStudents from './Components/WelcomeClassCompPractice';

function App() {
  return (
    <div className='App'>
      {/* <Greetings/>
      <WelcomeStudents/>
      <h1>These two messages are rendered from function and class component respectively!</h1> */}
      {/* <Welcome name = "Ganesh" sportsName = "Cricket"/>
      <Welcome name = "Aslam" sportsName = "Football"/>
      <Welcome name = "John" sportsName = "Hockey"/>
      <WelcomeStudents name = "Ganesh" sportsName = "Cricket"/>
      <WelcomeStudents name = "Aslam" sportsName = "Football"/>
      <WelcomeStudents name = "John" sportsName = "Hockey"/> */}
      <Welcome name = "Ganesh" sportsName = "Cricket">
        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Temporibus dicta optio omnis voluptatum consectetur cumque molestias aliquid quae sit similique sunt voluptatem, magnam ex ipsa sed consequuntur. Fugiat distinctio eveniet beatae libero minima veritatis doloribus dolore, ipsam exercitationem hic, quod tenetur natus, odio porro dicta pariatur? Reiciendis quo laborum eum.</p>
      </Welcome>
      <Welcome name = "Aslam" sportsName = "Football"></Welcome>
      <Welcome name = "John" sportsName = "Hockey"></Welcome>
    </div>

  );
}

export default App;
