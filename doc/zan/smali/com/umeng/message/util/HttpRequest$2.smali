.class Lcom/umeng/message/util/HttpRequest$2;
.super Lcom/umeng/message/util/HttpRequest$c;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/util/HttpRequest;->send(Ljava/io/Reader;)Lcom/umeng/message/util/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/message/util/HttpRequest$c",
        "<",
        "Lcom/umeng/message/util/HttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/io/Reader;

.field final synthetic b:Ljava/io/Writer;

.field final synthetic c:Lcom/umeng/message/util/HttpRequest;


# direct methods
.method constructor <init>(Lcom/umeng/message/util/HttpRequest;Ljava/io/Flushable;Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 0

    .prologue
    .line 2871
    iput-object p1, p0, Lcom/umeng/message/util/HttpRequest$2;->c:Lcom/umeng/message/util/HttpRequest;

    iput-object p3, p0, Lcom/umeng/message/util/HttpRequest$2;->a:Ljava/io/Reader;

    iput-object p4, p0, Lcom/umeng/message/util/HttpRequest$2;->b:Ljava/io/Writer;

    invoke-direct {p0, p2}, Lcom/umeng/message/util/HttpRequest$c;-><init>(Ljava/io/Flushable;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/umeng/message/util/HttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest$2;->c:Lcom/umeng/message/util/HttpRequest;

    iget-object v1, p0, Lcom/umeng/message/util/HttpRequest$2;->a:Ljava/io/Reader;

    iget-object v2, p0, Lcom/umeng/message/util/HttpRequest$2;->b:Ljava/io/Writer;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/util/HttpRequest;->copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2871
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest$2;->a()Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method
