.class final Lcom/open/likehelper/ui/edit/PhotoItemBean$1;
.super Ljava/lang/Object;
.source "PhotoItemBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/ui/edit/PhotoItemBean;
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
        "Lcom/open/likehelper/ui/edit/PhotoItemBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/open/likehelper/ui/edit/PhotoItemBean;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/open/likehelper/ui/edit/PhotoItemBean;

    invoke-direct {v0}, Lcom/open/likehelper/ui/edit/PhotoItemBean;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/open/likehelper/ui/edit/PhotoItemBean;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/open/likehelper/ui/edit/PhotoItemBean;->b:I

    .line 30
    return-object v0
.end method

.method public a(I)[Lcom/open/likehelper/ui/edit/PhotoItemBean;
    .locals 1

    .prologue
    .line 34
    new-array v0, p1, [Lcom/open/likehelper/ui/edit/PhotoItemBean;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/open/likehelper/ui/edit/PhotoItemBean$1;->a(Landroid/os/Parcel;)Lcom/open/likehelper/ui/edit/PhotoItemBean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/open/likehelper/ui/edit/PhotoItemBean$1;->a(I)[Lcom/open/likehelper/ui/edit/PhotoItemBean;

    move-result-object v0

    return-object v0
.end method
