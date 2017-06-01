.class Landroid/webkit/WebViewClassic$SelectionHandleAlpha;
.super Ljava/lang/Object;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionHandleAlpha"
.end annotation


# instance fields
.field private mAlpha:I

.field private mTargetAlpha:I

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4623
    iput-object p1, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4624
    iput v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mAlpha:I

    .line 4625
    iput v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mTargetAlpha:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkit/WebViewClassic;
    .param p2, "x1"    # Landroid/webkit/WebViewClassic$1;

    .prologue
    .line 4623
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;-><init>(Landroid/webkit/WebViewClassic;)V

    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 1

    .prologue
    .line 4634
    iget v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mAlpha:I

    return v0
.end method

.method public getTargetAlpha()I
    .locals 1

    .prologue
    .line 4642
    iget v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mTargetAlpha:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 4628
    iput p1, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mAlpha:I

    .line 4630
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 4631
    return-void
.end method

.method public setTargetAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 4638
    iput p1, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mTargetAlpha:I

    .line 4639
    return-void
.end method
