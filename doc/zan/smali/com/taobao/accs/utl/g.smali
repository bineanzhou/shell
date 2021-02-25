.class public Lcom/taobao/accs/utl/g;
.super Ljava/io/ByteArrayOutputStream;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 9
    return-void
.end method


# virtual methods
.method public a(B)Lcom/taobao/accs/utl/g;
    .locals 0

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/taobao/accs/utl/g;->write(I)V

    .line 17
    return-object p0
.end method

.method public a(S)Lcom/taobao/accs/utl/g;
    .locals 1

    .prologue
    .line 21
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/taobao/accs/utl/g;->write(I)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/taobao/accs/utl/g;->write(I)V

    .line 23
    return-object p0
.end method
