.class public Lcom/open/likehelper/ui/pic/Photo;
.super Ljava/lang/Object;
.source "Photo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/open/likehelper/ui/pic/Photo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/open/likehelper/ui/pic/Photo$1;

    invoke-direct {v0}, Lcom/open/likehelper/ui/pic/Photo$1;-><init>()V

    sput-object v0, Lcom/open/likehelper/ui/pic/Photo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/open/likehelper/ui/pic/Photo;->d:Z

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/open/likehelper/ui/pic/Photo;->a:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/open/likehelper/ui/pic/Photo;->d:Z

    .line 34
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/open/likehelper/ui/pic/Photo;->a:I

    .line 38
    iput-object p2, p0, Lcom/open/likehelper/ui/pic/Photo;->b:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/open/likehelper/ui/pic/Photo;->a:I

    .line 43
    iput-object p2, p0, Lcom/open/likehelper/ui/pic/Photo;->b:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/open/likehelper/ui/pic/Photo;->c:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/open/likehelper/ui/pic/Photo;->a:I

    .line 49
    iput-boolean p2, p0, Lcom/open/likehelper/ui/pic/Photo;->d:Z

    .line 50
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/open/likehelper/ui/pic/Photo;->a:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/open/likehelper/ui/pic/Photo;->b:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/open/likehelper/ui/pic/Photo;->c:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/open/likehelper/ui/pic/Photo;->d:Z

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/open/likehelper/ui/pic/Photo;->e:Ljava/lang/String;

    .line 58
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/open/likehelper/ui/pic/Photo;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/open/likehelper/ui/pic/Photo;->a:I

    .line 66
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/Photo;->b:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/open/likehelper/ui/pic/Photo;->d:Z

    .line 74
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/Photo;->c:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/open/likehelper/ui/pic/Photo;->d:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/Photo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/Photo;->e:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/Photo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/Photo;->f:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/Photo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 124
    instance-of v0, p1, Lcom/open/likehelper/ui/pic/Photo;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/open/likehelper/ui/pic/Photo;->a()I

    move-result v0

    check-cast p1, Lcom/open/likehelper/ui/pic/Photo;

    invoke-virtual {p1}, Lcom/open/likehelper/ui/pic/Photo;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/Photo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/open/likehelper/ui/pic/Photo;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/Photo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/Photo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-boolean v0, p0, Lcom/open/likehelper/ui/pic/Photo;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 119
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/Photo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
