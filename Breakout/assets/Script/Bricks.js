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
        sprite: {
            default: null,
            type: cc.SpriteFrame,
        },
        // foo: {
        //     // ATTRIBUTES:
        //     default: null,        // The default value will be used only when the component attaching
        //                           // to a node for the first time
        //     type: cc.SpriteFrame, // optional, default is typeof default
        //     serializable: true,   // optional, default is true
        // },
        // bar: {
        //     get () {
        //         return this._bar;
        //     },
        //     set (value) {
        //         this._bar = value;
        //     }
        // },
    },

    // LIFE-CYCLE CALLBACKS:

    onLoad () {
        cc.log(this.sprite);
        this.brickArray = [];
        
    },

    start: function() {
        const rows = 4;
        const cols = 8;
        
        if(!this.sprite) return;
        const width = this.sprite.getRect().width;
        const height = this.sprite.getRect().height;

        for(var i = 0; i < cols; i++){
            for(var j = 0; j < rows; j++){
                let node = new cc.Node("BRICK");
                let sp = node.addComponent(cc.Sprite);
                let collider = node.addComponent(cc.BoxCollider);
                collider.node = node;
                collider.size = new cc.Size(width, height);
                node.group = "brick";
                sp.spriteFrame = this.sprite;
                node.parent = this.node;
                node.position = new cc.Vec3(i * width, j * height * -1, 0);
                this.brickArray.push(node);
            }
        }
    },

    // update (dt) {},
});
