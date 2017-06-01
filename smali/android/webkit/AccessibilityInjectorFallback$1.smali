.class Landroid/webkit/AccessibilityInjectorFallback$1;
.super Ljava/lang/Object;
.source "AccessibilityInjectorFallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/AccessibilityInjectorFallback;->onSelectionStringChangedWebCoreThread(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/AccessibilityInjectorFallback;

.field final synthetic val$selection:Ljava/lang/String;

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Landroid/webkit/AccessibilityInjectorFallback;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Landroid/webkit/AccessibilityInjectorFallback$1;->this$0:Landroid/webkit/AccessibilityInjectorFallback;

    iput-object p2, p0, Landroid/webkit/AccessibilityInjectorFallback$1;->val$selection:Ljava/lang/String;

    iput p3, p0, Landroid/webkit/AccessibilityInjectorFallback$1;->val$token:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Landroid/webkit/AccessibilityInjectorFallback$1;->this$0:Landroid/webkit/AccessibilityInjectorFallback;

    iget-object v1, p0, Landroid/webkit/AccessibilityInjectorFallback$1;->val$selection:Ljava/lang/String;

    iget v2, p0, Landroid/webkit/AccessibilityInjectorFallback$1;->val$token:I

    # invokes: Landroid/webkit/AccessibilityInjectorFallback;->onSelectionStringChangedMainThread(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Landroid/webkit/AccessibilityInjectorFallback;->access$000(Landroid/webkit/AccessibilityInjectorFallback;Ljava/lang/String;I)V

    .line 415
    return-void
.end method
