.class Landroid/webkit/WebViewCore$AutoFillData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AutoFillData"
.end annotation


# instance fields
.field private mPreview:Ljava/lang/String;

.field private mQueryId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebViewCore$AutoFillData;->mQueryId:I

    .line 918
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/WebViewCore$AutoFillData;->mPreview:Ljava/lang/String;

    .line 919
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "queryId"    # I
    .param p2, "preview"    # Ljava/lang/String;

    .prologue
    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 922
    iput p1, p0, Landroid/webkit/WebViewCore$AutoFillData;->mQueryId:I

    .line 923
    iput-object p2, p0, Landroid/webkit/WebViewCore$AutoFillData;->mPreview:Ljava/lang/String;

    .line 924
    return-void
.end method


# virtual methods
.method public getPreviewString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Landroid/webkit/WebViewCore$AutoFillData;->mPreview:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryId()I
    .locals 1

    .prologue
    .line 927
    iget v0, p0, Landroid/webkit/WebViewCore$AutoFillData;->mQueryId:I

    return v0
.end method
