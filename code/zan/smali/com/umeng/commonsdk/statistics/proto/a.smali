.class public Lcom/umeng/commonsdk/statistics/proto/a;
.super Ljava/lang/Object;
.source "IdJournal.java"

# interfaces
.implements Lcom/umeng/commonsdk/proguard/l;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/proto/a$c;,
        Lcom/umeng/commonsdk/statistics/proto/a$d;,
        Lcom/umeng/commonsdk/statistics/proto/a$a;,
        Lcom/umeng/commonsdk/statistics/proto/a$b;,
        Lcom/umeng/commonsdk/statistics/proto/a$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/commonsdk/proguard/l",
        "<",
        "Lcom/umeng/commonsdk/statistics/proto/a;",
        "Lcom/umeng/commonsdk/statistics/proto/a$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/commonsdk/statistics/proto/a$e;",
            "Lcom/umeng/commonsdk/proguard/x;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:J = 0x7ebdcad047a76397L

.field private static final g:Lcom/umeng/commonsdk/proguard/ap;

.field private static final h:Lcom/umeng/commonsdk/proguard/af;

.field private static final i:Lcom/umeng/commonsdk/proguard/af;

.field private static final j:Lcom/umeng/commonsdk/proguard/af;

.field private static final k:Lcom/umeng/commonsdk/proguard/af;

.field private static final l:Ljava/util/Map;
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

.field private static final m:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field private n:B

.field private o:[Lcom/umeng/commonsdk/statistics/proto/a$e;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0xb

    .line 41
    new-instance v0, Lcom/umeng/commonsdk/proguard/ap;

    const-string v1, "IdJournal"

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ap;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->g:Lcom/umeng/commonsdk/proguard/ap;

    .line 44
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    const-string v1, "domain"

    invoke-direct {v0, v1, v5, v6}, Lcom/umeng/commonsdk/proguard/af;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->h:Lcom/umeng/commonsdk/proguard/af;

    .line 46
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    const-string v1, "old_id"

    invoke-direct {v0, v1, v5, v7}, Lcom/umeng/commonsdk/proguard/af;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->i:Lcom/umeng/commonsdk/proguard/af;

    .line 48
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    const-string v1, "new_id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/umeng/commonsdk/proguard/af;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->j:Lcom/umeng/commonsdk/proguard/af;

    .line 50
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    const-string v1, "ts"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v8, v2}, Lcom/umeng/commonsdk/proguard/af;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->k:Lcom/umeng/commonsdk/proguard/af;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->l:Ljava/util/Map;

    .line 57
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->l:Ljava/util/Map;

    const-class v1, Lcom/umeng/commonsdk/proguard/au;

    new-instance v2, Lcom/umeng/commonsdk/statistics/proto/a$b;

    invoke-direct {v2, v3}, Lcom/umeng/commonsdk/statistics/proto/a$b;-><init>(Lcom/umeng/commonsdk/statistics/proto/a$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->l:Ljava/util/Map;

    const-class v1, Lcom/umeng/commonsdk/proguard/av;

    new-instance v2, Lcom/umeng/commonsdk/statistics/proto/a$d;

    invoke-direct {v2, v3}, Lcom/umeng/commonsdk/statistics/proto/a$d;-><init>(Lcom/umeng/commonsdk/statistics/proto/a$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/umeng/commonsdk/statistics/proto/a$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 146
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/a$e;->a:Lcom/umeng/commonsdk/statistics/proto/a$e;

    new-instance v2, Lcom/umeng/commonsdk/proguard/x;

    const-string v3, "domain"

    new-instance v4, Lcom/umeng/commonsdk/proguard/y;

    invoke-direct {v4, v5}, Lcom/umeng/commonsdk/proguard/y;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lcom/umeng/commonsdk/proguard/x;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/y;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/a$e;->b:Lcom/umeng/commonsdk/statistics/proto/a$e;

    new-instance v2, Lcom/umeng/commonsdk/proguard/x;

    const-string v3, "old_id"

    new-instance v4, Lcom/umeng/commonsdk/proguard/y;

    invoke-direct {v4, v5}, Lcom/umeng/commonsdk/proguard/y;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lcom/umeng/commonsdk/proguard/x;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/y;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/a$e;->c:Lcom/umeng/commonsdk/statistics/proto/a$e;

    new-instance v2, Lcom/umeng/commonsdk/proguard/x;

    const-string v3, "new_id"

    new-instance v4, Lcom/umeng/commonsdk/proguard/y;

    invoke-direct {v4, v5}, Lcom/umeng/commonsdk/proguard/y;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lcom/umeng/commonsdk/proguard/x;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/y;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/a$e;->d:Lcom/umeng/commonsdk/statistics/proto/a$e;

    new-instance v2, Lcom/umeng/commonsdk/proguard/x;

    const-string v3, "ts"

    new-instance v4, Lcom/umeng/commonsdk/proguard/y;

    invoke-direct {v4, v8}, Lcom/umeng/commonsdk/proguard/y;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lcom/umeng/commonsdk/proguard/x;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/y;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->e:Ljava/util/Map;

    .line 162
    const-class v0, Lcom/umeng/commonsdk/statistics/proto/a;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/a;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/x;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 163
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-byte v2, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    .line 139
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/umeng/commonsdk/statistics/proto/a$e;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/a$e;->b:Lcom/umeng/commonsdk/statistics/proto/a$e;

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->o:[Lcom/umeng/commonsdk/statistics/proto/a$e;

    .line 166
    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/statistics/proto/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-byte v2, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    .line 139
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/umeng/commonsdk/statistics/proto/a$e;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/a$e;->b:Lcom/umeng/commonsdk/statistics/proto/a$e;

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->o:[Lcom/umeng/commonsdk/statistics/proto/a$e;

    .line 180
    iget-byte v0, p1, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    .line 181
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    .line 184
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    .line 187
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/a;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    .line 190
    :cond_2
    iget-wide v0, p1, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/a;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    .line 171
    iput-object p2, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    .line 172
    iput-wide p3, p0, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/a;->d(Z)V

    .line 174
    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 396
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    .line 397
    new-instance v0, Lcom/umeng/commonsdk/proguard/ae;

    new-instance v1, Lcom/umeng/commonsdk/proguard/aw;

    invoke-direct {v1, p1}, Lcom/umeng/commonsdk/proguard/aw;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ae;-><init>(Lcom/umeng/commonsdk/proguard/ay;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/a;->read(Lcom/umeng/commonsdk/proguard/ak;)V
    :try_end_0
    .catch Lcom/umeng/commonsdk/proguard/r; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 400
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/r;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    :try_start_0
    new-instance v0, Lcom/umeng/commonsdk/proguard/ae;

    new-instance v1, Lcom/umeng/commonsdk/proguard/aw;

    invoke-direct {v1, p1}, Lcom/umeng/commonsdk/proguard/aw;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ae;-><init>(Lcom/umeng/commonsdk/proguard/ay;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/a;->write(Lcom/umeng/commonsdk/proguard/ak;)V
    :try_end_0
    .catch Lcom/umeng/commonsdk/proguard/r; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 388
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/r;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic o()Lcom/umeng/commonsdk/proguard/ap;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->g:Lcom/umeng/commonsdk/proguard/ap;

    return-object v0
.end method

.method static synthetic p()Lcom/umeng/commonsdk/proguard/af;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->h:Lcom/umeng/commonsdk/proguard/af;

    return-object v0
.end method

.method static synthetic q()Lcom/umeng/commonsdk/proguard/af;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->i:Lcom/umeng/commonsdk/proguard/af;

    return-object v0
.end method

.method static synthetic r()Lcom/umeng/commonsdk/proguard/af;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->j:Lcom/umeng/commonsdk/proguard/af;

    return-object v0
.end method

.method static synthetic s()Lcom/umeng/commonsdk/proguard/af;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->k:Lcom/umeng/commonsdk/proguard/af;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/umeng/commonsdk/statistics/proto/a$e;
    .locals 1

    .prologue
    .line 314
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/proto/a$e;->a(I)Lcom/umeng/commonsdk/statistics/proto/a$e;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/umeng/commonsdk/statistics/proto/a;
    .locals 1

    .prologue
    .line 194
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/proto/a;-><init>(Lcom/umeng/commonsdk/statistics/proto/a;)V

    return-object v0
.end method

.method public a(J)Lcom/umeng/commonsdk/statistics/proto/a;
    .locals 1

    .prologue
    .line 292
    iput-wide p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    .line 293
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/a;->d(Z)V

    .line 294
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/a;
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    .line 212
    return-object p0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    .line 231
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/a;
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    .line 239
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 255
    if-nez p1, :cond_0

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    .line 258
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/a;
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    .line 266
    return-object p0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 282
    if-nez p1, :cond_0

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    .line 285
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    .line 200
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    .line 201
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/a;->d(Z)V

    .line 203
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    .line 204
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 310
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/i;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    .line 311
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic deepCopy()Lcom/umeng/commonsdk/proguard/l;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/a;->a()Lcom/umeng/commonsdk/statistics/proto/a;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public synthetic fieldForId(I)Lcom/umeng/commonsdk/proguard/s;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->a(I)Lcom/umeng/commonsdk/statistics/proto/a$e;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 288
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    return-wide v0
.end method

.method public l()V
    .locals 2

    .prologue
    .line 298
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/i;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    .line 299
    return-void
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 306
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/i;->a(BI)Z

    move-result v0

    return v0
.end method

.method public n()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Lcom/umeng/commonsdk/proguard/al;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'domain\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 372
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/al;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 375
    new-instance v0, Lcom/umeng/commonsdk/proguard/al;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'new_id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 376
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/al;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_1
    return-void
.end method

.method public read(Lcom/umeng/commonsdk/proguard/ak;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .prologue
    .line 319
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->l:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/proguard/at;

    invoke-interface {v0}, Lcom/umeng/commonsdk/proguard/at;->b()Lcom/umeng/commonsdk/proguard/as;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/commonsdk/proguard/as;->b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/proguard/l;)V

    .line 320
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdJournal("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    const-string v1, "domain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 334
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :goto_0
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/a;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const-string v1, "old_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 344
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_0
    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v1, "new_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 354
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 364
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 346
    :cond_2
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 356
    :cond_3
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public write(Lcom/umeng/commonsdk/proguard/ak;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .prologue
    .line 324
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->l:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/proguard/at;

    invoke-interface {v0}, Lcom/umeng/commonsdk/proguard/at;->b()Lcom/umeng/commonsdk/proguard/as;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/commonsdk/proguard/as;->a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/proguard/l;)V

    .line 325
    return-void
.end method
