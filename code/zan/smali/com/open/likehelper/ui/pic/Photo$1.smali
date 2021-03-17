.class final Lcom/open/likehelper/ui/pic/Photo$1;
.super Ljava/lang/Object;
.source "Photo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/ui/pic/Photo;
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
        "Lcom/open/likehelper/ui/pic/Photo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/open/likehelper/ui/pic/Photo;
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/open/likehelper/ui/pic/Photo;

    invoke-direct {v0, p1}, Lcom/open/likehelper/ui/pic/Photo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/open/likehelper/ui/pic/Photo;
    .locals 1

    .prologue
    .line 16
    new-array v0, p1, [Lcom/open/likehelper/ui/pic/Photo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/open/likehelper/ui/pic/Photo$1;->a(Landroid/os/Parcel;)Lcom/open/likehelper/ui/pic/Photo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/open/likehelper/ui/pic/Photo$1;->a(I)[Lcom/open/likehelper/ui/pic/Photo;

    move-result-object v0

    return-object v0
.end method
