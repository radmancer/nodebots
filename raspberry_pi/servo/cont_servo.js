var raspi = require('raspi-io');
var five = require("johnny-five");
var board = new five.Board({
    io: new raspi()
});

board.on("ready", function() {

  var servo = new five.Servo({
    pin: "GPIO18", 
    type: "continuous"
  });

  // Clockwise, top speed.
  servo.cw(1);
});
