
class Bricks{
	constructor(rows, cols, gap, width, height){
		this.rows = rows;
		this.cols = cols;
		this.gap = gap;
		this.width = width;
		this.height = height;
		this.brickGrid = new Array(this.cols * this.rows);
	}
	reset() {
		for(var i=0; i<this.cols * this.rows; i++) {
			this.brickGrid[i] = true;
		} // end of for each brick
	} // end of brickReset func
	rowColToArrayIndex(col, row) {
		return col + this.cols * row;
	}
	draw() {

		for(var eachRow=0;eachRow<this.rows;eachRow++) {
			for(var eachCol=0;eachCol<this.cols;eachCol++) {
	
				var arrayIndex = this.rowColToArrayIndex(eachCol, eachRow); 
	
				if(this.brickGrid[arrayIndex]) {
					Utils.colorRect(this.width*eachCol,this.height*eachRow,
						this.width-this.gap,this.height-this.gap, 'blue');
				} // end of is this brick here
			} // end of for each brick
		} // end of for each row
	
	} // end of drawBricks func
	move(deltaTime){ 
		// do nothing
	}

}

/*const this.width = 80;
const this.height = 60;
const BRICK_GAP = 2;
const BRICK_COLS = 10;
const BRICK_ROWS = 3;
var brickGrid = new Array(BRICK_COLS * BRICK_ROWS);
*/

