.class Landroid/webkit/AccessibilityInjectorFallback;
.super Ljava/lang/Object;
.source "AccessibilityInjectorFallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;
    }
.end annotation


# static fields
.field private static final ACTION_PERFORM_AXIS_TRANSITION:I = 0x3

.field private static final ACTION_SET_CURRENT_AXIS:I = 0x0

.field private static final ACTION_TRAVERSE_CURRENT_AXIS:I = 0x1

.field private static final ACTION_TRAVERSE_DEFAULT_WEB_VIEW_BEHAVIOR_AXIS:I = 0x4

.field private static final ACTION_TRAVERSE_GIVEN_AXIS:I = 0x2

.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityInjector"

.field private static final MODIFY_SELECTION_TIMEOUT:I = 0x1f4

.field private static final NAVIGATION_AXIS_CHARACTER:I = 0x0

.field private static final NAVIGATION_AXIS_DEFAULT_WEB_VIEW_BEHAVIOR:I = 0x7

.field private static final NAVIGATION_AXIS_DOCUMENT:I = 0x6

.field private static final NAVIGATION_AXIS_HEADING:I = 0x3

.field private static final NAVIGATION_AXIS_PARENT_FIRST_CHILD:I = 0x5

.field private static final NAVIGATION_AXIS_SENTENCE:I = 0x2

.field private static final NAVIGATION_AXIS_SIBLING:I = 0x4

.field private static final NAVIGATION_AXIS_WORD:I = 0x1

.field private static final NAVIGATION_DIRECTION_BACKWARD:I = 0x0

.field private static final NAVIGATION_DIRECTION_FORWARD:I = 0x1

.field private static sBindings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallbackLock:Ljava/lang/Object;

.field private mCallbackReceived:Z

.field private mCallbackResult:Z

.field private mCurrentAxis:I

.field private mIsLastSelectionStringNull:Z

.field private mLastDirection:I

.field private mLastDownEventHandled:Z

.field private mScheduledEvent:Landroid/view/accessibility/AccessibilityEvent;

.field private mScheduledToken:I

.field private final mWebView:Landroid/webkit/WebViewClassic;

.field private final mWebViewInternal:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/webkit/AccessibilityInjectorFallback;->sBindings:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebViewClassic;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/AccessibilityInjectorFallback;->mScheduledToken:I

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/AccessibilityInjectorFallback;->mCurrentAxis:I

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/AccessibilityInjectorFallback;->mCallbackLock:Ljava/lang/Object;

    .line 139
    iput-object p1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mWebView:Landroid/webkit/WebViewClassic;

    .line 140
    iget-object v0, p0, Landroid/webkit/AccessibilityInjectorFallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/AccessibilityInjectorFallback;->mWebViewInternal:Landroid/webkit/WebView;

    .line 141
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjectorFallback;->ensureWebContentKeyBindings()V

    .line 142
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/AccessibilityInjectorFallback;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/AccessibilityInjectorFallback;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/webkit/AccessibilityInjectorFallback;->onSelectionStringChangedMainThread(Ljava/lang/String;I)V

    return-void
.end method

.method private ensureWebContentKeyBindings()V
    .locals 14

    .prologue
    .line 475
    sget-object v11, Landroid/webkit/AccessibilityInjectorFallback;->sBindings:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 510
    :cond_0
    return-void

    .line 479
    :cond_1
    iget-object v11, p0, Landroid/webkit/AccessibilityInjectorFallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "accessibility_web_content_key_bindings"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 483
    .local v10, "webContentKeyBindingsString":Ljava/lang/String;
    new-instance v9, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v11, 0x3b

    invoke-direct {v9, v11}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 484
    .local v9, "semiColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v9, v10}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 486
    :goto_0
    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 487
    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "bindingString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 489
    const-string v11, "AccessibilityInjector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disregarding malformed Web content key binding: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 493
    :cond_2
    const-string v11, "="

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 494
    .local v7, "keyValueArray":[Ljava/lang/String;
    array-length v11, v7

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    .line 495
    const-string v11, "AccessibilityInjector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disregarding malformed Web content key binding: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 499
    :cond_3
    const/4 v11, 0x0

    :try_start_0
    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 500
    .local v5, "keyCodeAndModifiers":J
    const/4 v11, 0x1

    aget-object v11, v7, v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "actionStrings":[Ljava/lang/String;
    array-length v11, v0

    new-array v1, v11, [I

    .line 502
    .local v1, "actions":[I
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v3, v1

    .local v3, "count":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 503
    aget-object v11, v0, v4

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v1, v4

    .line 502
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 505
    :cond_4
    sget-object v11, Landroid/webkit/AccessibilityInjectorFallback;->sBindings:Ljava/util/ArrayList;

    new-instance v12, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;

    invoke-direct {v12, v5, v6, v1}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;-><init>(J[I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 506
    .end local v0    # "actionStrings":[Ljava/lang/String;
    .end local v1    # "actions":[I
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "keyCodeAndModifiers":J
    :catch_0
    move-exception v8

    .line 507
    .local v8, "nfe":Ljava/lang/NumberFormatException;
    const-string v11, "AccessibilityInjector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disregarding malformed key binding: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static getAxisForGranularity(I)I
    .locals 1
    .param p0, "granularity"    # I

    .prologue
    const/4 v0, 0x2

    .line 322
    sparse-switch p0, :sswitch_data_0

    .line 335
    const/4 v0, -0x1

    :goto_0
    :sswitch_0
    return v0

    .line 324
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 326
    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 333
    :sswitch_3
    const/4 v0, 0x6

    goto :goto_0

    .line 322
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private static getDirectionForAction(I)I
    .locals 1
    .param p0, "action"    # I

    .prologue
    .line 302
    sparse-switch p0, :sswitch_data_0

    .line 310
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 305
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 308
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 302
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x400 -> :sswitch_0
        0x800 -> :sswitch_1
    .end sparse-switch
.end method

.method private getPartialyPopulatedAccessibilityEvent(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2
    .param p1, "eventType"    # I

    .prologue
    .line 466
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 467
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mWebViewInternal:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 468
    return-object v0
.end method

.method private isEnterActionKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 513
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSelectionStringChangedMainThread(Ljava/lang/String;I)V
    .locals 5
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "token"    # I

    .prologue
    const/4 v2, 0x0

    .line 421
    const-string v1, "AccessibilityInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selection string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget v1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mScheduledToken:I

    if-eq p2, v1, :cond_1

    .line 426
    const-string v1, "AccessibilityInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selection string has incorrect token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mIsLastSelectionStringNull:Z

    .line 433
    iget-object v0, p0, Landroid/webkit/AccessibilityInjectorFallback;->mScheduledEvent:Landroid/view/accessibility/AccessibilityEvent;

    .line 434
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mScheduledEvent:Landroid/view/accessibility/AccessibilityEvent;

    .line 436
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 437
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 439
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 440
    invoke-direct {p0, v0}, Landroid/webkit/AccessibilityInjectorFallback;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_2
    move v1, v2

    .line 431
    goto :goto_1
.end method

.method private performAxisTransition(IIZLjava/lang/String;)V
    .locals 1
    .param p1, "fromAxis"    # I
    .param p2, "toAxis"    # I
    .param p3, "sendEvent"    # Z
    .param p4, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 268
    iget v0, p0, Landroid/webkit/AccessibilityInjectorFallback;->mCurrentAxis:I

    if-ne v0, p1, :cond_0

    .line 269
    invoke-direct {p0, p2, p3, p4}, Landroid/webkit/AccessibilityInjectorFallback;->setCurrentAxis(IZLjava/lang/String;)V

    .line 271
    :cond_0
    return-void
.end method

.method private sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 451
    const-string v1, "AccessibilityInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 456
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 459
    :cond_0
    return-void
.end method

.method private setCurrentAxis(IZLjava/lang/String;)V
    .locals 3
    .param p1, "axis"    # I
    .param p2, "sendEvent"    # Z
    .param p3, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 248
    iput p1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mCurrentAxis:I

    .line 249
    if-eqz p2, :cond_0

    .line 250
    const/16 v1, 0x4000

    invoke-direct {p0, v1}, Landroid/webkit/AccessibilityInjectorFallback;->getPartialyPopulatedAccessibilityEvent(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 252
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 254
    invoke-direct {p0, v0}, Landroid/webkit/AccessibilityInjectorFallback;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 256
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private traverseGivenAxis(IIZLjava/lang/String;Z)Z
    .locals 10
    .param p1, "direction"    # I
    .param p2, "axis"    # I
    .param p3, "sendEvent"    # Z
    .param p4, "contentDescription"    # Ljava/lang/String;
    .param p5, "sychronous"    # Z

    .prologue
    const/16 v7, 0xbe

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 350
    iget-object v6, p0, Landroid/webkit/AccessibilityInjectorFallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    .line 351
    .local v3, "webViewCore":Landroid/webkit/WebViewCore;
    if-nez v3, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v5

    .line 355
    :cond_1
    if-eqz p3, :cond_2

    .line 356
    const/high16 v6, 0x20000

    invoke-direct {p0, v6}, Landroid/webkit/AccessibilityInjectorFallback;->getPartialyPopulatedAccessibilityEvent(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 359
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v2, p4}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 360
    iput-object v2, p0, Landroid/webkit/AccessibilityInjectorFallback;->mScheduledEvent:Landroid/view/accessibility/AccessibilityEvent;

    .line 361
    iget v6, p0, Landroid/webkit/AccessibilityInjectorFallback;->mScheduledToken:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/webkit/AccessibilityInjectorFallback;->mScheduledToken:I

    .line 366
    .end local v2    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_2
    const/4 v6, 0x7

    if-eq p2, v6, :cond_0

    .line 370
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 371
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 372
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 373
    iget v6, p0, Landroid/webkit/AccessibilityInjectorFallback;->mScheduledToken:I

    iput v6, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 376
    if-nez p5, :cond_3

    .line 377
    invoke-virtual {v3, v7, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move v5, v4

    .line 378
    goto :goto_0

    .line 383
    :cond_3
    iget-object v6, p0, Landroid/webkit/AccessibilityInjectorFallback;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v6

    .line 384
    const/4 v7, 0x0

    :try_start_0
    iput-boolean v7, p0, Landroid/webkit/AccessibilityInjectorFallback;->mCallbackReceived:Z

    .line 388
    const/16 v7, 0xbe

    invoke-virtual {v3, v7, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :try_start_1
    iget-object v7, p0, Landroid/webkit/AccessibilityInjectorFallback;->mCallbackLock:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    :goto_1
    :try_start_2
    iget-boolean v1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mCallbackResult:Z

    .line 397
    .local v1, "callbackResult":Z
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    iget-boolean v6, p0, Landroid/webkit/AccessibilityInjectorFallback;->mCallbackReceived:Z

    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    :goto_2
    move v5, v4

    goto :goto_0

    .line 397
    .end local v1    # "callbackResult":Z
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .restart local v1    # "callbackResult":Z
    :cond_4
    move v4, v5

    .line 399
    goto :goto_2

    .line 392
    .end local v1    # "callbackResult":Z
    :catch_0
    move-exception v7

    goto :goto_1
.end method


# virtual methods
.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 22
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/AccessibilityInjectorFallback;->isEnterActionKey(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    const/4 v3, 0x0

    .line 237
    :goto_0
    return v3

    .line 155
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_1

    .line 156
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto :goto_0

    .line 159
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    .line 161
    const/4 v15, 0x0

    .line 162
    .local v15, "binding":Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;
    sget-object v3, Landroid/webkit/AccessibilityInjectorFallback;->sBindings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;

    .line 163
    .local v16, "candidate":Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getKeyCode()I

    move-result v8

    if-ne v3, v8, :cond_2

    invoke-virtual/range {v16 .. v16}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getModifiers()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    move-object/from16 v15, v16

    .line 170
    .end local v16    # "candidate":Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;
    :cond_3
    if-nez v15, :cond_4

    .line 171
    const/4 v3, 0x0

    goto :goto_0

    .line 174
    :cond_4
    const/16 v19, 0x0

    .local v19, "i":I
    invoke-virtual {v15}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getActionCount()I

    move-result v17

    .local v17, "count":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    .line 175
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getActionCode(I)I

    move-result v14

    .line 176
    .local v14, "actionCode":I
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getAction(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 177
    .local v7, "contentDescription":Ljava/lang/String;
    packed-switch v14, :pswitch_data_0

    .line 233
    const-string v3, "AccessibilityInjector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown action code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 179
    :pswitch_0
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v5

    .line 180
    .local v5, "axis":I
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_5

    const/4 v6, 0x1

    .line 181
    .local v6, "sendEvent":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Landroid/webkit/AccessibilityInjectorFallback;->setCurrentAxis(IZLjava/lang/String;)V

    .line 182
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto :goto_2

    .line 180
    .end local v6    # "sendEvent":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 185
    .end local v5    # "axis":I
    :pswitch_1
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v4

    .line 187
    .local v4, "direction":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDirection:I

    if-ne v4, v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/AccessibilityInjectorFallback;->mIsLastSelectionStringNull:Z

    if-eqz v3, :cond_6

    .line 188
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/AccessibilityInjectorFallback;->mIsLastSelectionStringNull:Z

    .line 189
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 191
    :cond_6
    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDirection:I

    .line 192
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_7

    const/4 v6, 0x1

    .line 193
    .restart local v6    # "sendEvent":Z
    :goto_4
    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/AccessibilityInjectorFallback;->mCurrentAxis:I

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/webkit/AccessibilityInjectorFallback;->traverseGivenAxis(IIZLjava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto :goto_2

    .line 192
    .end local v6    # "sendEvent":Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    .line 197
    .end local v4    # "direction":I
    :pswitch_2
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v4

    .line 199
    .restart local v4    # "direction":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDirection:I

    if-ne v4, v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/AccessibilityInjectorFallback;->mIsLastSelectionStringNull:Z

    if-eqz v3, :cond_8

    .line 200
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/AccessibilityInjectorFallback;->mIsLastSelectionStringNull:Z

    .line 201
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 203
    :cond_8
    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDirection:I

    .line 204
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v5

    .line 205
    .restart local v5    # "axis":I
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getThirdArgument(I)I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_9

    const/4 v6, 0x1

    .line 206
    .restart local v6    # "sendEvent":Z
    :goto_5
    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/webkit/AccessibilityInjectorFallback;->traverseGivenAxis(IIZLjava/lang/String;Z)Z

    .line 207
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto/16 :goto_2

    .line 205
    .end local v6    # "sendEvent":Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    .line 210
    .end local v4    # "direction":I
    .end local v5    # "axis":I
    :pswitch_3
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v18

    .line 211
    .local v18, "fromAxis":I
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v21

    .line 212
    .local v21, "toAxis":I
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getThirdArgument(I)I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_a

    const/4 v6, 0x1

    .line 213
    .restart local v6    # "sendEvent":Z
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v6, v7}, Landroid/webkit/AccessibilityInjectorFallback;->performAxisTransition(IIZLjava/lang/String;)V

    .line 214
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto/16 :goto_2

    .line 212
    .end local v6    # "sendEvent":Z
    :cond_a
    const/4 v6, 0x0

    goto :goto_6

    .line 220
    .end local v18    # "fromAxis":I
    .end local v21    # "toAxis":I
    :pswitch_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/AccessibilityInjectorFallback;->mCurrentAxis:I

    const/4 v8, 0x7

    if-ne v3, v8, :cond_c

    .line 223
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDirection:I

    .line 224
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_b

    const/4 v6, 0x1

    .line 225
    .restart local v6    # "sendEvent":Z
    :goto_7
    move-object/from16 v0, p0

    iget v9, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDirection:I

    const/4 v10, 0x7

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move v11, v6

    move-object v12, v7

    invoke-direct/range {v8 .. v13}, Landroid/webkit/AccessibilityInjectorFallback;->traverseGivenAxis(IIZLjava/lang/String;Z)Z

    .line 227
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto/16 :goto_2

    .line 224
    .end local v6    # "sendEvent":Z
    :cond_b
    const/4 v6, 0x0

    goto :goto_7

    .line 229
    :cond_c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto/16 :goto_2

    .line 237
    .end local v7    # "contentDescription":Ljava/lang/String;
    .end local v14    # "actionCode":I
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto/16 :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method onSelectionStringChangedWebCoreThread(Ljava/lang/String;I)V
    .locals 3
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "token"    # I

    .prologue
    const/4 v0, 0x1

    .line 404
    iget-object v1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 405
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Landroid/webkit/AccessibilityInjectorFallback;->mCallbackReceived:Z

    .line 406
    if-eqz p1, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/AccessibilityInjectorFallback;->mCallbackResult:Z

    .line 407
    iget-object v0, p0, Landroid/webkit/AccessibilityInjectorFallback;->mCallbackLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 408
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    iget-object v0, p0, Landroid/webkit/AccessibilityInjectorFallback;->mWebViewInternal:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/AccessibilityInjectorFallback$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/webkit/AccessibilityInjectorFallback$1;-><init>(Landroid/webkit/AccessibilityInjectorFallback;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 417
    return-void

    .line 406
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 408
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 11
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 274
    sparse-switch p1, :sswitch_data_0

    .line 290
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 277
    :sswitch_0
    invoke-static {p1}, Landroid/webkit/AccessibilityInjectorFallback;->getDirectionForAction(I)I

    move-result v1

    .line 278
    .local v1, "direction":I
    const-string v0, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/webkit/AccessibilityInjectorFallback;->getAxisForGranularity(I)I

    move-result v2

    .local v2, "axis":I
    move-object v0, p0

    move v5, v3

    .line 280
    invoke-direct/range {v0 .. v5}, Landroid/webkit/AccessibilityInjectorFallback;->traverseGivenAxis(IIZLjava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 284
    .end local v1    # "direction":I
    .end local v2    # "axis":I
    :sswitch_1
    invoke-static {p1}, Landroid/webkit/AccessibilityInjectorFallback;->getDirectionForAction(I)I

    move-result v1

    .line 286
    .restart local v1    # "direction":I
    const/4 v2, 0x2

    .line 287
    .restart local v2    # "axis":I
    const/4 v7, 0x2

    move-object v5, p0

    move v6, v1

    move v8, v3

    move-object v9, v4

    move v10, v3

    invoke-direct/range {v5 .. v10}, Landroid/webkit/AccessibilityInjectorFallback;->traverseGivenAxis(IIZLjava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 274
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
        0x800 -> :sswitch_1
    .end sparse-switch
.end method
