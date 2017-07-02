let readline = require('readline');

let rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function getBottles() {
  rl.question('Enter the length of your shower in minutes: ', function(lengthOfShower) {
    let gallonsUsed = getGallons(lengthOfShower);
    let ouncesUsed = getOunces(gallonsUsed);
    console.log(`You used ${ouncesUsed / 16} bottles of water!`);
    rl.close();
  })
}

function getGallons(lengthOfShower) {
  return lengthOfShower * 1.5;
}

function getOunces(gallonsUsed) {
  return gallonsUsed * 128;
}

getBottles();
