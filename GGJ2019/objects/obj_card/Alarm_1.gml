/// @description Create arrows
// You can write your code in this editor

var text;

//Left arrow
arrowLeft = instance_create_layer(x, y + 50, "Arrow", obj_arrow);
arrowLeft.arrowType = "Left";

if (cardNoRest > 0)
	text = "Rest increases by " + string(cardNoRest) + "%";
else if (cardNoRest < 0)
	text = "Rest decreases by " + string(cardNoRest) + "%";
else if (cardNoRest == 0)
	text = "Rest value unchanged."

arrowLeft.arrowText = text + "\n\n" + cardNoText;


//Right arrow
arrowRight = instance_create_layer(x, y + 50, "Arrow", obj_arrow);
arrowRight.arrowType = "Right";

if (cardYesRest > 0)
	text = "Rest increases by " + string(cardYesRest) + "%";
else if (cardYesRest < 0)
	text = "Rest decreases by " + string(cardYesRest) + "%";
else if (cardYesRest == 0)
	text = "Rest value unchanged."

arrowRight.arrowText = text + "\n\n" + cardYesText;