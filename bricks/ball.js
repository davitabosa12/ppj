var ballX = 400;
var ballY = 300;
var ballSpeedX = 0.15, ballSpeedY = 0.2;  
var originalBallSpeedX = ballSpeedX;


function drawBall(){
    colorCircle(ballX,ballY, 10, 'white'); // draw ball
}


function ballReset() {
	ballX = canvas.width/2;
	ballY = canvas.height/2;
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