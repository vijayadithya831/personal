// let a = 1;
// let b = 2;
// let c = 3;
// let d = 4;
// let e = 5;

// function sum(...numbers) {
//     // let total = 1;
//     let total = numbers.reduce((sum, number) => {
//         return sum + number;
//      } ,0);
// //     for( let number of numbers){
// //         total *= number;
// //     }
//     return total;
// }

// console.log(sum(a,b,c,d));


// function displayConsole(output) {
//     console.log(output);
// }

// function sum(x,y,callback) {
//     let result = x+y;
//     callback(result);
// }

// function displayConsole(output) {
//     console.log(output);
// }

// sum(1,2,displayConsole)


// let numbers = [1,2,3,4,5,6,7];

// let squares = numbers.map((element) => {
//     return Math.pow(element, 3)
// });
// console.log(numbers);

// squares.forEach((element) => {
//     console.log(element);
// });

function cube(element) {
    return Math.pow(element,3);
}

function print(element) {
    console.log(element);
}

let numbers = [1,2,3,4,5,6,7];

let squares = numbers.map(cube)

squares.forEach(print);
