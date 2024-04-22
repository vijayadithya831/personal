// problem 1

// let func = (arr, val) => {
// 	let temp = [...arr];
// 	temp.sort((a,b) => b-a);
//     if(val<arr.length) {
//         return temp[val-1];
//     }
//     else {
//         console.log(`The array has only upto ${val-1} indexes`);
//     }
// }
// let list = [10, 5, 2, 1, 3, 5, 40, 50, 10];
// let num = window.prompt("Enter a number");
// let ans = func(list, num);
// if(ans != undefined){
//     console.log(`The required value is ${ans}`);
// }

// problem 2

// let func = (num1, num2) => {
//     let val = [];
//     for(let i = 1; i <= num1; i++) {
//         let num = i;
//             let sum = 0, rem = 0;
//             while(num>0){
//                 rem = num % 10;
//                 num = Math.floor(num / 10);
//                 sum = sum + rem;
//             }
//             if(sum === num2) {
//                 val.push(i);
//             }
//     }
//     console.log(val);
// }

// func(100,9);

// problem 3

var func = (array) => {
	return array.map((value) => {
		return value.split("_").map((variable) => {
			return variable[0].toUpperCase() + variable.slice(1);
		}).join(" ");
	});
};
var content = ["IBM_cloud","arc_array","make_data"];
var final_array = func(content);
console.log(final_array);



// console.log("Hello_world".split("_"));


// var func = (array) => {
// 	return array.map((value) => {
// 		return value.split("_").map((variable) => {
// 			return variable[0].toUpperCase() + variable.slice(1);
// 		}).join(" ");
// 	});
// };
// var content = ["IBM_cloud","arc_array","make_data"];
// var final_array = func(content);
// console.log(final_array);

// var final_array = next_array.map((variable) => {
// 	return variable[0][0].toUpperCase() + variable[0].slice(1) + " " + variable[1][0].toUpperCase() + variable[1].slice(1);
// });

// console.log(final_array);
