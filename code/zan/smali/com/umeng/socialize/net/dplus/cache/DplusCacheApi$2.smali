.class Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$2;
.super Ljava/lang/Object;
.source "DplusCacheApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->readFile(Landroid/content/Context;ILcom/umeng/socialize/net/dplus/cache/DplusCacheListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lcom/umeng/socialize/net/dplus/cache/DplusCacheListener;

.field final synthetic d:Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;Landroid/content/Context;ILcom/umeng/socialize/net/dplus/cache/DplusCacheListener;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$2;->d:Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;

    iput-object p2, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$2;->a:Landroid/content/Context;

    iput p3, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$2;->b:I

    iput-object p4, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$2;->c:Lcom/umeng/socialize/net/dplus/cache/DplusCacheListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 157
    const-wide/high16 v10, 0x4130000000000000L    # 1048576.0

    .line 159
    const-wide/high16 v12, 0x4130000000000000L    # 1048576.0

    .line 160
    invoke-static {}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->checkFile()D

    move-result-wide v2

    .line 161
    const/4 v8, 0x1

    .line 162
    const-wide/high16 v4, 0x4154000000000000L    # 5242880.0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_0

    .line 163
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v2

    const-string v3, "stats"

    invoke-virtual {v2, v3}, Lcom/umeng/socialize/net/dplus/db/DBManager;->deleteTable(Ljava/lang/String;)V

    .line 229
    :goto_0
    return-void

    .line 167
    :cond_0
    const-wide/high16 v4, 0x40d8000000000000L    # 24576.0

    add-double/2addr v2, v4

    cmpl-double v2, v12, v2

    if-lez v2, :cond_1

    .line 168
    const/4 v8, 0x0

    .line 170
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 173
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 174
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 175
    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$2;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v3

    const-string v4, "s_e"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$2;->d:Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;

    invoke-static {v5}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->a(Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;)Ljava/util/ArrayList;

    move-result-object v5

    sub-double v6, v10, v14

    invoke-virtual/range {v3 .. v8}, Lcom/umeng/socialize/net/dplus/db/DBManager;->select(Ljava/lang/String;Ljava/util/ArrayList;DZ)Lorg/json/JSONArray;

    move-result-object v16

    .line 177
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-double v4, v3

    add-double/2addr v14, v4

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$2;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v3

    const-string v4, "auth"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$2;->d:Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;

    invoke-static {v5}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->b(Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;)Ljava/util/ArrayList;

    move-result-object v5

    sub-double v6, v10, v14

    invoke-virtual/range {v3 .. v8}, Lcom/umeng/socialize/net/dplus/db/DBManager;->select(Ljava/lang/String;Ljava/util/ArrayList;DZ)Lorg/json/JSONArray;

    move-result-object v17

    .line 179
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-double v4, v3

    add-double/2addr v14, v4

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$2;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v3

    const-string v4, "userinfo"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$2;->d:Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;

    invoke-static {v5}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->c(Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;)Ljava/util/ArrayList;

    move-result-object v5

    sub-double v6, v10, v14

    invoke-virtual/range {v3 .. v8}, Lcom/umeng/socialize/net/dplus/db/DBManager;->select(Ljava/lang/String;Ljava/util/ArrayList;DZ)Lorg/json/JSONArray;

    move-result-object v18

    .line 181
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-double v4, v3

    add-double/2addr v14, v4

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$2;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v3

    const-string v4, "dau"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$2;->d:Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;

    invoke-static {v5}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->d(Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;)Ljava/util/ArrayList;

    move-result-object v5

    sub-double v6, v10, v14

    invoke-virtual/range {v3 .. v8}, Lcom/umeng/socialize/net/dplus/db/DBManager;->select(Ljava/lang/String;Ljava/util/ArrayList;DZ)Lorg/json/JSONArray;

    move-result-object v19

    .line 183
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-double v4, v3

    add-double v6, v14, v4

    .line 185
    invoke-static {}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->checkFile()D

    move-result-wide v4

    .line 186
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    const-string v3, "dau"

    move-object/from16 v0, v19

    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 190
    const-string v3, "s_e"

    move-object/from16 v0, v16

    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 193
    const-string v3, "auth"

    move-object/from16 v0, v17

    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    :cond_4
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_5

    .line 196
    const-string v3, "userinfo"

    move-object/from16 v0, v18

    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    :cond_5
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 199
    const-wide/high16 v14, 0x4120000000000000L    # 524288.0

    cmpl-double v4, v4, v14

    if-gez v4, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$2;->b:I

    const/16 v5, 0x6007

    if-ne v4, v5, :cond_7

    .line 200
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$2;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v3

    const-string v4, "stats"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$2;->d:Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;

    invoke-static {v5}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->e(Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;)Ljava/util/ArrayList;

    move-result-object v5

    sub-double v6, v10, v6

    invoke-virtual/range {v3 .. v8}, Lcom/umeng/socialize/net/dplus/db/DBManager;->select(Ljava/lang/String;Ljava/util/ArrayList;DZ)Lorg/json/JSONArray;

    move-result-object v3

    .line 201
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_7

    .line 202
    const-string v4, "stats"

    invoke-virtual {v9, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    :cond_7
    const-string v4, "share"

    invoke-virtual {v2, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_8

    .line 210
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_8

    .line 211
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_8

    .line 212
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_8

    .line 213
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_8

    .line 216
    const/4 v2, 0x0

    .line 222
    :cond_8
    :goto_1
    if-eqz v2, :cond_9

    .line 223
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-double v4, v3

    cmpl-double v3, v4, v12

    if-lez v3, :cond_9

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$2;->c:Lcom/umeng/socialize/net/dplus/cache/DplusCacheListener;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheListener;->onResult(Lorg/json/JSONObject;)V

    .line 228
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$2;->c:Lcom/umeng/socialize/net/dplus/cache/DplusCacheListener;

    invoke-interface {v3, v2}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheListener;->onResult(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 219
    :catch_0
    move-exception v3

    .line 220
    sget-object v4, Lcom/umeng/socialize/utils/UmengText$CACHE;->CACHEFILE:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
