.class final Lokhttp3/ResponseBody$1;
.super Lokhttp3/ResponseBody;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/ResponseBody;->a(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/MediaType;

.field final synthetic b:J

.field final synthetic c:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokhttp3/MediaType;JLokio/BufferedSource;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lokhttp3/ResponseBody$1;->a:Lokhttp3/MediaType;

    iput-wide p2, p0, Lokhttp3/ResponseBody$1;->b:J

    iput-object p4, p0, Lokhttp3/ResponseBody$1;->c:Lokio/BufferedSource;

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lokhttp3/MediaType;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lokhttp3/ResponseBody$1;->a:Lokhttp3/MediaType;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Lokhttp3/ResponseBody$1;->b:J

    return-wide v0
.end method

.method public c()Lokio/BufferedSource;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lokhttp3/ResponseBody$1;->c:Lokio/BufferedSource;

    return-object v0
.end method
