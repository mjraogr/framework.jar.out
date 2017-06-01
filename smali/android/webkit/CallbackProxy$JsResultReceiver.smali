.class Landroid/webkit/CallbackProxy$JsResultReceiver;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/webkit/JsResult$ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JsResultReceiver"
.end annotation


# instance fields
.field public mJsResult:Landroid/webkit/JsPromptResult;

.field private mReady:Z

.field private mTriedToNotifyBeforeReady:Z

.field final synthetic this$0:Landroid/webkit/CallbackProxy;


# direct methods
.method private constructor <init>(Landroid/webkit/CallbackProxy;)V
    .locals 1

    .prologue
    .line 139
    iput-object p1, p0, Landroid/webkit/CallbackProxy$JsResultReceiver;->this$0:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Landroid/webkit/JsPromptResult;

    invoke-direct {v0, p0}, Landroid/webkit/JsPromptResult;-><init>(Landroid/webkit/JsResult$ResultReceiver;)V

    iput-object v0, p0, Landroid/webkit/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkit/JsPromptResult;

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/CallbackProxy;Landroid/webkit/CallbackProxy$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkit/CallbackProxy;
    .param p2, "x1"    # Landroid/webkit/CallbackProxy$1;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/webkit/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkit/CallbackProxy;)V

    return-void
.end method

.method private notifyCallbackProxy()V
    .locals 2

    .prologue
    .line 167
    iget-object v1, p0, Landroid/webkit/CallbackProxy$JsResultReceiver;->this$0:Landroid/webkit/CallbackProxy;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Landroid/webkit/CallbackProxy$JsResultReceiver;->this$0:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 169
    monitor-exit v1

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onJsResultComplete(Landroid/webkit/JsResult;)V
    .locals 1
    .param p1, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/webkit/CallbackProxy$JsResultReceiver;->mReady:Z

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0}, Landroid/webkit/CallbackProxy$JsResultReceiver;->notifyCallbackProxy()V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/CallbackProxy$JsResultReceiver;->mTriedToNotifyBeforeReady:Z

    goto :goto_0
.end method

.method final setReady()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/CallbackProxy$JsResultReceiver;->mReady:Z

    .line 151
    iget-boolean v0, p0, Landroid/webkit/CallbackProxy$JsResultReceiver;->mTriedToNotifyBeforeReady:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Landroid/webkit/CallbackProxy$JsResultReceiver;->notifyCallbackProxy()V

    .line 154
    :cond_0
    return-void
.end method
