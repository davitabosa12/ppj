
class Ball{
    constructor(x, y, speedX, speedY){
        this.posX = x || 400;
        this.posY = y || 300;
        this.speedX = speedX || 0.15;
        this.speedY = speedY || 0.2;
        this.originalSpeedX = this.speedX;
        this.lastCol = Math.floor(this.posX / BRICK_W);
        this.lastRow = Math.floor(this.posY / BRICK_H); 
        this.trails = [];
    }

    draw(){
        for(var i = 0; i < this.trails.length; i++){
            
            colorCircle(this.trails[i].x, this.trails[i].y, 10, "#FF0000" + i.toString(16));
        }
        colorCircle(this.posX,this.posY, 10, 'white'); // draw ball
    }
    reset(){
        this.posX = canvas.width / 2;
        this.posY = canvas.height / 2;
    }
    move(deltaTime){
        this.posX += this.speedX*deltaTime;
        this.posY += this.speedY*deltaTime;

        if(this.posX < 0) { //left
            this.speedX *= -1;
        }
        if(this.posX > canvas.width) { // right
            this.speedX *= -1;
        }
        if(this.posY < 0) { // top
            this.speedY *= -1;
        }
        if(this.posY > canvas.height) { // bottom
            this.speedY *= -1;
            //this.reset();
        }
        this.trails.push({x: this.posX, y: this.posY});
        while(this.trails.length > 90){
            this.trails.splice(0,1);
        }
    }
}


function ballBrickHandling() {
	/**
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
    **/
}

function ballPaddleHandling() {
	/**
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
    **/
}