.class Landroid/webkit/HTML5VideoViewProxy;
.super Landroid/os/Handler;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;,
        Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;
    }
.end annotation


# static fields
.field private static final BUFFERING_END:I = 0x6a

.field private static final BUFFERING_START:I = 0x69

.field private static final ENDED:I = 0xc9

.field private static final ENTER_FULLSCREEN:I = 0x6b

.field private static final ERROR:I = 0x67

.field private static final LOAD_DEFAULT_POSTER:I = 0x68

.field private static final LOGTAG:Ljava/lang/String; = "HTML5VideoViewProxy"

.field private static final PAUSE:I = 0x66

.field private static final PAUSED:I = 0xcb

.field private static final PLAY:I = 0x64

.field private static final POSTER_FETCHED:I = 0xca

.field private static final PREPARED:I = 0xc8

.field private static final RESTORESTATE:I = 0xcd

.field private static final SEEK:I = 0x65

.field private static final STOPFULLSCREEN:I = 0xcc

.field private static final TIMEUPDATE:I = 0x12c


# instance fields
.field mNativePointer:I

.field private mPoster:Landroid/graphics/Bitmap;

.field private mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

.field private mSeekPosition:I

.field private mWebCoreHandler:Landroid/os/Handler;

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;I)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebViewClassic;
    .param p2, "nativePtr"    # I

    .prologue
    .line 605
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 607
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    .line 611
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p0}, Landroid/webkit/WebViewClassic;->setHTML5VideoViewProxy(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 613
    iput p2, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    .line 615
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->createWebCoreHandler()V

    .line 616
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/SurfaceTexture;IIII)Z
    .locals 1
    .param p0, "x0"    # Landroid/graphics/SurfaceTexture;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoViewProxy;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPaused(I)V

    return-void
.end method

.method static synthetic access$1100(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkit/HTML5VideoViewProxy;II)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnTimeupdate(II)V

    return-void
.end method

.method static synthetic access$1300(Landroid/webkit/HTML5VideoViewProxy;II)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnStopFullscreen(II)V

    return-void
.end method

.method static synthetic access$1400(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnRestoreState(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$700(Landroid/webkit/HTML5VideoViewProxy;IIII)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPrepared(IIII)V

    return-void
.end method

.method static synthetic access$802(Landroid/webkit/HTML5VideoViewProxy;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    return p1
.end method

.method static synthetic access$900(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/HTML5VideoViewProxy;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnEnded(I)V

    return-void
.end method

.method private createWebCoreHandler()V
    .locals 1

    .prologue
    .line 619
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$1;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoViewProxy$1;-><init>(Landroid/webkit/HTML5VideoViewProxy;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    .line 655
    return-void
.end method

.method private doSetPoster(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "poster"    # Landroid/graphics/Bitmap;

    .prologue
    .line 658
    if-nez p1, :cond_0

    .line 666
    :goto_0
    return-void

    .line 662
    :cond_0
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPoster:Landroid/graphics/Bitmap;

    .line 663
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xca

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 664
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 665
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static getInstance(Landroid/webkit/WebViewCore;I)Landroid/webkit/HTML5VideoViewProxy;
    .locals 2
    .param p0, "webViewCore"    # Landroid/webkit/WebViewCore;
    .param p1, "nativePtr"    # I

    .prologue
    .line 785
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/webkit/HTML5VideoViewProxy;-><init>(Landroid/webkit/WebViewClassic;I)V

    return-object v0
.end method

.method private native nativeOnEnded(I)V
.end method

.method private native nativeOnPaused(I)V
.end method

.method private native nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V
.end method

.method private native nativeOnPrepared(IIII)V
.end method

.method private native nativeOnRestoreState(I)V
.end method

.method private native nativeOnStopFullscreen(II)V
.end method

.method private native nativeOnTimeupdate(II)V
.end method

.method private static native nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z
.end method

.method private sendTimeupdate()V
    .locals 3

    .prologue
    .line 669
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 670
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 671
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 672
    return-void
.end method


# virtual methods
.method public dispatchOnEnded()V
    .locals 3

    .prologue
    .line 336
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 337
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 338
    return-void
.end method

.method public dispatchOnPaused()V
    .locals 3

    .prologue
    .line 341
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 342
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 343
    return-void
.end method

.method public dispatchOnRestoreState()V
    .locals 3

    .prologue
    .line 352
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcd

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 353
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 354
    return-void
.end method

.method public dispatchOnStopFullScreen(Z)V
    .locals 3
    .param p1, "stillPlaying"    # Z

    .prologue
    .line 346
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 347
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 348
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 349
    return-void

    .line 347
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enterFullScreenVideo(ILjava/lang/String;)V
    .locals 1
    .param p1, "layerId"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 771
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {p1, p2, p0, v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->enterFullScreenVideo(ILjava/lang/String;Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    .line 772
    return-void
.end method

.method public enterFullscreenForVideoLayer(Ljava/lang/String;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "videoLayerID"    # I

    .prologue
    .line 702
    if-nez p1, :cond_0

    .line 710
    :goto_0
    return-void

    .line 706
    :cond_0
    const/16 v1, 0x6b

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 707
    .local v0, "message":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 708
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 709
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public exitFullScreenVideo()V
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {p0, v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->exitFullScreenVideo(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    .line 776
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getWebView()Landroid/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 372
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 374
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 375
    .local v2, "url":Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 376
    .local v0, "client":Landroid/webkit/WebChromeClient;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 377
    .local v3, "videoLayerID":I
    if-eqz v0, :cond_0

    .line 378
    iget v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-static {v2, v4, p0, v0, v3}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->play(Ljava/lang/String;ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebChromeClient;I)V

    goto :goto_0

    .line 383
    .end local v0    # "client":Landroid/webkit/WebChromeClient;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "videoLayerID":I
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 384
    .restart local v2    # "url":Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 385
    .restart local v0    # "client":Landroid/webkit/WebChromeClient;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 386
    .restart local v3    # "videoLayerID":I
    if-eqz v0, :cond_0

    .line 387
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {v3, v2, p0, v4}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->enterFullScreenVideo(ILjava/lang/String;Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    goto :goto_0

    .line 392
    .end local v0    # "client":Landroid/webkit/WebChromeClient;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "videoLayerID":I
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 393
    .local v1, "time":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    .line 394
    iget v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-static {v4, p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->seek(ILandroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_0

    .line 398
    .end local v1    # "time":Ljava/lang/Integer;
    :sswitch_3
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->pause(Landroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_0

    .line 402
    :sswitch_4
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_1

    .line 403
    # setter for: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z
    invoke-static {v5}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$102(Z)Z

    .line 404
    :cond_1
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->end()V

    goto :goto_0

    .line 407
    :sswitch_5
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 408
    .restart local v0    # "client":Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_0

    .line 415
    .end local v0    # "client":Landroid/webkit/WebChromeClient;
    :sswitch_6
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 416
    .restart local v0    # "client":Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 425
    .end local v0    # "client":Landroid/webkit/WebChromeClient;
    :sswitch_7
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isPlaying(Landroid/webkit/HTML5VideoViewProxy;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 426
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->sendTimeupdate()V

    goto :goto_0

    .line 431
    :sswitch_8
    # invokes: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V
    invoke-static {v5}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$200(Z)V

    goto :goto_0

    .line 435
    :sswitch_9
    const/4 v4, 0x0

    # invokes: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V
    invoke-static {v4}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$200(Z)V

    goto :goto_0

    .line 372
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
        0x69 -> :sswitch_8
        0x6a -> :sswitch_9
        0x6b -> :sswitch_1
        0xc9 -> :sswitch_4
        0x12c -> :sswitch_7
    .end sparse-switch
.end method

.method public loadPoster(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 747
    if-nez p1, :cond_0

    .line 748
    const/16 v1, 0x68

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 749
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 759
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 753
    :cond_0
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v1, :cond_1

    .line 754
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    .line 757
    :cond_1
    new-instance v1, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-direct {v1, p1, p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;-><init>(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    .line 758
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->start()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 325
    const/16 v0, 0xc9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 326
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 331
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 365
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 366
    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 805
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_1

    .line 806
    const/16 v0, 0x69

    invoke-virtual {p0, v0, p2, p3}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 810
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 807
    :cond_1
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    .line 808
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, p2, p3}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 815
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 816
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 823
    :goto_0
    return v0

    .line 818
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 819
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {p0, v1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->exitFullScreenVideo(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    goto :goto_0

    .line 823
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 308
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->onPrepared()V

    .line 309
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 310
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 311
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "dur"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string/jumbo v2, "width"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v2, "height"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 315
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 316
    return-void
.end method

.method public onTimeupdate()V
    .locals 1

    .prologue
    .line 357
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 358
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 726
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 727
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 728
    return-void
.end method

.method public pauseAndDispatch()V
    .locals 0

    .prologue
    .line 767
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->pauseAndDispatch()V

    .line 768
    return-void
.end method

.method public play(Ljava/lang/String;II)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "videoLayerID"    # I

    .prologue
    .line 684
    if-nez p1, :cond_0

    .line 695
    :goto_0
    return-void

    .line 688
    :cond_0
    if-lez p2, :cond_1

    .line 689
    invoke-virtual {p0, p2}, Landroid/webkit/HTML5VideoViewProxy;->seek(I)V

    .line 691
    :cond_1
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 692
    .local v0, "message":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 693
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 694
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public seek(I)V
    .locals 2
    .param p1, "time"    # I

    .prologue
    .line 717
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 718
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 719
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 720
    return-void
.end method

.method public setBaseLayer(I)V
    .locals 0
    .param p1, "layer"    # I

    .prologue
    .line 763
    invoke-static {p1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setBaseLayer(I)V

    .line 764
    return-void
.end method

.method public teardown()V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    .line 739
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    .line 740
    return-void
.end method
