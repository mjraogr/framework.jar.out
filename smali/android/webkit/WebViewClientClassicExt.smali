.class public Landroid/webkit/WebViewClientClassicExt;
.super Landroid/webkit/WebViewClient;
.source "WebViewClientClassicExt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProceededAfterSslError(Landroid/webkit/WebView;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 34
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/ClientCertRequestHandler;
    .param p3, "host_and_port"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-virtual {p2}, Landroid/webkit/ClientCertRequestHandler;->cancel()V

    .line 52
    return-void
.end method
