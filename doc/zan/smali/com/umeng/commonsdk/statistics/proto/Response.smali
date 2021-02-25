.class public Lcom/umeng/commonsdk/statistics/proto/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Lcom/umeng/commonsdk/proguard/l;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/proto/Response$c;,
        Lcom/umeng/commonsdk/statistics/proto/Response$d;,
        Lcom/umeng/commonsdk/statistics/proto/Response$a;,
        Lcom/umeng/commonsdk/statistics/proto/Response$b;,
        Lcom/umeng/commonsdk/statistics/proto/Response$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/commonsdk/proguard/l",
        "<",
        "Lcom/umeng/commonsdk/statistics/proto/Response;",
        "Lcom/umeng/commonsdk/statistics/proto/Response$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final IMPRINT_FIELD_DESC:Lcom/umeng/commonsdk/proguard/af;

.field private static final MSG_FIELD_DESC:Lcom/umeng/commonsdk/proguard/af;

.field private static final RESP_CODE_FIELD_DESC:Lcom/umeng/commonsdk/proguard/af;

.field private static final STRUCT_DESC:Lcom/umeng/commonsdk/proguard/ap;

.field private static final __RESP_CODE_ISSET_ID:I = 0x0

.field public static final metaDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/commonsdk/statistics/proto/Response$e;",
            "Lcom/umeng/commonsdk/proguard/x;",
            ">;"
        }
    .end annotation
.end field

.field private static final schemes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/umeng/commonsdk/proguard/as;",
            ">;",
            "Lcom/umeng/commonsdk/proguard/at;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x3f22482b0751777fL


# instance fields
.field private __isset_bitfield:B

.field public imprint:Lcom/umeng/commonsdk/statistics/proto/d;

.field public msg:Ljava/lang/String;

.field private optionals:[Lcom/umeng/commonsdk/statistics/proto/Response$e;

.field public resp_code:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xc

    const/16 v8, 0xb

    const/16 v7, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 41
    new-instance v0, Lcom/umeng/commonsdk/proguard/ap;

    const-string v1, "Response"

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ap;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->STRUCT_DESC:Lcom/umeng/commonsdk/proguard/ap;

    .line 44
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    const-string v1, "resp_code"

    invoke-direct {v0, v1, v7, v5}, Lcom/umeng/commonsdk/proguard/af;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->RESP_CODE_FIELD_DESC:Lcom/umeng/commonsdk/proguard/af;

    .line 46
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    const-string v1, "msg"

    invoke-direct {v0, v1, v8, v6}, Lcom/umeng/commonsdk/proguard/af;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->MSG_FIELD_DESC:Lcom/umeng/commonsdk/proguard/af;

    .line 48
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    const-string v1, "imprint"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, Lcom/umeng/commonsdk/proguard/af;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->IMPRINT_FIELD_DESC:Lcom/umeng/commonsdk/proguard/af;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->schemes:Ljava/util/Map;

    .line 55
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->schemes:Ljava/util/Map;

    const-class v1, Lcom/umeng/commonsdk/proguard/au;

    new-instance v2, Lcom/umeng/commonsdk/statistics/proto/Response$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/umeng/commonsdk/statistics/proto/Response$b;-><init>(Lcom/umeng/commonsdk/statistics/proto/Response$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->schemes:Ljava/util/Map;

    const-class v1, Lcom/umeng/commonsdk/proguard/av;

    new-instance v2, Lcom/umeng/commonsdk/statistics/proto/Response$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/umeng/commonsdk/statistics/proto/Response$d;-><init>(Lcom/umeng/commonsdk/statistics/proto/Response$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/umeng/commonsdk/statistics/proto/Response$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 141
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/Response$e;->a:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    new-instance v2, Lcom/umeng/commonsdk/proguard/x;

    const-string v3, "resp_code"

    new-instance v4, Lcom/umeng/commonsdk/proguard/y;

    invoke-direct {v4, v7}, Lcom/umeng/commonsdk/proguard/y;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lcom/umeng/commonsdk/proguard/x;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/y;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/Response$e;->b:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    new-instance v2, Lcom/umeng/commonsdk/proguard/x;

    const-string v3, "msg"

    new-instance v4, Lcom/umeng/commonsdk/proguard/y;

    invoke-direct {v4, v8}, Lcom/umeng/commonsdk/proguard/y;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lcom/umeng/commonsdk/proguard/x;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/y;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/Response$e;->c:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    new-instance v2, Lcom/umeng/commonsdk/proguard/x;

    const-string v3, "imprint"

    new-instance v4, Lcom/umeng/commonsdk/proguard/ac;

    const-class v5, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-direct {v4, v9, v5}, Lcom/umeng/commonsdk/proguard/ac;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lcom/umeng/commonsdk/proguard/x;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/y;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->metaDataMap:Ljava/util/Map;

    .line 154
    const-class v0, Lcom/umeng/commonsdk/statistics/proto/Response;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/Response;->metaDataMap:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/x;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 155
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-byte v2, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/commonsdk/statistics/proto/Response$e;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/Response$e;->b:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/umeng/commonsdk/statistics/proto/Response$e;->c:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->optionals:[Lcom/umeng/commonsdk/statistics/proto/Response$e;

    .line 158
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/Response;-><init>()V

    .line 162
    iput p1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    .line 163
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->setResp_codeIsSet(Z)V

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/statistics/proto/Response;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-byte v2, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/commonsdk/statistics/proto/Response$e;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/Response$e;->b:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/umeng/commonsdk/statistics/proto/Response$e;->c:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->optionals:[Lcom/umeng/commonsdk/statistics/proto/Response$e;

    .line 170
    iget-byte v0, p1, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    .line 171
    iget v0, p1, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    iput v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    .line 172
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetMsg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    .line 175
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetImprint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/d;

    iget-object v1, p1, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/proto/d;-><init>(Lcom/umeng/commonsdk/statistics/proto/d;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 178
    :cond_1
    return-void
.end method

.method static synthetic access$300()Lcom/umeng/commonsdk/proguard/ap;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->STRUCT_DESC:Lcom/umeng/commonsdk/proguard/ap;

    return-object v0
.end method

.method static synthetic access$400()Lcom/umeng/commonsdk/proguard/af;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->RESP_CODE_FIELD_DESC:Lcom/umeng/commonsdk/proguard/af;

    return-object v0
.end method

.method static synthetic access$500()Lcom/umeng/commonsdk/proguard/af;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->MSG_FIELD_DESC:Lcom/umeng/commonsdk/proguard/af;

    return-object v0
.end method

.method static synthetic access$600()Lcom/umeng/commonsdk/proguard/af;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->IMPRINT_FIELD_DESC:Lcom/umeng/commonsdk/proguard/af;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 343
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    .line 344
    new-instance v0, Lcom/umeng/commonsdk/proguard/ae;

    new-instance v1, Lcom/umeng/commonsdk/proguard/aw;

    invoke-direct {v1, p1}, Lcom/umeng/commonsdk/proguard/aw;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ae;-><init>(Lcom/umeng/commonsdk/proguard/ay;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->read(Lcom/umeng/commonsdk/proguard/ak;)V
    :try_end_0
    .catch Lcom/umeng/commonsdk/proguard/r; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/r;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    :try_start_0
    new-instance v0, Lcom/umeng/commonsdk/proguard/ae;

    new-instance v1, Lcom/umeng/commonsdk/proguard/aw;

    invoke-direct {v1, p1}, Lcom/umeng/commonsdk/proguard/aw;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ae;-><init>(Lcom/umeng/commonsdk/proguard/ay;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->write(Lcom/umeng/commonsdk/proguard/ak;)V
    :try_end_0
    .catch Lcom/umeng/commonsdk/proguard/r; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/r;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->setResp_codeIsSet(Z)V

    .line 187
    iput v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    .line 188
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    .line 189
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 190
    return-void
.end method

.method public bridge synthetic deepCopy()Lcom/umeng/commonsdk/proguard/l;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/Response;->deepCopy()Lcom/umeng/commonsdk/statistics/proto/Response;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lcom/umeng/commonsdk/statistics/proto/Response;
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/Response;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/proto/Response;-><init>(Lcom/umeng/commonsdk/statistics/proto/Response;)V

    return-object v0
.end method

.method public bridge synthetic fieldForId(I)Lcom/umeng/commonsdk/proguard/s;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/Response;->fieldForId(I)Lcom/umeng/commonsdk/statistics/proto/Response$e;

    move-result-object v0

    return-object v0
.end method

.method public fieldForId(I)Lcom/umeng/commonsdk/statistics/proto/Response$e;
    .locals 1

    .prologue
    .line 273
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/proto/Response$e;->a(I)Lcom/umeng/commonsdk/statistics/proto/Response$e;

    move-result-object v0

    return-object v0
.end method

.method public getImprint()Lcom/umeng/commonsdk/statistics/proto/d;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResp_code()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    return v0
.end method

.method public isSetImprint()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetMsg()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetResp_code()Z
    .locals 2

    .prologue
    .line 211
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/i;->a(BI)Z

    move-result v0

    return v0
.end method

.method public read(Lcom/umeng/commonsdk/proguard/ak;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .prologue
    .line 278
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->schemes:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/proguard/at;

    invoke-interface {v0}, Lcom/umeng/commonsdk/proguard/at;->b()Lcom/umeng/commonsdk/proguard/as;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/commonsdk/proguard/as;->b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/proguard/l;)V

    .line 279
    return-void
.end method

.method public setImprint(Lcom/umeng/commonsdk/statistics/proto/d;)Lcom/umeng/commonsdk/statistics/proto/Response;
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 251
    return-object p0
.end method

.method public setImprintIsSet(Z)V
    .locals 1

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 270
    :cond_0
    return-void
.end method

.method public setMsg(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/Response;
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    .line 224
    return-object p0
.end method

.method public setMsgIsSet(Z)V
    .locals 1

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    .line 243
    :cond_0
    return-void
.end method

.method public setResp_code(I)Lcom/umeng/commonsdk/statistics/proto/Response;
    .locals 1

    .prologue
    .line 197
    iput p1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->setResp_codeIsSet(Z)V

    .line 199
    return-object p0
.end method

.method public setResp_codeIsSet(Z)V
    .locals 2

    .prologue
    .line 215
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/i;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    .line 216
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    const-string v1, "resp_code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget v1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetMsg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v1, "msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 299
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetImprint()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v1, "imprint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    if-nez v1, :cond_3

    .line 310
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_1
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 301
    :cond_2
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 312
    :cond_3
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public unsetImprint()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 256
    return-void
.end method

.method public unsetMsg()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public unsetResp_code()V
    .locals 2

    .prologue
    .line 203
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/i;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    .line 204
    return-void
.end method

.method public validate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/proto/d;->l()V

    .line 328
    :cond_0
    return-void
.end method

.method public write(Lcom/umeng/commonsdk/proguard/ak;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .prologue
    .line 283
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->schemes:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/proguard/at;

    invoke-interface {v0}, Lcom/umeng/commonsdk/proguard/at;->b()Lcom/umeng/commonsdk/proguard/as;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/commonsdk/proguard/as;->a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/proguard/l;)V

    .line 284
    return-void
.end method
