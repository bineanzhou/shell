.class public Lanetwork/channel/aidl/ParcelableObject;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lanetwork/channel/aidl/ParcelableObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lanetwork/channel/aidl/ParcelableObject$1;

    invoke-direct {v0}, Lanetwork/channel/aidl/ParcelableObject$1;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/ParcelableObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lanetwork/channel/aidl/ParcelableObject;->a(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableObject;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lanetwork/channel/aidl/ParcelableObject;->a:Ljava/lang/Object;

    .line 12
    return-void
.end method


# virtual methods
.method a(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableObject;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lanetwork/channel/aidl/ParcelableObject;

    invoke-direct {v0}, Lanetwork/channel/aidl/ParcelableObject;-><init>()V

    .line 32
    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableObject;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method
