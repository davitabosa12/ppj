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
        paddle: cc.Node,
    },

    ctor: function(){
        this.x = 0;
    },

    // LIFE-CYCLE CALLBACKS:

    onLoad () {
        this.node.on('ballBrick', ()=> {
            cc.log("I know that a ball and a brick collided!");
        })
    },

    onEnable(){
        
    },

    start () {
        this.node.getParent().on(cc.Node.EventType.MOUSE_MOVE, (evt) => {
            this.x = evt.getLocationX() - cc.winSize.width/2;
            
            if(this.paddle === undefined || this.paddle === null){
                cc.error("Paddle not set");
            }
            
        });

        
    },

    update (dt) {
        this.paddle.position = new cc.Vec3(this.x,this.paddle.position.y,0);
    },
});
