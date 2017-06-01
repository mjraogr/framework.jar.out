.class Landroid/webkit/WebViewClassic$TrustStorageListener;
.super Landroid/content/BroadcastReceiver;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrustStorageListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1521
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkit/WebViewClassic$1;

    .prologue
    .line 1521
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$TrustStorageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1524
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.security.STORAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1525
    # invokes: Landroid/webkit/WebViewClassic;->handleCertTrustChanged()V
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$1000()V

    .line 1527
    :cond_0
    return-void
.end method
