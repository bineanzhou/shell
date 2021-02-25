.class public Lcom/alibaba/sdk/android/utils/AMSDevReporter;
.super Ljava/lang/Object;
.source "AMSDevReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;,
        Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;,
        Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;

.field private static a:Lcom/alibaba/sdk/android/utils/c;

.field private static a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;",
            "Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/util/concurrent/ExecutorService;

.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 83
    new-instance v1, Lcom/alibaba/sdk/android/utils/a;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/utils/a;-><init>()V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Ljava/util/concurrent/ExecutorService;

    .line 84
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    sput-boolean v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Z

    .line 91
    new-instance v1, Lcom/alibaba/sdk/android/utils/c;

    const-string v2, "AMSDevReporter"

    invoke-direct {v1, v2}, Lcom/alibaba/sdk/android/utils/c;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Lcom/alibaba/sdk/android/utils/c;

    .line 102
    invoke-static {}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->values()[Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 103
    sget-object v4, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v5, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;->UNREPORTED:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

    invoke-virtual {v4, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/alibaba/sdk/android/utils/c;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Lcom/alibaba/sdk/android/utils/c;

    return-object v0
.end method

.method private static a(Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    if-eqz p2, :cond_1

    .line 274
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;->AMS_EXTINFO_KEY_VERSION:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    invoke-static {v0}, Lcom/alibaba/sdk/android/utils/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;->AMS_EXTINFO_KEY_PACKAGE:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkExtInfoKeyEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 279
    invoke-static {v0}, Lcom/alibaba/sdk/android/utils/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v1, 0x3c

    .line 159
    const/4 v2, 0x0

    .line 160
    const/4 v0, 0x5

    .line 162
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    sget-object v4, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;->UNREPORTED:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

    if-eq v4, v5, :cond_1

    .line 165
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Lcom/alibaba/sdk/android/utils/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] already reported, return."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/utils/c;->b(Ljava/lang/String;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    :goto_1
    sget-object v4, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Lcom/alibaba/sdk/android/utils/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Report ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], times: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/sdk/android/utils/c;->b(Ljava/lang/String;)V

    .line 170
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a(Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)Z

    move-result v4

    .line 171
    if-nez v4, :cond_3

    .line 173
    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0xa

    if-gt v2, v4, :cond_2

    .line 174
    sget-object v4, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Lcom/alibaba/sdk/android/utils/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Report ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] failed, wait for ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] seconds."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/sdk/android/utils/c;->b(Ljava/lang/String;)V

    .line 175
    int-to-double v4, v0

    invoke-static {v4, v5}, Lcom/alibaba/sdk/android/utils/d;->a(D)V

    .line 176
    mul-int/lit8 v0, v0, 0x2

    .line 177
    if-lt v0, v1, :cond_1

    move v0, v1

    .line 178
    goto :goto_1

    .line 181
    :cond_2
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Lcom/alibaba/sdk/android/utils/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] stat failed, exceed max retry times, return."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/utils/c;->c(Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;->UNREPORTED:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Z

    .line 193
    :goto_2
    sget-boolean v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Z

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Lcom/alibaba/sdk/android/utils/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] failed, clear remain report in queue."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/utils/c;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :cond_3
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Lcom/alibaba/sdk/android/utils/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] stat success."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/utils/c;->b(Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;->REPORTED:Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Z

    return v0
.end method

.method private static a(Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 199
    .line 203
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 204
    const v0, 0xa005

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 206
    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 207
    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Lcom/alibaba/sdk/android/utils/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stat: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/sdk/android/utils/c;->b(Ljava/lang/String;)V

    .line 208
    invoke-static {p0, v0, p1}, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a(Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "23356390Raw"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/alibaba/sdk/android/utils/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "16594f72217bece5a457b4803a48f2da"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/alibaba/sdk/android/utils/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "16594f72217bece5a457b4803a48f2da"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {v0}, Lcom/alibaba/sdk/android/utils/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://adash.man.aliyuncs.com:80/man/api?ak=23356390&s="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 216
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 217
    const/16 v5, 0x3a98

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 219
    const-string v6, "Content-Type"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "multipart/form-data; boundary="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\nContent-Disposition: form-data; name=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Raw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"\r\nContent-Type: text/plain; charset=UTF-8\r\n\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\r\n--"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "--\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 224
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    .line 225
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 226
    const/16 v6, 0xc8

    if-ne v1, v6, :cond_b

    .line 227
    new-instance v6, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 228
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 231
    :goto_0
    invoke-virtual {v6, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 232
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v4, v9, v7}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 249
    :catch_0
    move-exception v1

    move-object v4, v6

    move-object v2, v0

    move-object v0, v1

    move-object v1, v5

    .line 250
    :goto_1
    :try_start_4
    sget-object v5, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Lcom/alibaba/sdk/android/utils/c;

    invoke-virtual {v5, v0}, Lcom/alibaba/sdk/android/utils/c;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 252
    if-eqz v2, :cond_1

    .line 253
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 256
    :cond_1
    if-eqz v1, :cond_2

    .line 257
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 259
    :cond_2
    if-eqz v4, :cond_3

    .line 260
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_2
    move v0, v3

    .line 266
    :goto_3
    return v0

    .line 234
    :cond_4
    :try_start_6
    sget-object v4, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Lcom/alibaba/sdk/android/utils/c;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get MAN response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/alibaba/sdk/android/utils/c;->a(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 237
    :try_start_7
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 238
    const-string v1, "success"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 239
    const-string v4, "success"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result v1

    if-eqz v1, :cond_8

    .line 252
    if-eqz v0, :cond_5

    .line 253
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 256
    :cond_5
    if-eqz v5, :cond_6

    .line 257
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 259
    :cond_6
    if-eqz v6, :cond_7

    .line 260
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_7
    :goto_4
    move v0, v2

    .line 264
    goto :goto_3

    .line 262
    :catch_1
    move-exception v0

    .line 263
    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Lcom/alibaba/sdk/android/utils/c;

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/utils/c;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 242
    :catch_2
    move-exception v1

    .line 243
    :try_start_9
    sget-object v2, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Lcom/alibaba/sdk/android/utils/c;

    invoke-virtual {v2, v1}, Lcom/alibaba/sdk/android/utils/c;->a(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 252
    :cond_8
    :goto_5
    if-eqz v0, :cond_9

    .line 253
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 256
    :cond_9
    if-eqz v5, :cond_a

    .line 257
    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 259
    :cond_a
    if-eqz v6, :cond_3

    .line 260
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    .line 262
    :catch_3
    move-exception v0

    .line 263
    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Lcom/alibaba/sdk/android/utils/c;

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/utils/c;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 247
    :cond_b
    :try_start_b
    sget-object v2, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Lcom/alibaba/sdk/android/utils/c;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MAN API error, response code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/sdk/android/utils/c;->c(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object v6, v4

    goto :goto_5

    .line 262
    :catch_4
    move-exception v0

    .line 263
    sget-object v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Lcom/alibaba/sdk/android/utils/c;

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/utils/c;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 252
    :catchall_0
    move-exception v0

    move-object v6, v4

    move-object v2, v4

    :goto_6
    if-eqz v2, :cond_c

    .line 253
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 256
    :cond_c
    if-eqz v4, :cond_d

    .line 257
    :try_start_c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 259
    :cond_d
    if-eqz v6, :cond_e

    .line 260
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 264
    :cond_e
    :goto_7
    throw v0

    .line 262
    :catch_5
    move-exception v1

    .line 263
    sget-object v2, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Lcom/alibaba/sdk/android/utils/c;

    invoke-virtual {v2, v1}, Lcom/alibaba/sdk/android/utils/c;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 252
    :catchall_1
    move-exception v1

    move-object v6, v4

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v6, v4

    move-object v2, v0

    move-object v0, v1

    move-object v4, v5

    goto :goto_6

    :catchall_3
    move-exception v1

    move-object v4, v5

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v6, v4

    move-object v4, v1

    goto :goto_6

    .line 249
    :catch_6
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    goto/16 :goto_1

    :catch_7
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v4

    goto/16 :goto_1

    :catch_8
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_1
.end method

.method public static asyncReport(Landroid/content/Context;Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;)V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->asyncReport(Landroid/content/Context;Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)V

    .line 122
    return-void
.end method

.method public static asyncReport(Landroid/content/Context;Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    if-nez p0, :cond_0

    .line 132
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Lcom/alibaba/sdk/android/utils/c;

    const-string v1, "Context is null, return."

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/utils/c;->c(Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 135
    :cond_0
    sput-object p0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Landroid/content/Context;

    .line 136
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Lcom/alibaba/sdk/android/utils/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] to report queue."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/utils/c;->b(Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Z

    .line 138
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alibaba/sdk/android/utils/AMSDevReporter$1;

    invoke-direct {v1, p1, p2}, Lcom/alibaba/sdk/android/utils/AMSDevReporter$1;-><init>(Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a(Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;Ljava/util/Map;)V

    return-void
.end method

.method public static getReportStatus(Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSSdkTypeEnum;)Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter$AMSReportStatusEnum;

    return-object v0
.end method

.method public static setLogEnabled(Z)V
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/alibaba/sdk/android/utils/AMSDevReporter;->a:Lcom/alibaba/sdk/android/utils/c;

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/utils/c;->setLogEnabled(Z)V

    .line 109
    return-void
.end method
