var ballX = 400;
var ballY = 300;
var ballSpeedX = 0.15, ballSpeedY = 0.2;  
var originalBallSpeedX = ballSpeedX;

const BRICK_W = 80;
const BRICK_H = 40;
const BRICK_GAP = 2;
const BRICK_COLS = 10;
const BRICK_ROWS = 7;
var brickGrid = new Array(BRICK_COLS * BRICK_ROWS);

const PADDLE_WIDTH = 100;
const PADDLE_THICKNESS = 10;
const PADDLE_DIST_FROM_EDGE = 60;
var paddleX = 400;

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

	paddleX = mouseX - PADDLE_WIDTH/2;
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

	brickReset();
	// ballReset();
}

function ballReset() {
	ballX = canvas.width/2;
	ballY = canvas.height/2;
}

function rowColToArrayIndex(col, row) {
	return col + BRICK_COLS * row;
}

function ballMove(deltaTime) {
	ballX += ballSpeedX*deltaTime;
	ballY += ballSpeedY*deltaTime;

	if(ballX < 0) { //left
		ballSpeedX *= -1;
	}
	if(ballX > canvas.width) { // right
		ballSpeedX *= -1;
	}
	if(ballY < 0) { // top
		ballSpeedY *= -1;
	}
	if(ballY > canvas.height) { // bottom
		ballReset();
	}
}

var ballLastCol = Math.floor(ballX / BRICK_W);
var ballLastRow = Math.floor(ballY / BRICK_H);
function ballBrickHandling(deltaTime) {
	var ballBrickCol = Math.floor(ballX / BRICK_W);
	var ballBrickRow = Math.floor(ballY / BRICK_H);

	



	var brickIndexUnderBall = rowColToArrayIndex(ballBrickCol, ballBrickRow);

	if(ballBrickCol >= 0 && ballBrickCol < BRICK_COLS &&
		ballBrickRow >= 0 && ballBrickRow < BRICK_ROWS) {

		if(brickGrid[brickIndexUnderBall]) {
			brickGrid[brickIndexUnderBall] = false;

			if(ballBrickCol !== ballLastCol){
				//change X direction
				
				ballSpeedX *= -1;
			}
			if(ballBrickRow !== ballLastRow){
				//change Y direction
				ballSpeedY *= -1;
			}

			
		}
	
	}
	ballLastCol = ballBrickCol;
	ballLastRow = ballBrickRow;


}

function ballPaddleHandling() {
	var paddleTopEdgeY = canvas.height-PADDLE_DIST_FROM_EDGE;
	var paddleBottomEdgeY = paddleTopEdgeY + PADDLE_THICKNESS;
	var paddleLeftEdgeX = paddleX;
	var paddleRightEdgeX = paddleLeftEdgeX + PADDLE_WIDTH;
	if( ballY > paddleTopEdgeY && // below the top of paddle
		ballY < paddleBottomEdgeY && // above bottom of paddle
		ballX > paddleLeftEdgeX && // right of the left side of paddle
		ballX < paddleRightEdgeX) { // left of the left side of paddle
		
		ballSpeedY *= -1;

		var centerOfPaddleX = paddleX+PADDLE_WIDTH/2;
		var ballDistFromPaddleCenterX = ballX - centerOfPaddleX;
		ballSpeedX = ballDistFromPaddleCenterX * originalBallSpeedX/(PADDLE_WIDTH/4);
	}
}

function moveEverything(deltaTime) {
	ballMove(deltaTime);
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
	colorRect(0,0, canvas.width,canvas.height, 'black'); // clear screen

	colorCircle(ballX,ballY, 10, 'white'); // draw ball

	colorRect(paddleX, canvas.height-PADDLE_DIST_FROM_EDGE,
				PADDLE_WIDTH, PADDLE_THICKNESS, 'white');

	drawBricks();
}

function colorRect(topLeftX,topLeftY, boxWidth,boxHeight, fillColor) {
	canvasContext.fillStyle = fillColor;
	canvasContext.fillRect(topLeftX,topLeftY, boxWidth,boxHeight);
}

function colorCircle(centerX,centerY, radius, fillColor) {
	canvasContext.fillStyle = fillColor;
	canvasContext.beginPath();
	canvasContext.arc(centerX,centerY, 10, 0,Math.PI*2, true);
	canvasContext.fill();
}

function colorText(showWords, textX,textY, fillColor) {
	canvasContext.fillStyle = fillColor;
	canvasContext.fillText(showWords, textX, textY);
}