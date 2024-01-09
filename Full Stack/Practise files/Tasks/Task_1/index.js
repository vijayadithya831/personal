
document.getElementById("button").onclick = function() {
    const PI = 3.14159;
    let rad = document.getElementById("radius").value;
    rad = Number(rad);
    let circum;
    let ar;
    circum = 2 * PI * rad;
    ar = PI * rad * rad;
    document.getElementById("circumference").innerHTML = "The Circumference of the given circle is " + circum + " units";
    document.getElementById("area").innerHTML = "The Area of the given circle is " + ar + " square units";
    document.getElementById("circumference").style.display = "block";
    document.getElementById("area").style.display = "block";
}