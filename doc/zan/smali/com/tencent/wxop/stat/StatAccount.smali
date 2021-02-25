.class public Lcom/tencent/wxop/stat/StatAccount;
.super Ljava/lang/Object;


# static fields
.field public static final CUSTOM_TYPE:I = 0x7

.field public static final DEFAULT_TYPE:I = 0x0

.field public static final EMAIL_TYPE:I = 0x6

.field public static final PHONE_NUM_TYPE:I = 0x5

.field public static final QQ_NUM_TYPE:I = 0x1

.field public static final QQ_OPENID_TYPE:I = 0x3

.field public static final WECHAT_ID_TYPE:I = 0x2

.field public static final WECHAT_OPENID_TYPE:I = 0x4


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wxop/stat/StatAccount;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wxop/stat/StatAccount;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wxop/stat/StatAccount;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wxop/stat/StatAccount;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/wxop/stat/StatAccount;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wxop/stat/StatAccount;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wxop/stat/StatAccount;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wxop/stat/StatAccount;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wxop/stat/StatAccount;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/wxop/stat/StatAccount;->a:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/wxop/stat/StatAccount;->b:I

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wxop/stat/StatAccount;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()I
    .locals 1

    iget v0, p0, Lcom/tencent/wxop/stat/StatAccount;->b:I

    return v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wxop/stat/StatAccount;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getExt1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wxop/stat/StatAccount;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/StatAccount;->a:Ljava/lang/String;

    return-void
.end method

.method public setAccountType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/wxop/stat/StatAccount;->b:I

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/StatAccount;->c:Ljava/lang/String;

    return-void
.end method

.method public setExt1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/StatAccount;->d:Ljava/lang/String;

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/tencent/wxop/stat/StatAccount;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "a"

    iget-object v2, p0, Lcom/tencent/wxop/stat/StatAccount;->a:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/tencent/wxop/stat/common/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "t"

    iget v2, p0, Lcom/tencent/wxop/stat/StatAccount;->b:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "e"

    iget-object v2, p0, Lcom/tencent/wxop/stat/StatAccount;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/tencent/wxop/stat/common/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "e1"

    iget-object v2, p0, Lcom/tencent/wxop/stat/StatAccount;->d:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/tencent/wxop/stat/common/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatAccount [account="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/wxop/stat/StatAccount;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accountType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/wxop/stat/StatAccount;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wxop/stat/StatAccount;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ext1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wxop/stat/StatAccount;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
