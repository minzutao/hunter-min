<!---title:-->
<!---keywords:-->
<!---date:-->

#概念:

**Surface**

处理由Screen Compositor管理的Raw Buffer

**SurfaceView**

android.View的子类, 内部包含了Surface类型的对象. 换句话说, SurfaceView就是内嵌了Surface对象的View.

由于它继承了View类, 所以它本身就是个View, View的特性它都有, 完全可以当作一个View来操作. 为什么要继承一个View呢, 个人的理解是: 为了将Surface这种独立的裸显存纳入Android的UI管理的层次中, 比如操作一个视频窗口的位置, 大小等.

SurfaceView中的surface是位于持有该SurfaceView的window的层次之下的. SurfaceView在该window上凿个洞出来, 这样下层的Surface就显示出来了.

SurfaceView中的Surface通过SurfaceHolder来访问. 可以通过getHolder()接口来获得SurfaceHolder.

如果有其他线程来操作SurfaceView中的surface, 则需要确保生命周期的正确性. 也就是需要在SurfaceHolder.Callback.surfaceCreated() 和 SurfaceHolder.Callback.surfaceDestroyed()之间操作surface.

**SurfaceHolder**

Surface拥有者的抽象接口类. 通过它可以操作surface的大小(size), 格式(format), 编辑surface中的像素,,并且监控surface的改变. 一般与SurfaceView配合使用.

**VideoView** && **GLSurfaceView**

android.View.SurfaceView的子类.


<!-- vim:set tw=0:-->

