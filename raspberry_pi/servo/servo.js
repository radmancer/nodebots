var raspi = require('raspi-io');
var five = require("johnny-five");
var board = new five.Board({
    io: new raspi()
});

board.on("ready", function() {

  var servo = new five.Servo("GPIO18");

  // Sweep from 0-180 and repeat.
  servo.sweep();
});
