.class public final Landroid/webkit/WebViewFactory;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewFactory$Preloader;
    }
.end annotation


# static fields
.field private static final CHROMIUM_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webview.chromium.WebViewChromiumFactoryProvider"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_WEBVIEW_FACTORY:Ljava/lang/String; = "android.webkit.WebViewClassic$Factory"

.field private static final FORCE_PROVIDER_PROPERTY:Ljava/lang/String; = "persist.webview.provider"

.field private static final FORCE_PROVIDER_PROPERTY_VALUE_CHROMIUM:Ljava/lang/String; = "chromium"

.field private static final FORCE_PROVIDER_PROPERTY_VALUE_CLASSIC:Ljava/lang/String; = "classic"

.field private static final LOGTAG:Ljava/lang/String; = "WebViewFactory"

.field private static sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

.field private static final sProviderLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Landroid/webkit/WebViewFactory;->getFactoryClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static getFactoryClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Landroid/webkit/WebViewFactory;->isClassicWebViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "android.webkit.WebViewClassic$Factory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.android.webview.chromium.WebViewChromiumFactoryProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method static getProvider()Landroid/webkit/WebViewFactoryProvider;
    .locals 6

    .prologue
    .line 85
    sget-object v4, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v4

    .line 88
    :try_start_0
    sget-object v3, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-eqz v3, :cond_0

    sget-object v3, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .local v2, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    :goto_0
    return-object v3

    .line 92
    .end local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->getFactoryClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 99
    .restart local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    :try_start_2
    sget-object v3, Landroid/webkit/WebViewFactory$Preloader;->sPreloadedProvider:Landroid/webkit/WebViewFactoryProvider;

    if-eqz v3, :cond_1

    sget-object v3, Landroid/webkit/WebViewFactory$Preloader;->sPreloadedProvider:Landroid/webkit/WebViewFactoryProvider;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 101
    sget-object v3, Landroid/webkit/WebViewFactory$Preloader;->sPreloadedProvider:Landroid/webkit/WebViewFactoryProvider;

    sput-object v3, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    .line 103
    sget-object v3, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    monitor-exit v4

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 93
    .end local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :try_start_3
    const-string v3, "WebViewFactory"

    const-string v5, "error loading provider"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    new-instance v3, Landroid/util/AndroidRuntimeException;

    invoke-direct {v3, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 107
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 109
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebViewFactoryProvider;

    sput-object v3, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    .line 111
    sget-object v3, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 116
    :try_start_5
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v3, "WebViewFactory"

    const-string v5, "error instantiating provider"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    new-instance v3, Landroid/util/AndroidRuntimeException;

    invoke-direct {v3, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    :try_start_7
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public static isClassicWebViewAvailable()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method private static isClassicWebViewEnabled()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 124
    const-string/jumbo v3, "persist.webview.provider"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "forceProviderName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v1

    .line 127
    :cond_1
    const-string v3, "WebViewFactory"

    const-string v4, "Provider overridden by property: %s=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "persist.webview.provider"

    aput-object v6, v5, v2

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v3, "chromium"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 130
    :cond_2
    const-string v3, "classic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    const-string v3, "WebViewFactory"

    const-string v4, "Unrecognized provider: %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isUseClassicWebViewSet()Z
    .locals 2

    .prologue
    .line 80
    const-string/jumbo v0, "persist.webview.provider"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "classic"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setUseClassicWebView(Z)V
    .locals 4
    .param p0, "enable"    # Z

    .prologue
    .line 67
    const-string/jumbo v1, "persist.webview.provider"

    if-eqz p0, :cond_0

    const-string v0, "classic"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "WebViewFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use Classic WebView changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "persist.webview.provider"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 67
    :cond_0
    const-string v0, "chromium"

    goto :goto_0
.end method

.method public static useClassicWebView()Z
    .locals 2

    .prologue
    .line 74
    const-string/jumbo v0, "persist.webview.provider"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "classic"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
