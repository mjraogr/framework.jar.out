.class Landroid/webkit/WebViewCore$TextSelectionData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextSelectionData"
.end annotation


# static fields
.field static final REASON_ACCESSIBILITY_INJECTOR:I = 0x1

.field static final REASON_SELECT_WORD:I = 0x2

.field static final REASON_UNKNOWN:I


# instance fields
.field mEnd:I

.field mSelectTextPtr:I

.field mSelectionReason:I

.field mStart:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "selectTextPtr"    # I

    .prologue
    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectionReason:I

    .line 867
    iput p1, p0, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    .line 868
    iput p2, p0, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    .line 869
    iput p3, p0, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectTextPtr:I

    .line 870
    return-void
.end method
