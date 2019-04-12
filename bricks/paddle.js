class Paddle{
    constructor(posX, width, distFromEdge, thickness){
        this.posX = posX || 400; 
        this.width = width || 100;
        this.distFromEdge = distFromEdge || 60;
        this.thickness = thickness || 10;
    }
    draw(){
        colorRect(this.posX, canvas.height - this.distFromEdge,
            this.width, this.thickness, 'white');
    }

    move(deltaTime){
        this.posX = mouseX - this.width /2;
    }
}

/*function drawPaddle(){
    colorRect(paddleX, canvas.height-PADDLE_DIST_FROM_EDGE,
        PADDLE_WIDTH, PADDLE_THICKNESS, 'white');
}*/