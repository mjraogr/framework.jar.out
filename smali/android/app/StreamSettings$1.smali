.class final Landroid/app/StreamSettings$1;
.super Ljava/lang/Object;
.source "StreamSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/StreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/app/StreamSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/StreamSettings;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 24
    new-instance v0, Landroid/app/StreamSettings;

    invoke-direct {v0, p1}, Landroid/app/StreamSettings;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Landroid/app/StreamSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/StreamSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/StreamSettings;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 29
    new-array v0, p1, [Landroid/app/StreamSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Landroid/app/StreamSettings$1;->newArray(I)[Landroid/app/StreamSettings;

    move-result-object v0

    return-object v0
.end method
