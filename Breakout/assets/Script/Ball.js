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
        
        originalBallSpeed: {
            type: cc.Vec2,
            default: new cc.Vec2(150, -100),
            
        },
        speedDamp: 100,

    },

    ctor: function(){
        this.ballSpeed = this.originalBallSpeed;
        cc.log(this.ballSpeed);
    },

    onEnable: ()=>{
        cc.director.getCollisionManager().enabled = true;
        cc.director.getCollisionManager().enabledDebugDraw = true;
    },

    onDisable: () =>{
        cc.director.getCollisionManager().enabled = false;
        cc.director.getCollisionManager().enabledDebugDraw = false;
    },


    start () {
        this.collider = this.node.getComponent(cc.CircleCollider);        
        this.originalBallSpeed = this.ballSpeed;
        cc.log(this.collider);
        cc.log(this.manager);
    },
    
    onCollisionEnter: function (other, self) {
        cc.log(other.node.name);
        cc.log(other.node.group == "brick");
        var otherName = other.node.name;
        var otherPos = other.node.position;
        if(otherName === "Right Collider"){
            this.ballSpeed = this.ballSpeed.scaleSelf(new cc.Vec2(-1, 1));
        } else if(otherName === "Left Collider"){
            this.ballSpeed = this.ballSpeed.scaleSelf(new cc.Vec2(-1, 1));
        } else if(otherName === "Top Collider"){
            this.ballSpeed = this.ballSpeed.scaleSelf(new cc.Vec2(1, -1));
        } else if(otherName === "Kill Plane"){
            this.reset();
        } else if(otherName === "paddle"){
            //recalculate speed
            var distFromCenter = otherPos.sub(self.node.position);
            cc.log(`distFromCenter: ${distFromCenter}`);
            this.ballSpeed = new cc.Vec3(distFromCenter.x * this.originalBallSpeed.x / this.speedDamp, -this.ballSpeed.y);
        } else if(other.node.group === "brick"){
            this.node.dispatchEvent(new cc.Event.EventCustom("ballBrick", true));
            
        }
      
    },

    update (dt) {
        //var parentPos = this.node.parent.position;
        //parentPos.add(new cc.Vec3(this.xSpeed, 0, 0));
        
        this.node.position = this.node.position.add(this.ballSpeed.mul(dt));
    },

    reset(){
        this.node.position = new cc.Vec3(0, 0, 0);
    }
});
