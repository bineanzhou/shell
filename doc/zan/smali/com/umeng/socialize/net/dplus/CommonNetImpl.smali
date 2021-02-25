.class public Lcom/umeng/socialize/net/dplus/CommonNetImpl;
.super Ljava/lang/Object;
.source "CommonNetImpl.java"

# interfaces
.implements Lcom/umeng/commonsdk/framework/UMLogDataProtocol;


# static fields
.field public static final AID:Ljava/lang/String; = "aid"

.field public static final AM:Ljava/lang/String; = "am"

.field public static final AS:Ljava/lang/String; = "as"

.field public static final AT:Ljava/lang/String; = "at"

.field public static final AUTH:Ljava/lang/String; = "auth"

.field public static final A_B:Ljava/lang/String; = "a_b"

.field public static final CANCEL:Ljava/lang/String; = "cancel"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CT:Ljava/lang/String; = "ct"

.field public static final DAU:Ljava/lang/String; = "dau"

.field public static final DURL:Ljava/lang/String; = "durl"

.field public static final E_M:Ljava/lang/String; = "e_m"

.field public static final FAIL:Ljava/lang/String; = "fail"

.field public static final FLAG_AUTH:I = 0x10000000

.field public static final FLAG_SHARE:I = 0x20000000

.field public static final FLAG_SHARE_EDIT:I = 0x1000000

.field public static final FLAG_SHARE_JUMP:I = 0x2000000

.field public static final HEADER:Ljava/lang/String; = "header"

.field public static final IMEI:Ljava/lang/String; = "imei"

.field public static final MAX_FILE_SIZE_IN_KB:I = 0x10000

.field public static final MAX_SEND_SIZE_IN_KB:I = 0x80000

.field public static final MAX_SIZE_IN_KB:I = 0x500000

.field public static final MENUBG:Ljava/lang/String; = "menubg"

.field public static final M_P:Ljava/lang/String; = "m_p"

.field public static final M_U:Ljava/lang/String; = "m_u"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PCV:Ljava/lang/String; = "s_pcv"

.field public static final PF:Ljava/lang/String; = "pf"

.field public static final PIC:Ljava/lang/String; = "pic"

.field public static final PICURL:Ljava/lang/String; = "picurl"

.field public static final POSITION:Ljava/lang/String; = "position"

.field public static final REGION:Ljava/lang/String; = "regn"

.field public static final RESULT:Ljava/lang/String; = "result"

.field public static final SDKT:Ljava/lang/String; = "sdkt"

.field public static final SDKVERSON:Ljava/lang/String; = "s_sdk_v"

.field public static final SEX:Ljava/lang/String; = "sex"

.field public static final SHARE:Ljava/lang/String; = "share"

.field public static final SHARETYPE:Ljava/lang/String; = "s_t"

.field public static final SM:Ljava/lang/String; = "sm"

.field public static final STATS:Ljava/lang/String; = "stats"

.field public static final STATS_TAG:Ljava/lang/String; = "stats"

.field public static final STYPE:Ljava/lang/String; = "stype"

.field public static final SUCCESS:Ljava/lang/String; = "success"

.field public static final S_A_E:Ljava/lang/String; = "s_a_e"

.field public static final S_A_S:Ljava/lang/String; = "s_a_s"

.field public static final S_DAU:Ljava/lang/String; = "s_dau"

.field public static final S_E:Ljava/lang/String; = "s_e"

.field public static final S_I:Ljava/lang/String; = "s_i"

.field public static final S_I_E:Ljava/lang/String; = "s_i_e"

.field public static final S_I_S:Ljava/lang/String; = "s_i_s"

.field public static final S_S_E:Ljava/lang/String; = "s_s_e"

.field public static final S_S_S:Ljava/lang/String; = "s_s_s"

.field public static final TAG:Ljava/lang/String; = "tag"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TS:Ljava/lang/String; = "ts"

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final UMID:Ljava/lang/String; = "umid"

.field public static final UN:Ljava/lang/String; = "un"

.field public static final UNIONID:Ljava/lang/String; = "unionid"

.field public static final UP:Ljava/lang/String; = "up"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final USERINFO:Ljava/lang/String; = "userinfo"

.field public static final U_C:Ljava/lang/String; = "u_c"

.field private static isSendStats:Z

.field private static singleton:Lcom/umeng/socialize/net/dplus/CommonNetImpl;


# instance fields
.field private authList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private dauList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private infoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConetxt:Landroid/content/Context;

.field private shareList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private statsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->isSendStats:Z

    .line 228
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->singleton:Lcom/umeng/socialize/net/dplus/CommonNetImpl;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->shareList:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->authList:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->infoList:Ljava/util/ArrayList;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->dauList:Ljava/util/ArrayList;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->statsList:Ljava/util/ArrayList;

    .line 231
    iput-object p1, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    .line 232
    return-void
.end method

.method private static constructHeader()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 411
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 412
    const-string v1, "s_sdk_v"

    const-string v2, "6.9.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 413
    const-string v1, "s_pcv"

    const-string v2, "3.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/CommonNetImpl;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->singleton:Lcom/umeng/socialize/net/dplus/CommonNetImpl;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/net/dplus/CommonNetImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->singleton:Lcom/umeng/socialize/net/dplus/CommonNetImpl;

    .line 239
    :cond_0
    sget-object v0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->singleton:Lcom/umeng/socialize/net/dplus/CommonNetImpl;

    return-object v0
.end method

.method private getObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 322
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 324
    :try_start_0
    const-string v0, "header"

    invoke-static {}, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->constructHeader()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 326
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 328
    const-string v3, "share"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const-string v2, "content"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-object v1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private saveFile(Lorg/json/JSONObject;I)V
    .locals 1

    .prologue
    .line 469
    if-nez p1, :cond_0

    .line 495
    :goto_0
    return-void

    .line 473
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 492
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->insertStats(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 475
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->insertAuth(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 479
    :pswitch_2
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->insertS_E(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 482
    :pswitch_3
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->insertUserInfo(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 485
    :pswitch_4
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->insertDau(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 489
    :pswitch_5
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->insertStats(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 473
    :pswitch_data_0
    .packed-switch 0x6001
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public removeCacheData(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->shareList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->shareList:Ljava/util/ArrayList;

    const-string v2, "s_e"

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/net/dplus/db/DBManager;->delete(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->shareList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->authList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->authList:Ljava/util/ArrayList;

    const-string v2, "auth"

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/net/dplus/db/DBManager;->delete(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->authList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->dauList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->dauList:Ljava/util/ArrayList;

    const-string v2, "dau"

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/net/dplus/db/DBManager;->delete(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->dauList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->infoList:Ljava/util/ArrayList;

    const-string v2, "userinfo"

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/net/dplus/db/DBManager;->delete(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->statsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 299
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->isSendStats:Z

    .line 300
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->statsList:Ljava/util/ArrayList;

    const-string v2, "stats"

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/net/dplus/db/DBManager;->delete(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->statsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 315
    :cond_4
    return-void
.end method

.method public setupReportData(J)Lorg/json/JSONObject;
    .locals 19

    .prologue
    .line 341
    move-wide/from16 v0, p1

    long-to-double v10, v0

    .line 342
    invoke-static {}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->checkFile()D

    move-result-wide v2

    .line 343
    const/4 v8, 0x1

    .line 344
    move-wide/from16 v0, p1

    long-to-double v4, v0

    const-wide/high16 v6, 0x40d8000000000000L    # 24576.0

    add-double/2addr v2, v6

    cmpl-double v2, v4, v2

    if-lez v2, :cond_0

    .line 345
    const/4 v8, 0x0

    .line 349
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 351
    :try_start_0
    const-string v3, "header"

    invoke-static {}, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->constructHeader()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 353
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 354
    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    .line 355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v3

    const-string v4, "s_e"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->shareList:Ljava/util/ArrayList;

    sub-double v6, v10, v14

    invoke-virtual/range {v3 .. v8}, Lcom/umeng/socialize/net/dplus/db/DBManager;->select(Ljava/lang/String;Ljava/util/ArrayList;DZ)Lorg/json/JSONArray;

    move-result-object v13

    .line 356
    invoke-virtual {v13}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-double v4, v3

    add-double/2addr v14, v4

    .line 357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v3

    const-string v4, "auth"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->authList:Ljava/util/ArrayList;

    sub-double v6, v10, v14

    invoke-virtual/range {v3 .. v8}, Lcom/umeng/socialize/net/dplus/db/DBManager;->select(Ljava/lang/String;Ljava/util/ArrayList;DZ)Lorg/json/JSONArray;

    move-result-object v16

    .line 358
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-double v4, v3

    add-double/2addr v14, v4

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v3

    const-string v4, "userinfo"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->infoList:Ljava/util/ArrayList;

    sub-double v6, v10, v14

    invoke-virtual/range {v3 .. v8}, Lcom/umeng/socialize/net/dplus/db/DBManager;->select(Ljava/lang/String;Ljava/util/ArrayList;DZ)Lorg/json/JSONArray;

    move-result-object v17

    .line 360
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-double v4, v3

    add-double/2addr v14, v4

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v3

    const-string v4, "dau"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->dauList:Ljava/util/ArrayList;

    sub-double v6, v10, v14

    invoke-virtual/range {v3 .. v8}, Lcom/umeng/socialize/net/dplus/db/DBManager;->select(Ljava/lang/String;Ljava/util/ArrayList;DZ)Lorg/json/JSONArray;

    move-result-object v18

    .line 362
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-double v4, v3

    add-double v6, v14, v4

    .line 364
    invoke-static {}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->checkFile()D

    move-result-wide v4

    .line 365
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 366
    const-string v3, "dau"

    move-object/from16 v0, v18

    invoke-virtual {v12, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    :cond_1
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 369
    const-string v3, "s_e"

    invoke-virtual {v12, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 372
    const-string v3, "auth"

    move-object/from16 v0, v16

    invoke-virtual {v12, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 375
    const-string v3, "userinfo"

    move-object/from16 v0, v17

    invoke-virtual {v12, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    :cond_4
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 378
    const-wide/high16 v14, 0x4120000000000000L    # 524288.0

    cmpl-double v4, v4, v14

    if-gez v4, :cond_5

    sget-boolean v4, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->isSendStats:Z

    if-eqz v4, :cond_6

    .line 379
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v3

    const-string v4, "stats"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->statsList:Ljava/util/ArrayList;

    sub-double v6, v10, v6

    invoke-virtual/range {v3 .. v8}, Lcom/umeng/socialize/net/dplus/db/DBManager;->select(Ljava/lang/String;Ljava/util/ArrayList;DZ)Lorg/json/JSONArray;

    move-result-object v3

    .line 380
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_6

    .line 381
    const-string v4, "stats"

    invoke-virtual {v12, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    :cond_6
    const-string v4, "share"

    invoke-virtual {v9, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    const-string v4, "content"

    invoke-virtual {v2, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_7

    .line 389
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_7

    .line 390
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_7

    .line 391
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_7

    .line 392
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_7

    .line 395
    const/4 v2, 0x0

    .line 402
    :cond_7
    :goto_0
    if-eqz v2, :cond_8

    .line 403
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_8

    .line 404
    const/4 v2, 0x0

    .line 408
    :goto_1
    return-object v2

    .line 398
    :catch_0
    move-exception v3

    .line 399
    invoke-static {v3}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 408
    :cond_8
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public workEvent(Ljava/lang/Object;I)V
    .locals 3

    .prologue
    .line 244
    const/16 v0, 0x6008

    if-ne p2, v0, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->getObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    .line 256
    const-string v1, "header"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 257
    const-string v2, "content"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 260
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 261
    iget-object v2, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 278
    :cond_0
    return-void
.end method
