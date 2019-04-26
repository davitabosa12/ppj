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
        originalBallSpeed: new cc.Vec3(-150, 75, 0),
        speedDamp: 100,
    },

    onCollisionEnter(other, self){
        const group = other.node.group;
        cc.log(group);
        if(group === "bounds" ){
            this.invertY();
        }
        if(group === "paddle"){
            //recalculateSpeed
            
            let distFromCenter =  self.node.position.y - other.node.y;
            distFromCenter *= 3;
            this.ballSpeed = new cc.Vec3(-self.node.position.x,
                distFromCenter * this.originalBallSpeed.y / this.speedDamp, 0 );
        }
        if(group === "goal"){
            if(other.node.name === "Player Goal"){
                this.node.dispatchEvent(new cc.Event.EventCustom(Constants.AI_SCORES, true));
            } else if(other.node.name === "AI Goal"){
                this.node.dispatchEvent(new cc.Event.EventCustom(Constants.PLAYER_SCORES, true));
            }
            this.reset();
        }
    },

    // LIFE-CYCLE CALLBACKS:

    onLoad () {
        this.ballSpeed = this.originalBallSpeed;
    },

    start () {
        
    },

    update (dt) {
        this.node.position = this.node.position.add(this.ballSpeed.mul(dt));
    },

    invertX(){
        
        this.ballSpeed = this.ballSpeed.scale(new cc.Vec3(-1, 1, 0));
    },
    invertY(){
        this.ballSpeed = this.ballSpeed.scale(new cc.Vec3(1, -1, 0));
    },
    reset(){
        this.node.position = new cc.Vec3(0,0,0);
        this.ballSpeed = this.ballSpeed.normalize();
        this.ballSpeed.x = -this.ballSpeed.x * this.originalBallSpeed.x;
        this.ballSpeed.y = this.ballSpeed.y * this.originalBallSpeed.y;
    },
});
