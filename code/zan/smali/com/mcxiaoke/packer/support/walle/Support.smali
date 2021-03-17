.class public Lcom/mcxiaoke/packer/support/walle/Support;
.super Ljava/lang/Object;
.source "Support.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;I)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/mcxiaoke/packer/support/walle/PayloadReader;->b(Ljava/io/File;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;ILjava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {p0, p1, p2}, Lcom/mcxiaoke/packer/support/walle/PayloadWriter;->a(Ljava/io/File;ILjava/nio/ByteBuffer;)V

    .line 29
    return-void
.end method

.method public static a(Ljava/io/File;I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/mcxiaoke/packer/support/walle/PayloadWriter;->a(Ljava/io/File;I[B)V

    .line 34
    return-void
.end method

.method public static b(Ljava/io/File;I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/mcxiaoke/packer/support/walle/PayloadReader;->a(Ljava/io/File;I)[B

    move-result-object v0

    return-object v0
.end method
