import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    this.state = {            // first thing is to set the state - this will persist and be accessible by everything (when called this.state.num1, etc)
      num1: "",
      num2: "",
      result: 0
    }

  this.setNum1 = this.setNum1.bind(this);       //we want to bind the functions to this in the constructor
  this.setNum2 = this.setNum2.bind(this);
  this.add = this.add.bind(this);
  this.subtract = this.subtract.bind(this);
  this.multiply = this.multiply.bind(this);
  this.divide = this.divide.bind(this);
  this.clear = this.clear.bind(this);

  }

  setNum1(e) {          // break this down into two parts: the function here, which is taking the user's input and setting the state of the key num1. Second part is the onChange in the render function
    const num1 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({num1: num1});
  }

  setNum2(e) {
    const num2 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({num2: num2});
  }

  add(e) {            // this.state.num1 will refer to the 2 numbers that are set by the functions above - and then we set the result to the new result
    e.preventDefault();
    const result = this.state.num1 + this.state.num2;
    this.setState({result: result});
  }

  subtract(e) {
    e.preventDefault();
    const result = this.state.num1 - this.state.num2;
    this.setState({result: result});
  }

  multiply(e) {
    e.preventDefault();
    const result = this.state.num1 * this.state.num2;
    this.setState({result: result});
  }

  divide(e) {
    e.preventDefault();
    const result = this.state.num1 / this.state.num2;
    this.setState({result: result});
  }

  clear(e) {
    e.preventDefault();
    this.setState({
      num1: "",
      num2: "",
      result: 0
    })
  }


  render(){
    // const {num1, num2, result} = this.state;     If we do this, we don't have to set the values to this.state.num1, we can just say num1, num2
    return (          // when we do the eventlisteners, we have to interpolate the functions because they're JS functions within HTML
      <div>
        <h1>{this.state.result}</h1>
        <input onChange={this.setNum1} value={this.state.num1} />
        <input onChange={this.setNum2} value={this.state.num2} />    
        <button onClick={this.clear}>Clear</button>
        <button onClick={this.add}>+</button>
        <button onClick={this.subtract}>-</button>
        <button onClick={this.multiply}>*</button>
        <button onClick={this.divide}>/</button>
      </div>
    );
  }
}

export default Calculator;
