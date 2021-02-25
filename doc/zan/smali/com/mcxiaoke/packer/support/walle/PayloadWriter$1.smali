.class final Lcom/mcxiaoke/packer/support/walle/PayloadWriter$1;
.super Ljava/lang/Object;
.source "PayloadWriter.java"

# interfaces
.implements Lcom/mcxiaoke/packer/support/walle/PayloadWriter$ApkSigningBlockHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcxiaoke/packer/support/walle/PayloadWriter;->a(Ljava/io/File;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mcxiaoke/packer/support/walle/PayloadWriter$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mcxiaoke/packer/support/walle/PayloadWriter$1;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcxiaoke/packer/support/walle/PayloadWriter$1;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/mcxiaoke/packer/support/walle/PayloadWriter$1;->a:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 46
    :cond_0
    new-instance v2, Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;

    invoke-direct {v2}, Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;-><init>()V

    .line 47
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 49
    new-instance v4, Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {v4, v1, v0}, Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;-><init>(ILjava/nio/ByteBuffer;)V

    .line 50
    invoke-virtual {v2, v4}, Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;->a(Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;)V

    goto :goto_0

    .line 52
    :cond_1
    return-object v2
.end method
