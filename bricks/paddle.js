const PADDLE_WIDTH = 100;
const PADDLE_THICKNESS = 10;
const PADDLE_DIST_FROM_EDGE = 60;
var paddleX = 400;


function drawPaddle(){
    colorRect(paddleX, canvas.height-PADDLE_DIST_FROM_EDGE,
        PADDLE_WIDTH, PADDLE_THICKNESS, 'white');
}