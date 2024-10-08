// import logo from './logo.svg';
import './App.css';
import React, {useState,useCallback} from 'react';
// import {Welcome1, Welcome2, Buttons, Forms} from './Components/WelcomeFuncCompPractice'
// import WelcomeStudents from './Components/WelcomeClassCompPractice';
// import Information from './Components/information';
// import {CounterClassState, ChangeText} from './Components/CounterClassState';
// import { StudentWelcomeConditionalIfElse, StudentWelcomeConditionalTernary } from './Components/StudentWelcomeConditionalIfElse';
// import StylePracticeInReact from './Components/StylePracticeInReact';
// import {ProductsList1, ProductsList2} from './Components/ProductsList';
// import DisplayBankCustomers from './Components/DisplayBankCustomers';
// import FragmentsPractice from './Components/FragmentsPractice';
// import TableForFragmentsPractice from './Components/TableForFragmentsPractice';
// import ParentComponent from './Components/ParentComponent';
// import NormalCompForIncrement from './Components/NormalCompForIncrement';
// import PureCompForIncrement from './Components/PureCompForIncrement';
// import Parent from './Parent';
// import RefPractice from './Components/RefPractice';
// import ClickCounter from './Components/ClickCounter';
// import HoverCounter from './Components/HoverCounter';
// import RefTask from './Components/RefTask';
// import ClickDecrementCounter from './Components/ClickDecrementCounter';
// import HoverDecrementCounter from './Components/HoverDecrementCounter';
// import GetPostData from './Components/GetData';
// import PostDataFromForm from './Components/PostDataFromForm';
// import PostDataTask from './Components/PostDataTask';
// import CounterClassComponent from './Components/CounterClassComponent';
// import CounterWithHooks from './Components/CounterWithHooks';
// import CounterWithHooksTask from './Components/CounterWithHooksTask';
// import UseEffectPractice from './Components/useEffectPractice';
// import ComponentA from './Components/ComponentA';
// import ComponentWithPropsA from './Components/ComponentWithPropsA';
// import ComponentWithoutPropsA from './Components/ComponentWithoutPropsA';
// import CustomerAdd from './Components/CustomerAdd';
// import StudentAddTask from './Components/StudentAddTask';
import ProductCallbackPractice from './Components/ProductCallbackPractice';




// export const UserContext = React.createContext()
export const TaskContext = React.createContext()
function App() {
  const [product, setProduct] = useState(["Product1","Product2"]);
  const [count, setCount] = useState(0);
  const [cart, setCart] = useState(0);
  const addToCart = useCallback(() => {
    setCart(cart+1)
  },[cart]);
  return (
    <div className='App'>
      {/* <Welcome name = "Vijay" sportsName = "Cricket" age = "21" gender = "Male"/>
      <WelcomeStudents name = "Vijay" sportsName = "Cricket"/>
      <h1>These two messages are rendered from function and class component respectively!</h1> */}
      {/* <Welcome1 name = "Ganesh" sportsName = "Cricket"/>
      <Welcome1 name = "Aslam" sportsName = "Football"/>
      <Welcome1 name = "John" sportsName = "Hockey"/>
      <Welcome2 name = "Ganesh" sportsName = "Cricket"/>
      <Welcome2 name = "Aslam" sportsName = "Football"/>
      <Welcome2 name = "John" sportsName = "Hockey"/> */}
      {/* <WelcomeStudents name = "Ganesh" sportsName = "Cricket"/>
      <WelcomeStudents name = "Aslam" sportsName = "Football"/>
      <WelcomeStudents name = "John" sportsName = "Hockey"/> */}
      {/* <Welcome name = "Ganesh" sportsName = "Cricket">
          <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Temporibus dicta optio omnis voluptatum consectetur cumque molestias aliquid quae sit similique sunt voluptatem, magnam ex ipsa sed consequuntur. Fugiat distinctio eveniet beatae libero minima veritatis doloribus dolore, ipsam exercitationem hic, quod tenetur natus, odio porro dicta pariatur? Reiciendis quo laborum eum.</p>
      </Welcome> */}
      {/* <Welcome name = "Aslam" sportsName = "Football">
          <button>Click Me</button>
      </Welcome>
      <Welcome name = "John" sportsName = "Hockey">
          <h5>There's nothing here, but there's something!</h5>
      </Welcome> */}
      {/* <Welcome name = "Vijay" sportsName = "Cricket" age = "21" gender = "Male"/>
      <Welcome name = "Venkat" sportsName = "Football" age = "21" gender = "Male"/>
      <Welcome name = "Udhaya" sportsName = "Volley Ball" age = "22" gender = "Male"/>
      <Welcome name = "Sundar" sportsName = "Table Tennis" age = "22" gender = "Male"/>
      <br></br>
      <Button/>
      <br></br>
      <Form/>
      <br></br> */}
      {/* <Information/> */}
      {/* <CounterClassState/> */}
      {/* <ChangeText/> */}
      {/* <StudentWelcomeConditionalIfElse name="Vijay"/>
      <StudentWelcomeConditionalTernary name="Vijay"/> */}
      {/* <StylePracticeInReact/> */}
      {/* <ProductsList1/>
      <ProductsList2/> */}
      {/* <DisplayBankCustomers/> */}
      {/* <FragmentsPractice/> */}
      {/* <TableForFragmentsPractice/> */}
      {/* <ParentComponent/> */}
      {/* <NormalCompForIncrement/>
      <PureCompForIncrement/> */}
      {/* <Parent/> */}
      {/* <RefPractice/> */}
      {/* <ClickCounter/>
      <HoverCounter/> */}
      {/* <RefTask/> */}
      {/* <ClickDecrementCounter/>
      <HoverDecrementCounter/> */}
      {/* <GetPostData/> */}
      {/* <PostDataFromForm/> */}
      {/* <PostDataTask/> */}
      {/* <CounterClassComponent/> */}
      {/* <CounterWithHooks/> */}
      {/* <CounterWithHooksTask/> */}
      {/* <UseEffectPractice/> */}
      {/* <UserContext.Provider value={'Rohit'}>
        <ComponentA/>
      </UserContext.Provider> */}
      {/* <ComponentWithPropsA name="Vijay"/>
      <TaskContext.Provider value='Venkat'>
        <ComponentWithoutPropsA/>
      </TaskContext.Provider> */}
      {/* <h1>Heading from app.js</h1>
      <CustomerAdd/> */}
      {/* <StudentAddTask/> */}
      <h1>React</h1>
      <div className='product-wrapper'>
        <h3>{count}</h3>
        <button onClick={()=>setCount(count+1)}>Click Me</button>
        <h3>Cart : {cart}</h3>
        {product.map((p,i)=>{
          return <ProductCallbackPractice key={i} product={p}addToCart={addToCart} />
        })}
      </div>



    </div>
  );
}

export default App;