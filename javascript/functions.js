function leapYear (year) {
  if (year % 400 == 0) {
    return true;
  } else if (year % 100 == 0) {
    return false;
  } else if (year % 4 == 0) {
    return true;
  } else {
    return false;
  }
}

leapYear(2012); // => true
leapYear(1999); // => false

function oneAndOne () {
  return 1 + 1;
}

var x = oneAndOne;   // x is a function
var y = oneAndOne(); // y is 2
