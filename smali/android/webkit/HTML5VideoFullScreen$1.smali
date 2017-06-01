.class Landroid/webkit/HTML5VideoFullScreen$1;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoFullScreen;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoFullScreen;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 101
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    # getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 103
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    # getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    # getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 107
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    # getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 109
    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 114
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    # setter for: Landroid/webkit/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Landroid/webkit/HTML5VideoFullScreen;->access$302(Landroid/webkit/HTML5VideoFullScreen;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 115
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    const/4 v1, 0x2

    # setter for: Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoFullScreen;->access$402(Landroid/webkit/HTML5VideoFullScreen;I)I

    .line 117
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    # invokes: Landroid/webkit/HTML5VideoFullScreen;->prepareForFullScreen()V
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$500(Landroid/webkit/HTML5VideoFullScreen;)V

    .line 118
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    sget-object v1, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    # setter for: Landroid/webkit/HTML5VideoFullScreen;->mPlayingWhenDestroyed:Z
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoFullScreen;->access$602(Landroid/webkit/HTML5VideoFullScreen;Z)Z

    .line 124
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v1, v1, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoFullScreen;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 127
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 128
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    # setter for: Landroid/webkit/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, v2}, Landroid/webkit/HTML5VideoFullScreen;->access$302(Landroid/webkit/HTML5VideoFullScreen;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 129
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    # getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    # getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 132
    :cond_0
    return-void
.end method
