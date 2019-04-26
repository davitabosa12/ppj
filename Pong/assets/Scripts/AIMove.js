// Learn cc.Class:
//  - [Chinese] http://docs.cocos.com/creator/manual/zh/scripting/class.html
//  - [English] http://www.cocos2d-x.org/docs/creator/en/scripting/class.html
// Learn Attribute:
//  - [Chinese] http://docs.cocos.com/creator/manual/zh/scripting/reference/attributes.html
//  - [English] http://www.cocos2d-x.org/docs/creator/en/scripting/reference/attributes.html
// Learn life-cycle callbacks:
//  - [Chinese] http://docs.cocos.com/creator/manual/zh/scripting/life-cycle-callbacks.html
//  - [English] http://www.cocos2d-x.org/docs/creator/en/scripting/life-cycle-callbacks.html

cc.Class({
    extends: cc.Component,

    properties: {
        ball: {
            type: cc.Node,
            default: null,
        },
        aiPaddle: {
            type: cc.Node,
            default: null,
        },
        aiSpeed: 50,
    },

    // LIFE-CYCLE CALLBACKS:

    onLoad () {
        
        
    },

    start () {

    },

    update (dt) {
        
        if(this.ball.y > this.aiPaddle.y + this.aiPaddle.height/2){
            //go up
            this.aiPaddle.position = this.aiPaddle.position.add(new cc.Vec3(0, (this.aiSpeed * dt), 0));
        }
        if(this.ball.y < this.aiPaddle.y - this.aiPaddle.height/2){
            //go down
            this.aiPaddle.position = this.aiPaddle.position.add(new cc.Vec3(0, (-1 * this.aiSpeed * dt), 0));
        }
    },
});
