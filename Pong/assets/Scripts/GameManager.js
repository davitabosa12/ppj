// Learn cc.Class:
//  - [Chinese] http://docs.cocos.com/creator/manual/zh/scripting/class.html
//  - [English] http://www.cocos2d-x.org/docs/creator/en/scripting/class.html
// Learn Attribute:
//  - [Chinese] http://docs.cocos.com/creator/manual/zh/scripting/reference/attributes.html
//  - [English] http://www.cocos2d-x.org/docs/creator/en/scripting/reference/attributes.html
// Learn life-cycle callbacks:
//  - [Chinese] http://docs.cocos.com/creator/manual/zh/scripting/life-cycle-callbacks.html
//  - [English] http://www.cocos2d-x.org/docs/creator/en/scripting/life-cycle-callbacks.html
const Constants = require('./Constants');
cc.Class({
    extends: cc.Component,

    properties: {
        maxScore: 11,
        scoreBoard: cc.Node,
    },

    // LIFE-CYCLE CALLBACKS:

    onLoad () {
        
        this.playerPaddle = this.node.getChildByName("Player");
        this.ball = this.node.getChildByName("ball");
        

        this.node.on(cc.Node.EventType.MOUSE_MOVE, (evt) =>{
            
            this.playerPaddle.getComponent("Paddle").paddlePosition(evt.getLocationY() - cc.winSize.height/2);
        });

        this.node.on(Constants.AI_SCORES, (other)=>{
            this.aiScore++;
            this.scoreBoard.getComponent("Scoreboard").setAIScore(this.aiScore);
            cc.log("AI scores");
            if(this.aiScore >= this.maxScore){
                
                // AI wins
                //change scene
                cc.director.loadScene("aiWin");
            }
        });
        this.node.on(Constants.PLAYER_SCORES, ()=>{
            this.playerScore++;
            this.scoreBoard.getComponent("Scoreboard").setPlayerScore(this.playerScore);
            cc.log("Player scores");
            if(this.playerScore >= this.maxScore){
                //player wins
                //change scene
                cc.director.loadScene("playerWin");
            }
        });
    },

    start () {
        this.collisionManager = cc.director.getCollisionManager();
        this.collisionManager.enabled = true;

        this.playerScore = 0;
        this.aiScore = 0;
    },

    update (dt) {
        
    },
});
