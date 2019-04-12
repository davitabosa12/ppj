const BRICK_W = 80;
const BRICK_H = 40;
const BRICK_GAP = 2;
const BRICK_COLS = 10;
const BRICK_ROWS = 7;
var brickGrid = new Array(BRICK_COLS * BRICK_ROWS);


var paddle;
var ball, ball2;

var delta = 0;
var lastFrameTimeMs = 0;
var timeStep = 1000/60;

var canvas, canvasContext;

var mouseX = 0;
var mouseY = 0;

function updateMousePos(evt) {
	var rect = canvas.getBoundingClientRect();
	var root = document.documentElement;

	mouseX = evt.clientX - rect.left - root.scrollLeft;
	mouseY = evt.clientY - rect.top - root.scrollTop;

	//paddleX = mouseX - PADDLE_WIDTH/2;
}

function brickReset() {
	for(var i=0; i<BRICK_COLS * BRICK_ROWS; i++) {
		brickGrid[i] = true;
	} // end of for each brick
} // end of brickReset func

function mainLoop(timeStamp) {
		if(timeStamp < lastFrameTimeMs + timeStep) {
			requestAnimationFrame(mainLoop);
			return;
		}
		delta += timeStamp - lastFrameTimeMs;
		lastFrameTimeMs = timeStamp;
		while(delta >= timeStep) {
			moveEverything(timeStep); 
			delta -= timeStep;
		}
		drawEverything();
		requestAnimationFrame(mainLoop);
}

window.onload = function() {
	canvas = document.getElementById('gameCanvas');
	canvasContext = canvas.getContext('2d');

	requestAnimationFrame(mainLoop);
	
	canvas.addEventListener('mousemove', updateMousePos);

	paddle = new Paddle();
	ball = new Ball();
	

	brickReset();
	// ballReset();
}

function rowColToArrayIndex(col, row) {
	return col + BRICK_COLS * row;
}


function moveEverything(deltaTime) {
	ball.move(deltaTime);
	
	paddle.move(deltaTime);
	ballBrickHandling(deltaTime);
	ballPaddleHandling();
}

function drawBricks() {

	for(var eachRow=0;eachRow<BRICK_ROWS;eachRow++) {
		for(var eachCol=0;eachCol<BRICK_COLS;eachCol++) {

			var arrayIndex = rowColToArrayIndex(eachCol, eachRow); 

			if(brickGrid[arrayIndex]) {
				colorRect(BRICK_W*eachCol,BRICK_H*eachRow,
					BRICK_W-BRICK_GAP,BRICK_H-BRICK_GAP, 'blue');
			} // end of is this brick here
		} // end of for each brick
	} // end of for each row

} // end of drawBricks func

function drawEverything() {
	clearScreen();

	
	ball.draw();
	

	paddle.draw();

	drawBricks();
}
