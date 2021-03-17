.class public Lcom/tencent/wxop/stat/common/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/a;->c:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wxop/stat/common/a;->f:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/wxop/stat/common/a;->g:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/a;->c:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wxop/stat/common/a;->f:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/wxop/stat/common/a;->g:J

    iput-object p1, p0, Lcom/tencent/wxop/stat/common/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/wxop/stat/common/a;->b:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/wxop/stat/common/a;->e:I

    return-void
.end method


# virtual methods
.method a()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ui"

    iget-object v2, p0, Lcom/tencent/wxop/stat/common/a;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/wxop/stat/common/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mc"

    iget-object v2, p0, Lcom/tencent/wxop/stat/common/a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/wxop/stat/common/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mid"

    iget-object v2, p0, Lcom/tencent/wxop/stat/common/a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/wxop/stat/common/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aid"

    iget-object v2, p0, Lcom/tencent/wxop/stat/common/a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/wxop/stat/common/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ts"

    iget-wide v2, p0, Lcom/tencent/wxop/stat/common/a;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "ver"

    iget v2, p0, Lcom/tencent/wxop/stat/common/a;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/wxop/stat/common/a;->e:I

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wxop/stat/common/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wxop/stat/common/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tencent/wxop/stat/common/a;->e:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/wxop/stat/common/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
