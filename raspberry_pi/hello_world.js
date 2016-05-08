var raspi = require('raspi-io');
var five = require('johnny-five');
var board = new five.Board({
    io: new raspi()
});

board.on('ready', function(){
    // Create an led on pin 7 on PI (GPIO4)
    // and strobe it on/off
    var led = new five.Led();
    led.strobe(500);
});
