.class Landroid/webkit/WebViewClassic$Factory;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/webkit/WebViewFactoryProvider$Statics;
.implements Landroid/webkit/WebViewFactoryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 1300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1305
    :try_start_0
    const-string v1, "android.webkit.JniUtil"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1306
    const-string v1, "android.webkit.WebViewCore"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    return-void

    .line 1307
    :catch_0
    move-exception v0

    .line 1308
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v1, "webview"

    const-string v2, "failed to load JNI libraries"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    new-instance v1, Landroid/util/AndroidRuntimeException;

    invoke-direct {v1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public createWebView(Landroid/webkit/WebView;Landroid/webkit/WebView$PrivateAccess;)Landroid/webkit/WebViewProvider;
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "privateAccess"    # Landroid/webkit/WebView$PrivateAccess;

    .prologue
    .line 1331
    new-instance v0, Landroid/webkit/WebViewClassic;

    invoke-direct {v0, p1, p2}, Landroid/webkit/WebViewClassic;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$PrivateAccess;)V

    return-object v0
.end method

.method public findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 1315
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public freeMemoryForTests()V
    .locals 1

    .prologue
    .line 1367
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider$Statics;->freeMemoryForTests()V

    .line 1368
    return-void
.end method

.method public getCookieManager()Landroid/webkit/CookieManager;
    .locals 1

    .prologue
    .line 1341
    invoke-static {}, Landroid/webkit/CookieManagerClassic;->getInstance()Landroid/webkit/CookieManagerClassic;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1361
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/webkit/WebSettingsClassic;->getDefaultUserAgentForLocale(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeolocationPermissions()Landroid/webkit/GeolocationPermissions;
    .locals 1

    .prologue
    .line 1336
    invoke-static {}, Landroid/webkit/GeolocationPermissionsClassic;->getInstance()Landroid/webkit/GeolocationPermissionsClassic;

    move-result-object v0

    return-object v0
.end method

.method public getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;
    .locals 0

    .prologue
    .line 1327
    return-object p0
.end method

.method public getWebIconDatabase()Landroid/webkit/WebIconDatabase;
    .locals 1

    .prologue
    .line 1346
    invoke-static {}, Landroid/webkit/WebIconDatabaseClassic;->getInstance()Landroid/webkit/WebIconDatabaseClassic;

    move-result-object v0

    return-object v0
.end method

.method public getWebStorage()Landroid/webkit/WebStorage;
    .locals 1

    .prologue
    .line 1351
    invoke-static {}, Landroid/webkit/WebStorageClassic;->getInstance()Landroid/webkit/WebStorageClassic;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewDatabase(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1356
    invoke-static {p1}, Landroid/webkit/WebViewDatabaseClassic;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabaseClassic;

    move-result-object v0

    return-object v0
.end method

.method public setPlatformNotificationsEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1319
    if-eqz p1, :cond_0

    .line 1320
    invoke-static {}, Landroid/webkit/WebViewClassic;->enablePlatformNotifications()V

    .line 1324
    :goto_0
    return-void

    .line 1322
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewClassic;->disablePlatformNotifications()V

    goto :goto_0
.end method

.method public setWebContentsDebuggingEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1373
    return-void
.end method
