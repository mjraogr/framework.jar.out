.class Landroid/webkit/CallbackProxy;
.super Landroid/os/Handler;
.source "CallbackProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/CallbackProxy$1;,
        Landroid/webkit/CallbackProxy$UploadFile;,
        Landroid/webkit/CallbackProxy$UploadFileMessageData;,
        Landroid/webkit/CallbackProxy$JsResultReceiver;,
        Landroid/webkit/CallbackProxy$ResultTransport;
    }
.end annotation


# static fields
.field private static final ADD_HISTORY_ITEM:I = 0x87

.field private static final ADD_MESSAGE_TO_CONSOLE:I = 0x81

.field private static final ASYNC_KEYEVENTS:I = 0x74

.field private static final AUTH_CREDENTIALS:I = 0x89

.field private static final AUTH_REQUEST:I = 0x68

.field private static final AUTO_LOGIN:I = 0x8c

.field private static final CLIENT_CERT_REQUEST:I = 0x8d

.field private static final CLOSE_WINDOW:I = 0x6e

.field private static final CREATE_WINDOW:I = 0x6d

.field private static final DOWNLOAD_FILE:I = 0x76

.field private static final EXCEEDED_DATABASE_QUOTA:I = 0x7e

.field private static final GEOLOCATION_PERMISSIONS_HIDE_PROMPT:I = 0x83

.field private static final GEOLOCATION_PERMISSIONS_SHOW_PROMPT:I = 0x82

.field private static final GET_VISITED_HISTORY:I = 0x85

.field private static final HISTORY_INDEX_CHANGED:I = 0x88

.field private static final JS_DIALOG:I = 0x70

.field private static final JS_TIMEOUT:I = 0x80

.field private static final LOAD_RESOURCE:I = 0x6c

.field static final LOGTAG:Ljava/lang/String; = "WebViewCallback"

.field private static final NOTIFY:I = 0xc8

.field private static final OPEN_FILE_CHOOSER:I = 0x86

.field private static final OVERRIDE_URL:I = 0x67

.field private static final PAGE_FINISHED:I = 0x79

.field private static final PAGE_STARTED:I = 0x64

.field private static final PERF_PROBE:Z = false

.field private static final PROCEEDED_AFTER_SSL_ERROR:I = 0x90

.field private static final PROGRESS:I = 0x6a

.field private static final REACHED_APPCACHE_MAXSIZE:I = 0x7f

.field private static final RECEIVED_CERTIFICATE:I = 0x7c

.field private static final RECEIVED_ICON:I = 0x65

.field private static final RECEIVED_TITLE:I = 0x66

.field private static final RECEIVED_TOUCH_ICON_URL:I = 0x84

.field private static final REPORT_ERROR:I = 0x77

.field private static final REQUEST_FOCUS:I = 0x7a

.field private static final RESEND_POST_DATA:I = 0x78

.field private static final SAVE_PASSWORD:I = 0x6f

.field private static final SCALE_CHANGED:I = 0x7b

.field private static final SSL_ERROR:I = 0x69

.field private static final SWITCH_OUT_HISTORY:I = 0x7d

.field private static final TRACE:Z = false

.field private static final UPDATE_VISITED:I = 0x6b


# instance fields
.field private final mBackForwardList:Landroid/webkit/WebBackForwardListClassic;

.field private mBlockMessages:Z

.field private final mContext:Landroid/content/Context;

.field private volatile mDownloadListener:Landroid/webkit/DownloadListener;

.field private volatile mLatestProgress:I

.field private mProgressUpdatePending:Z

.field private volatile mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

.field private volatile mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebCoreIdleTime:J

.field private mWebCoreThreadTime:J

.field private final mWebView:Landroid/webkit/WebViewClassic;

.field private volatile mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "w"    # Landroid/webkit/WebViewClassic;

    .prologue
    .line 176
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 68
    const/16 v0, 0x64

    iput v0, p0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    .line 178
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    .line 179
    iput-object p2, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    .line 180
    new-instance v0, Landroid/webkit/WebBackForwardListClassic;

    invoke-direct {v0, p0}, Landroid/webkit/WebBackForwardListClassic;-><init>(Landroid/webkit/CallbackProxy;)V

    iput-object v0, p0, Landroid/webkit/CallbackProxy;->mBackForwardList:Landroid/webkit/WebBackForwardListClassic;

    .line 181
    return-void
.end method

.method private declared-synchronized sendMessageToUiThreadSync(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1442
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1443
    invoke-static {}, Landroid/webkit/WebCoreThreadWatchdog;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1445
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1450
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/webkit/WebCoreThreadWatchdog;->resume()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1451
    monitor-exit p0

    return-void

    .line 1446
    :catch_0
    move-exception v0

    .line 1447
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "WebViewCallback"

    const-string v2, "Caught exception waiting for synchronous UI message to be processed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    const-string v1, "WebViewCallback"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1442
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "sourceID"    # Ljava/lang/String;
    .param p4, "msgLevel"    # I

    .prologue
    .line 1341
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_0

    .line 1351
    :goto_0
    return-void

    .line 1345
    :cond_0
    const/16 v1, 0x81

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1346
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "sourceID"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "lineNumber"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1349
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "msgLevel"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1350
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected declared-synchronized blockMessages()V
    .locals 1

    .prologue
    .line 184
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/webkit/CallbackProxy;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createWindow(ZZ)Landroid/webkit/BrowserFrame;
    .locals 9
    .param p1, "dialog"    # Z
    .param p2, "userGesture"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1085
    iget-object v7, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v7, :cond_0

    move-object v4, v6

    .line 1105
    :goto_0
    return-object v4

    .line 1089
    :cond_0
    new-instance v2, Landroid/webkit/WebView$WebViewTransport;

    iget-object v7, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v7}, Landroid/webkit/WebView$WebViewTransport;-><init>(Landroid/webkit/WebView;)V

    .line 1091
    .local v2, "transport":Landroid/webkit/WebView$WebViewTransport;
    const/16 v7, 0xc8

    invoke-virtual {p0, v7}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1092
    .local v1, "msg":Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1093
    const/16 v8, 0x6d

    if-eqz p1, :cond_1

    move v7, v4

    :goto_1
    if-eqz p2, :cond_2

    :goto_2
    invoke-virtual {p0, v8, v7, v4, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/webkit/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1095
    invoke-virtual {v2}, Landroid/webkit/WebView$WebViewTransport;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-static {v4}, Landroid/webkit/WebViewClassic;->fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;

    move-result-object v3

    .line 1096
    .local v3, "w":Landroid/webkit/WebViewClassic;
    if-eqz v3, :cond_3

    .line 1097
    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    .line 1100
    .local v0, "core":Landroid/webkit/WebViewCore;
    if-eqz v0, :cond_3

    .line 1101
    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->initializeSubwindow()V

    .line 1102
    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    move-result-object v4

    goto :goto_0

    .end local v0    # "core":Landroid/webkit/WebViewCore;
    .end local v3    # "w":Landroid/webkit/WebViewClassic;
    :cond_1
    move v7, v5

    .line 1093
    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    .restart local v3    # "w":Landroid/webkit/WebViewClassic;
    :cond_3
    move-object v4, v6

    .line 1105
    goto :goto_0
.end method

.method public doUpdateVisitedHistory(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isReload"    # Z

    .prologue
    const/4 v1, 0x0

    .line 938
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 942
    :goto_0
    return-void

    .line 941
    :cond_0
    const/16 v2, 0x6b

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getBackForwardList()Landroid/webkit/WebBackForwardListClassic;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mBackForwardList:Landroid/webkit/WebBackForwardListClassic;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 744
    iget v0, p0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    return v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1365
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_0

    .line 1371
    :goto_0
    return-void

    .line 1368
    :cond_0
    const/16 v1, 0x85

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1369
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1370
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 61
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 302
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/CallbackProxy;->messagesBlocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 303
    monitor-enter p0

    .line 304
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 305
    monitor-exit p0

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 305
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 308
    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 310
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 311
    .local v59, "startedUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v59

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewClassic;->onPageStarted(Ljava/lang/String;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 314
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    move-object/from16 v0, v59

    invoke-virtual {v10, v11, v0, v4}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 320
    .end local v59    # "startedUrl":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/String;

    .line 321
    .local v35, "finishedUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewClassic;->onPageFinished(Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 324
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v4, v10, v0}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    .end local v35    # "finishedUrl":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 331
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11, v4}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 336
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 338
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_2

    const/4 v10, 0x1

    :goto_1
    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v4, v10}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 344
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 346
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v10, v11, v4}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 352
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 353
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v52, v0

    .line 354
    .local v52, "reasonCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "description"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 355
    .local v32, "description":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "failingUrl"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 357
    .local v34, "failUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    move/from16 v0, v52

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    invoke-virtual {v4, v10, v0, v1, v2}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 363
    .end local v32    # "description":Ljava/lang/String;
    .end local v34    # "failUrl":Ljava/lang/String;
    .end local v52    # "reasonCode":I
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "resend"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v55

    check-cast v55, Landroid/os/Message;

    .line 365
    .local v55, "resend":Landroid/os/Message;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "dontResend"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v33

    check-cast v33, Landroid/os/Message;

    .line 367
    .local v33, "dontResend":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_3

    .line 369
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    move-object/from16 v0, v33

    move-object/from16 v1, v55

    invoke-virtual {v4, v10, v0, v1}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 372
    :cond_3
    invoke-virtual/range {v33 .. v33}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 377
    .end local v33    # "dontResend":Landroid/os/Message;
    .end local v55    # "resend":Landroid/os/Message;
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 378
    .local v49, "overrideUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v48

    .line 379
    .local v48, "override":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Landroid/webkit/CallbackProxy$ResultTransport;

    .line 381
    .local v56, "result":Landroid/webkit/CallbackProxy$ResultTransport;, "Landroid/webkit/CallbackProxy$ResultTransport<Ljava/lang/Boolean;>;"
    monitor-enter p0

    .line 382
    :try_start_1
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Landroid/webkit/CallbackProxy$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 383
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 384
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 388
    .end local v48    # "override":Z
    .end local v49    # "overrideUrl":Ljava/lang/String;
    .end local v56    # "result":Landroid/webkit/CallbackProxy$ResultTransport;, "Landroid/webkit/CallbackProxy$ResultTransport<Ljava/lang/Boolean;>;"
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 389
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/webkit/HttpAuthHandler;

    .line 390
    .local v36, "handler":Landroid/webkit/HttpAuthHandler;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "host"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 391
    .local v38, "host":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "realm"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 393
    .local v51, "realm":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v51

    invoke-virtual {v4, v10, v0, v1, v2}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 399
    .end local v36    # "handler":Landroid/webkit/HttpAuthHandler;
    .end local v38    # "host":Ljava/lang/String;
    .end local v51    # "realm":Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 400
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/util/HashMap;

    .line 403
    .local v42, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v20

    const-string v4, "handler"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/SslErrorHandler;

    const-string v10, "error"

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/http/SslError;

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v4, v10}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto/16 :goto_0

    .line 410
    .end local v42    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    instance-of v4, v4, Landroid/webkit/WebViewClientClassicExt;

    if-eqz v4, :cond_0

    .line 412
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    check-cast v4, Landroid/webkit/WebViewClientClassicExt;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/http/SslError;

    invoke-virtual {v4, v11, v10}, Landroid/webkit/WebViewClientClassicExt;->onProceededAfterSslError(Landroid/webkit/WebView;Landroid/net/http/SslError;)V

    goto/16 :goto_0

    .line 419
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    instance-of v4, v4, Landroid/webkit/WebViewClientClassicExt;

    if-eqz v4, :cond_0

    .line 421
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/util/HashMap;

    .line 422
    .restart local v42    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    check-cast v4, Landroid/webkit/WebViewClientClassicExt;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v20

    const-string v10, "handler"

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/webkit/ClientCertRequestHandler;

    const-string v11, "host_and_port"

    move-object/from16 v0, v42

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v10, v11}, Landroid/webkit/WebViewClientClassicExt;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 433
    .end local v42    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_c
    monitor-enter p0

    .line 434
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_4

    .line 436
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    invoke-virtual {v4, v10, v11}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 439
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/CallbackProxy;->mProgressUpdatePending:Z

    .line 440
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v4

    .line 444
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 445
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 447
    .local v5, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v10, v11, v5, v4}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 453
    .end local v5    # "url":Ljava/lang/String;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 454
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 456
    .restart local v5    # "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    invoke-virtual {v4, v10, v5}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 461
    .end local v5    # "url":Ljava/lang/String;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    if-eqz v4, :cond_0

    .line 462
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 463
    .restart local v5    # "url":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "userAgent"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 464
    .local v6, "userAgent":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "contentDisposition"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 466
    .local v7, "contentDisposition":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "mimetype"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 467
    .local v8, "mimetype":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "referer"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 468
    .local v9, "referer":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "contentLength"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    .line 471
    .local v30, "contentLength":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    instance-of v4, v4, Landroid/webkit/BrowserDownloadListener;

    if-eqz v4, :cond_6

    .line 472
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    check-cast v4, Landroid/webkit/BrowserDownloadListener;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual/range {v4 .. v11}, Landroid/webkit/BrowserDownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 475
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    move-object v14, v8

    invoke-interface/range {v10 .. v16}, Landroid/webkit/DownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 482
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "userAgent":Ljava/lang/String;
    .end local v7    # "contentDisposition":Ljava/lang/String;
    .end local v8    # "mimetype":Ljava/lang/String;
    .end local v9    # "referer":Ljava/lang/String;
    .end local v30    # "contentLength":Ljava/lang/Long;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v23

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_8

    const/4 v4, 0x1

    move v10, v4

    :goto_3
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v11, 0x1

    if-ne v4, v11, :cond_9

    const/4 v4, 0x1

    move v11, v4

    :goto_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10, v11, v4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 487
    monitor-enter p0

    .line 488
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 489
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 491
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->dismissZoomControl()V

    goto/16 :goto_0

    .line 484
    :cond_8
    const/4 v4, 0x0

    move v10, v4

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    move v11, v4

    goto :goto_4

    .line 489
    :catchall_3
    move-exception v4

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v4

    .line 496
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 498
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 503
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 505
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 510
    :sswitch_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v28

    .line 511
    .local v28, "bundle":Landroid/os/Bundle;
    const-string v4, "host"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 512
    .local v57, "schemePlusHost":Ljava/lang/String;
    const-string/jumbo v4, "username"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 513
    .local v60, "username":Ljava/lang/String;
    const-string/jumbo v4, "password"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 516
    .local v50, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    move-object/from16 v2, v50

    invoke-virtual {v10, v0, v1, v2, v4}, Landroid/webkit/WebViewClassic;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 518
    monitor-enter p0

    .line 519
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 520
    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v4

    .line 525
    .end local v28    # "bundle":Landroid/os/Bundle;
    .end local v50    # "password":Ljava/lang/String;
    .end local v57    # "schemePlusHost":Ljava/lang/String;
    .end local v60    # "username":Ljava/lang/String;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 527
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/KeyEvent;

    invoke-virtual {v10, v11, v4}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 533
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 534
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/util/HashMap;

    .line 536
    .restart local v42    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "databaseIdentifier"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 538
    .local v12, "databaseIdentifier":Ljava/lang/String;
    const-string/jumbo v4, "url"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 539
    .restart local v5    # "url":Ljava/lang/String;
    const-string/jumbo v4, "quota"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 541
    .local v13, "quota":J
    const-string/jumbo v4, "totalQuota"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 543
    .local v17, "totalQuota":J
    const-string v4, "estimatedDatabaseSize"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 545
    .local v15, "estimatedDatabaseSize":J
    const-string/jumbo v4, "quotaUpdater"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/webkit/WebStorage$QuotaUpdater;

    .line 549
    .local v19, "quotaUpdater":Landroid/webkit/WebStorage$QuotaUpdater;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v11, v5

    invoke-virtual/range {v10 .. v19}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto/16 :goto_0

    .line 556
    .end local v5    # "url":Ljava/lang/String;
    .end local v12    # "databaseIdentifier":Ljava/lang/String;
    .end local v13    # "quota":J
    .end local v15    # "estimatedDatabaseSize":J
    .end local v17    # "totalQuota":J
    .end local v19    # "quotaUpdater":Landroid/webkit/WebStorage$QuotaUpdater;
    .end local v42    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 557
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/util/HashMap;

    .line 559
    .restart local v42    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "requiredStorage"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 561
    .local v21, "requiredStorage":J
    const-string/jumbo v4, "quota"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 563
    .restart local v13    # "quota":J
    const-string/jumbo v4, "quotaUpdater"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/webkit/WebStorage$QuotaUpdater;

    .line 567
    .restart local v19    # "quotaUpdater":Landroid/webkit/WebStorage$QuotaUpdater;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v20, v0

    move-wide/from16 v23, v13

    move-object/from16 v25, v19

    invoke-virtual/range {v20 .. v25}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto/16 :goto_0

    .line 573
    .end local v13    # "quota":J
    .end local v19    # "quotaUpdater":Landroid/webkit/WebStorage$QuotaUpdater;
    .end local v21    # "requiredStorage":J
    .end local v42    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 574
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/util/HashMap;

    .line 576
    .restart local v42    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "origin"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/String;

    .line 577
    .local v47, "origin":Ljava/lang/String;
    const-string v4, "callback"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/webkit/GeolocationPermissions$Callback;

    .line 581
    .local v29, "callback":Landroid/webkit/GeolocationPermissions$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, v47

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    goto/16 :goto_0

    .line 587
    .end local v29    # "callback":Landroid/webkit/GeolocationPermissions$Callback;
    .end local v42    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v47    # "origin":Ljava/lang/String;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 589
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v4}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto/16 :goto_0

    .line 594
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 595
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v53, v0

    check-cast v53, Landroid/webkit/CallbackProxy$JsResultReceiver;

    .line 596
    .local v53, "receiver":Landroid/webkit/CallbackProxy$JsResultReceiver;
    new-instance v37, Landroid/webkit/JsDialogHelper;

    move-object/from16 v0, v53

    iget-object v4, v0, Landroid/webkit/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkit/JsPromptResult;

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Landroid/webkit/JsDialogHelper;-><init>(Landroid/webkit/JsPromptResult;Landroid/os/Message;)V

    .line 598
    .local v37, "helper":Landroid/webkit/JsDialogHelper;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v10}, Landroid/webkit/JsDialogHelper;->invokeCallback(Landroid/webkit/WebChromeClient;Landroid/webkit/WebView;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 599
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/webkit/JsDialogHelper;->showDialog(Landroid/content/Context;)V

    .line 601
    :cond_a
    invoke-virtual/range {v53 .. v53}, Landroid/webkit/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    .line 606
    .end local v37    # "helper":Landroid/webkit/JsDialogHelper;
    .end local v53    # "receiver":Landroid/webkit/CallbackProxy$JsResultReceiver;
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 607
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v53, v0

    check-cast v53, Landroid/webkit/CallbackProxy$JsResultReceiver;

    .line 608
    .restart local v53    # "receiver":Landroid/webkit/CallbackProxy$JsResultReceiver;
    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/webkit/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkit/JsPromptResult;

    move-object/from16 v54, v0

    .line 610
    .local v54, "res":Landroid/webkit/JsResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v4}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 611
    invoke-virtual/range {v54 .. v54}, Landroid/webkit/JsResult;->confirm()V

    .line 615
    :goto_5
    invoke-virtual/range {v53 .. v53}, Landroid/webkit/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    .line 613
    :cond_b
    invoke-virtual/range {v54 .. v54}, Landroid/webkit/JsResult;->cancel()V

    goto :goto_5

    .line 620
    .end local v53    # "receiver":Landroid/webkit/CallbackProxy$JsResultReceiver;
    .end local v54    # "res":Landroid/webkit/JsResult;
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/http/SslCertificate;

    invoke-virtual {v10, v4}, Landroid/webkit/WebViewClassic;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto/16 :goto_0

    .line 624
    :sswitch_1c
    monitor-enter p0

    .line 625
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 626
    monitor-exit p0

    goto/16 :goto_0

    :catchall_5
    move-exception v4

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v4

    .line 630
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 632
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v20, "old"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v20

    const-string/jumbo v23, "new"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v10, v11, v0}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    goto/16 :goto_0

    .line 638
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    goto/16 :goto_0

    .line 642
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 645
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "message"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 646
    .local v43, "message":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "sourceID"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 647
    .local v58, "sourceID":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "lineNumber"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v39

    .line 648
    .local v39, "lineNumber":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "msgLevel"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v45

    .line 649
    .local v45, "msgLevel":I
    invoke-static {}, Landroid/webkit/ConsoleMessage$MessageLevel;->values()[Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v4

    array-length v0, v4

    move/from16 v46, v0

    .line 651
    .local v46, "numberOfMessageLevels":I
    if-ltz v45, :cond_c

    move/from16 v0, v45

    move/from16 v1, v46

    if-lt v0, v1, :cond_d

    .line 652
    :cond_c
    const/16 v45, 0x0

    .line 655
    :cond_d
    invoke-static {}, Landroid/webkit/ConsoleMessage$MessageLevel;->values()[Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v4

    aget-object v44, v4, v45

    .line 659
    .local v44, "messageLevel":Landroid/webkit/ConsoleMessage$MessageLevel;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    new-instance v10, Landroid/webkit/ConsoleMessage;

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    move/from16 v2, v39

    move-object/from16 v3, v44

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/webkit/ConsoleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/ConsoleMessage$MessageLevel;)V

    invoke-virtual {v4, v10}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 663
    const-string v41, "Web Console"

    .line 664
    .local v41, "logTag":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " at "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v58

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ":"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 666
    .local v40, "logMessage":Ljava/lang/String;
    sget-object v4, Landroid/webkit/CallbackProxy$1;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

    invoke-virtual/range {v44 .. v44}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v10

    aget v4, v4, v10

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 668
    :pswitch_0
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 671
    :pswitch_1
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 674
    :pswitch_2
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 677
    :pswitch_3
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 680
    :pswitch_4
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 688
    .end local v39    # "lineNumber":I
    .end local v40    # "logMessage":Ljava/lang/String;
    .end local v41    # "logTag":Ljava/lang/String;
    .end local v43    # "message":Ljava/lang/String;
    .end local v44    # "messageLevel":Landroid/webkit/ConsoleMessage$MessageLevel;
    .end local v45    # "msgLevel":I
    .end local v46    # "numberOfMessageLevels":I
    .end local v58    # "sourceID":Ljava/lang/String;
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 690
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkit/ValueCallback;

    invoke-virtual {v10, v4}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    goto/16 :goto_0

    .line 695
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 697
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/webkit/CallbackProxy$UploadFileMessageData;

    .line 698
    .local v31, "data":Landroid/webkit/CallbackProxy$UploadFileMessageData;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual/range {v31 .. v31}, Landroid/webkit/CallbackProxy$UploadFileMessageData;->getUploadFile()Landroid/webkit/CallbackProxy$UploadFile;

    move-result-object v10

    invoke-virtual/range {v31 .. v31}, Landroid/webkit/CallbackProxy$UploadFileMessageData;->getAcceptType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v31 .. v31}, Landroid/webkit/CallbackProxy$UploadFileMessageData;->getCapture()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v10, v11, v0}, Landroid/webkit/WebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 704
    .end local v31    # "data":Landroid/webkit/CallbackProxy$UploadFileMessageData;
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    if-eqz v4, :cond_0

    .line 706
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkit/WebHistoryItem;

    invoke-virtual {v10, v4}, Landroid/webkit/WebBackForwardListClient;->onNewHistoryItem(Landroid/webkit/WebHistoryItem;)V

    goto/16 :goto_0

    .line 712
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    if-eqz v4, :cond_0

    .line 713
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkit/WebHistoryItem;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v4, v11}, Landroid/webkit/WebBackForwardListClient;->onIndexChanged(Landroid/webkit/WebHistoryItem;I)V

    goto/16 :goto_0

    .line 718
    :sswitch_24
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "host"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 719
    .restart local v38    # "host":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "realm"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 720
    .restart local v51    # "realm":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "username"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 721
    .restart local v60    # "username":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "password"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 722
    .restart local v50    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    move-object/from16 v2, v60

    move-object/from16 v3, v50

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/webkit/WebViewClassic;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 727
    .end local v38    # "host":Ljava/lang/String;
    .end local v50    # "password":Ljava/lang/String;
    .end local v51    # "realm":Ljava/lang/String;
    .end local v60    # "username":Ljava/lang/String;
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 728
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "realm"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 729
    .restart local v51    # "realm":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "account"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 730
    .local v26, "account":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "args"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 732
    .local v27, "args":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    move-object/from16 v0, v51

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v4, v10, v0, v1, v2}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_2
        0x66 -> :sswitch_4
        0x67 -> :sswitch_7
        0x68 -> :sswitch_8
        0x69 -> :sswitch_9
        0x6a -> :sswitch_c
        0x6b -> :sswitch_d
        0x6c -> :sswitch_e
        0x6d -> :sswitch_10
        0x6e -> :sswitch_12
        0x6f -> :sswitch_13
        0x70 -> :sswitch_19
        0x74 -> :sswitch_14
        0x76 -> :sswitch_f
        0x77 -> :sswitch_5
        0x78 -> :sswitch_6
        0x79 -> :sswitch_1
        0x7a -> :sswitch_11
        0x7b -> :sswitch_1d
        0x7c -> :sswitch_1b
        0x7d -> :sswitch_1e
        0x7e -> :sswitch_15
        0x7f -> :sswitch_16
        0x80 -> :sswitch_1a
        0x81 -> :sswitch_1f
        0x82 -> :sswitch_17
        0x83 -> :sswitch_18
        0x84 -> :sswitch_3
        0x85 -> :sswitch_20
        0x86 -> :sswitch_21
        0x87 -> :sswitch_22
        0x88 -> :sswitch_23
        0x89 -> :sswitch_24
        0x8c -> :sswitch_25
        0x8d -> :sswitch_b
        0x90 -> :sswitch_a
        0xc8 -> :sswitch_1c
    .end sparse-switch

    .line 666
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected declared-synchronized messagesBlocked()Z
    .locals 1

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/CallbackProxy;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCloseWindow(Landroid/webkit/WebViewClassic;)V
    .locals 1
    .param p1, "window"    # Landroid/webkit/WebViewClassic;

    .prologue
    .line 1121
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1125
    :goto_0
    return-void

    .line 1124
    :cond_0
    const/16 v0, 0x6e

    invoke-virtual {p0, v0, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "referer"    # Ljava/lang/String;
    .param p6, "contentLength"    # J

    .prologue
    .line 1007
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    if-nez v2, :cond_0

    .line 1009
    const/4 v2, 0x0

    .line 1021
    :goto_0
    return v2

    .line 1012
    :cond_0
    const/16 v2, 0x76

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1013
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1014
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const-string/jumbo v2, "userAgent"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    const-string/jumbo v2, "mimetype"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const-string/jumbo v2, "referer"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    const-string v2, "contentLength"

    invoke-virtual {v0, v2, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1019
    const-string v2, "contentDisposition"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1021
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "databaseIdentifier"    # Ljava/lang/String;
    .param p3, "quota"    # J
    .param p5, "estimatedDatabaseSize"    # J
    .param p7, "totalQuota"    # J
    .param p9, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 1247
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1250
    invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 1264
    :goto_0
    return-void

    .line 1254
    :cond_0
    const/16 v2, 0x7e

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1255
    .local v0, "exceededQuota":Landroid/os/Message;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1256
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "databaseIdentifier"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    const-string/jumbo v2, "quota"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    const-string v2, "estimatedDatabaseSize"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    const-string/jumbo v2, "totalQuota"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    const-string/jumbo v2, "quotaUpdater"

    invoke-virtual {v1, v2, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1263
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V
    .locals 3
    .param p1, "dontResend"    # Landroid/os/Message;
    .param p2, "resend"    # Landroid/os/Message;

    .prologue
    .line 851
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_0

    .line 852
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 861
    :goto_0
    return-void

    .line 856
    :cond_0
    const/16 v2, 0x78

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 857
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 858
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "resend"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 859
    const-string v2, "dontResend"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 860
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 2

    .prologue
    .line 1321
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_0

    .line 1327
    :goto_0
    return-void

    .line 1325
    :cond_0
    const/16 v1, 0x83

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1326
    .local v0, "hideMessage":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 3
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 1303
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1314
    :goto_0
    return-void

    .line 1307
    :cond_0
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1309
    .local v1, "showMessage":Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1310
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "origin"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    const-string v2, "callback"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1313
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onIndexChanged(Landroid/webkit/WebHistoryItem;I)V
    .locals 3
    .param p1, "item"    # Landroid/webkit/WebHistoryItem;
    .param p2, "index"    # I

    .prologue
    .line 1434
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    if-nez v1, :cond_0

    .line 1439
    :goto_0
    return-void

    .line 1437
    :cond_0
    const/16 v1, 0x88

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1438
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onJsAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1170
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1179
    :goto_0
    return-void

    .line 1173
    :cond_0
    new-instance v1, Landroid/webkit/CallbackProxy$JsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkit/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/CallbackProxy$1;)V

    .line 1174
    .local v1, "result":Landroid/webkit/CallbackProxy$JsResultReceiver;
    const/16 v2, 0x70

    invoke-virtual {p0, v2, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1175
    .local v0, "alert":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1178
    invoke-direct {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1215
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1216
    const/4 v2, 0x1

    .line 1224
    :goto_0
    return v2

    .line 1218
    :cond_0
    new-instance v0, Landroid/webkit/CallbackProxy$JsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/webkit/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/CallbackProxy$1;)V

    .line 1219
    .local v0, "result":Landroid/webkit/CallbackProxy$JsResultReceiver;
    const/16 v2, 0x70

    invoke-virtual {p0, v2, v0}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1220
    .local v1, "unload":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "type"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1223
    invoke-direct {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1224
    iget-object v2, v0, Landroid/webkit/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {v2}, Landroid/webkit/JsPromptResult;->getResult()Z

    move-result v2

    goto :goto_0
.end method

.method public onJsConfirm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1184
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1185
    const/4 v2, 0x0

    .line 1193
    :goto_0
    return v2

    .line 1187
    :cond_0
    new-instance v1, Landroid/webkit/CallbackProxy$JsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkit/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/CallbackProxy$1;)V

    .line 1188
    .local v1, "result":Landroid/webkit/CallbackProxy$JsResultReceiver;
    const/16 v2, 0x70

    invoke-virtual {p0, v2, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1189
    .local v0, "confirm":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1192
    invoke-direct {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1193
    iget-object v2, v1, Landroid/webkit/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {v2}, Landroid/webkit/JsPromptResult;->getResult()Z

    move-result v2

    goto :goto_0
.end method

.method public onJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1199
    iget-object v3, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v3, :cond_0

    .line 1209
    :goto_0
    return-object v2

    .line 1202
    :cond_0
    new-instance v1, Landroid/webkit/CallbackProxy$JsResultReceiver;

    invoke-direct {v1, p0, v2}, Landroid/webkit/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/CallbackProxy$1;)V

    .line 1203
    .local v1, "result":Landroid/webkit/CallbackProxy$JsResultReceiver;
    const/16 v2, 0x70

    invoke-virtual {p0, v2, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1204
    .local v0, "prompt":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "type"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1208
    invoke-direct {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1209
    iget-object v2, v1, Landroid/webkit/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {v2}, Landroid/webkit/JsPromptResult;->getStringResult()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onJsTimeout()Z
    .locals 3

    .prologue
    .line 1355
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1356
    const/4 v2, 0x1

    .line 1361
    :goto_0
    return v2

    .line 1358
    :cond_0
    new-instance v0, Landroid/webkit/CallbackProxy$JsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/webkit/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/CallbackProxy$1;)V

    .line 1359
    .local v0, "result":Landroid/webkit/CallbackProxy$JsResultReceiver;
    const/16 v2, 0x80

    invoke-virtual {p0, v2, v0}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1360
    .local v1, "timeout":Landroid/os/Message;
    invoke-direct {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1361
    iget-object v2, v0, Landroid/webkit/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {v2}, Landroid/webkit/JsPromptResult;->getResult()Z

    move-result v2

    goto :goto_0
.end method

.method onNewHistoryItem(Landroid/webkit/WebHistoryItem;)V
    .locals 2
    .param p1, "item"    # Landroid/webkit/WebHistoryItem;

    .prologue
    .line 1426
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    if-nez v1, :cond_0

    .line 1431
    :goto_0
    return-void

    .line 1429
    :cond_0
    const/16 v1, 0x87

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1430
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 822
    const/16 v1, 0x79

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 823
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 824
    return-void
.end method

.method public onPageStarted(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 807
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 808
    .local v0, "msg":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 809
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 811
    return-void
.end method

.method public onProceededAfterSslError(Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 907
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    instance-of v1, v1, Landroid/webkit/WebViewClientClassicExt;

    if-nez v1, :cond_1

    .line 913
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    const/16 v1, 0x90

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 911
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 912
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onProgressChanged(I)V
    .locals 1
    .param p1, "newProgress"    # I

    .prologue
    .line 1065
    monitor-enter p0

    .line 1068
    :try_start_0
    iget v0, p0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    if-ne v0, p1, :cond_0

    .line 1069
    monitor-exit p0

    .line 1080
    :goto_0
    return-void

    .line 1071
    :cond_0
    iput p1, p0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    .line 1072
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_1

    .line 1073
    monitor-exit p0

    goto :goto_0

    .line 1079
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1075
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/CallbackProxy;->mProgressUpdatePending:Z

    if-nez v0, :cond_2

    .line 1076
    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendEmptyMessage(I)Z

    .line 1077
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/CallbackProxy;->mProgressUpdatePending:Z

    .line 1079
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 4
    .param p1, "requiredStorage"    # J
    .param p3, "quota"    # J
    .param p5, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 1278
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1281
    invoke-interface {p5, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 1292
    :goto_0
    return-void

    .line 1285
    :cond_0
    const/16 v2, 0x7f

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1286
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1287
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "requiredStorage"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    const-string/jumbo v2, "quota"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    const-string/jumbo v2, "quotaUpdater"

    invoke-virtual {v0, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1291
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1
    .param p1, "certificate"    # Landroid/net/http/SslCertificate;

    .prologue
    .line 932
    const/16 v0, 0x7c

    invoke-virtual {p0, v0, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 933
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V
    .locals 3
    .param p1, "handler"    # Landroid/webkit/ClientCertRequestHandler;
    .param p2, "host_and_port"    # Ljava/lang/String;

    .prologue
    .line 918
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    instance-of v2, v2, Landroid/webkit/WebViewClientClassicExt;

    if-nez v2, :cond_1

    .line 919
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/ClientCertRequestHandler;->cancel()V

    .line 928
    :goto_0
    return-void

    .line 922
    :cond_1
    const/16 v2, 0x8d

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 923
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 924
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "handler"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    const-string v2, "host_and_port"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 927
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 836
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v1, :cond_0

    .line 845
    :goto_0
    return-void

    .line 840
    :cond_0
    const/16 v1, 0x77

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 841
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 842
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "failingUrl"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedHttpAuthCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 1051
    const/16 v1, 0x89

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1052
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "realm"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "username"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1057
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "realmName"    # Ljava/lang/String;

    .prologue
    .line 881
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v1, :cond_0

    .line 882
    invoke-virtual {p1}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 889
    :goto_0
    return-void

    .line 885
    :cond_0
    const/16 v1, 0x68

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 886
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "realm"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1130
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mBackForwardList:Landroid/webkit/WebBackForwardListClassic;

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardListClassic;->getCurrentItem()Landroid/webkit/WebHistoryItemClassic;

    move-result-object v0

    .line 1131
    .local v0, "i":Landroid/webkit/WebHistoryItemClassic;
    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {v0, p1}, Landroid/webkit/WebHistoryItemClassic;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 1136
    :cond_0
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_1

    .line 1140
    :goto_0
    return-void

    .line 1139
    :cond_1
    const/16 v1, 0x65

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onReceivedLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;

    .prologue
    .line 983
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_0

    .line 992
    :goto_0
    return-void

    .line 986
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 987
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 988
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "realm"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string v2, "account"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const-string v2, "args"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .param p1, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p2, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 894
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_0

    .line 895
    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 904
    :goto_0
    return-void

    .line 898
    :cond_0
    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 899
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 900
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "handler"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    const-string v2, "error"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 903
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1161
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1165
    :goto_0
    return-void

    .line 1164
    :cond_0
    const/16 v0, 0x66

    invoke-virtual {p0, v0, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onReceivedTouchIconUrl(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "precomposed"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1145
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mBackForwardList:Landroid/webkit/WebBackForwardListClassic;

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardListClassic;->getCurrentItem()Landroid/webkit/WebHistoryItemClassic;

    move-result-object v0

    .line 1146
    .local v0, "i":Landroid/webkit/WebHistoryItemClassic;
    if-eqz v0, :cond_0

    .line 1147
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebHistoryItemClassic;->setTouchIconUrl(Ljava/lang/String;Z)V

    .line 1151
    :cond_0
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_1

    .line 1156
    :goto_0
    return-void

    .line 1154
    :cond_1
    const/16 v3, 0x84

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v3, v1, v2, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onRequestFocus()V
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1116
    :goto_0
    return-void

    .line 1115
    :cond_0
    const/16 v0, 0x7a

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 3
    .param p1, "schemePlusHost"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "resumeMsg"    # Landroid/os/Message;

    .prologue
    .line 1037
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object p4

    .line 1039
    const/16 v2, 0x6f

    invoke-virtual {p0, v2, p4}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1040
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1041
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "host"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string/jumbo v2, "username"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    const-string/jumbo v2, "password"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    invoke-direct {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1046
    const/4 v2, 0x0

    return v2
.end method

.method public onScaleChanged(FF)V
    .locals 3
    .param p1, "oldScale"    # F
    .param p2, "newScale"    # F

    .prologue
    .line 970
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_0

    .line 978
    :goto_0
    return-void

    .line 973
    :cond_0
    const/16 v2, 0x7b

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 974
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 975
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "old"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 976
    const-string/jumbo v2, "new"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 977
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onTooManyRedirects(Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "cancelMsg"    # Landroid/os/Message;
    .param p2, "continueMsg"    # Landroid/os/Message;

    .prologue
    .line 830
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 961
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 965
    :goto_0
    return-void

    .line 964
    :cond_0
    const/16 v0, 0x74

    invoke-virtual {p0, v0, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method openFileChooser(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p1, "acceptType"    # Ljava/lang/String;
    .param p2, "capture"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1414
    iget-object v4, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v4, :cond_0

    .line 1422
    :goto_0
    return-object v3

    .line 1417
    :cond_0
    const/16 v4, 0x86

    invoke-virtual {p0, v4}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1418
    .local v1, "myMessage":Landroid/os/Message;
    new-instance v2, Landroid/webkit/CallbackProxy$UploadFile;

    invoke-direct {v2, p0, v3}, Landroid/webkit/CallbackProxy$UploadFile;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/CallbackProxy$1;)V

    .line 1419
    .local v2, "uploadFile":Landroid/webkit/CallbackProxy$UploadFile;
    new-instance v0, Landroid/webkit/CallbackProxy$UploadFileMessageData;

    invoke-direct {v0, v2, p1, p2}, Landroid/webkit/CallbackProxy$UploadFileMessageData;-><init>(Landroid/webkit/CallbackProxy$UploadFile;Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    .local v0, "data":Landroid/webkit/CallbackProxy$UploadFileMessageData;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1421
    invoke-direct {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1422
    invoke-virtual {v2}, Landroid/webkit/CallbackProxy$UploadFile;->getResult()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 0
    .param p1, "client"    # Landroid/webkit/DownloadListener;

    .prologue
    .line 234
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    .line 235
    return-void
.end method

.method setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V
    .locals 0
    .param p1, "client"    # Landroid/webkit/WebBackForwardListClient;

    .prologue
    .line 246
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    .line 247
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 0
    .param p1, "client"    # Landroid/webkit/WebChromeClient;

    .prologue
    .line 218
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 219
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 202
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 203
    return-void
.end method

.method shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 945
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v1, :cond_1

    .line 946
    const/4 v0, 0x0

    .line 955
    :cond_0
    :goto_0
    return-object v0

    .line 950
    :cond_1
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 952
    .local v0, "r":Landroid/webkit/WebResourceResponse;
    if-nez v0, :cond_0

    .line 953
    const/16 v1, 0x6c

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 869
    new-instance v1, Landroid/webkit/CallbackProxy$ResultTransport;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/CallbackProxy$ResultTransport;-><init>(Ljava/lang/Object;)V

    .line 870
    .local v1, "res":Landroid/webkit/CallbackProxy$ResultTransport;, "Landroid/webkit/CallbackProxy$ResultTransport<Ljava/lang/Boolean;>;"
    const/16 v2, 0x67

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 871
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 873
    invoke-direct {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 874
    invoke-virtual {v1}, Landroid/webkit/CallbackProxy$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method protected shutdown()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 194
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 195
    return-void
.end method

.method switchOutDrawHistory()V
    .locals 1

    .prologue
    .line 751
    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 752
    return-void
.end method

.method public uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 290
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public uiOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 4
    .param p1, "overrideUrl"    # Ljava/lang/String;

    .prologue
    .line 258
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 259
    :cond_0
    const/4 v1, 0x0

    .line 283
    :goto_0
    return v1

    .line 261
    :cond_1
    const/4 v1, 0x0

    .line 262
    .local v1, "override":Z
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v2, :cond_2

    .line 264
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v3, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 267
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 269
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v2, "com.android.browser.application_id"

    iget-object v3, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    :try_start_0
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    const/4 v1, 0x1

    goto :goto_0

    .line 278
    :catch_0
    move-exception v2

    goto :goto_0
.end method
