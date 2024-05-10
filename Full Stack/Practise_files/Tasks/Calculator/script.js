let input = document.getElementById('inputBox');
let buttons = document.querySelectorAll('input[type="button"]');
let string = "";

buttons.forEach((button) => {
    button.addEventListener('click', (e) => {
        if (e.target.value == '=') {
                string = eval(string);
                input.value = string;
        }
        else if(e.target.value == 'AC') {
            string = '';
            input.value = string;
        } 
        else if(e.target.value == 'DEL') {
            string = string.slice(0,-1);
            input.value = string;
        }
        else {
            string += e.target.value;
            input.value = string;
        }
    });
});
