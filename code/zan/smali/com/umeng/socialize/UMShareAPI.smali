.class public Lcom/umeng/socialize/UMShareAPI;
.super Ljava/lang/Object;
.source "UMShareAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/UMShareAPI$a;
    }
.end annotation


# static fields
.field private static a:Lcom/umeng/socialize/UMShareAPI;


# instance fields
.field private b:Lcom/umeng/socialize/a/a;

.field private c:Lcom/umeng/socialize/UMShareConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/UMShareAPI;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/umeng/socialize/UMShareConfig;

    invoke-direct {v0}, Lcom/umeng/socialize/UMShareConfig;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->c:Lcom/umeng/socialize/UMShareConfig;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/ContextUtil;->setContext(Landroid/content/Context;)V

    .line 50
    new-instance v0, Lcom/umeng/socialize/a/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/socialize/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    .line 51
    invoke-direct {p0, p1}, Lcom/umeng/socialize/UMShareAPI;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/socialize/UMShareAPI;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lcom/umeng/socialize/UMShareAPI$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/socialize/UMShareAPI$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/umeng/socialize/UMShareAPI$a;->execute()Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;

    .line 55
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/UMShareAPI;)Lcom/umeng/socialize/a/a;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/socialize/UMShareAPI;Lcom/umeng/socialize/a/a;)Lcom/umeng/socialize/a/a;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    return-object p1
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 64
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 65
    const-string v0, "activity"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 67
    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 71
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_0

    .line 72
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 77
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 254
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 256
    array-length v5, v4

    move v2, v3

    move v0, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 257
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onActivityResult"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v1

    .line 256
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 262
    :cond_1
    if-nez v0, :cond_2

    .line 263
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v2, Lcom/umeng/socialize/utils/UmengText$CHECK;->ALL_NO_ONACTIVITY:Ljava/lang/String;

    aput-object v2, v0, v3

    sget-object v2, Lcom/umeng/socialize/utils/UrlUtil;->ALL_NO_ONACTIVITY:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->mutlE([Ljava/lang/String;)V

    .line 265
    :cond_2
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v0, :cond_4

    .line 266
    invoke-static {p1}, Lcom/umeng/socialize/UmengTool;->checkQQByself(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 295
    :cond_3
    :goto_1
    return v1

    .line 269
    :cond_4
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v0, :cond_5

    .line 271
    invoke-static {p1}, Lcom/umeng/socialize/UmengTool;->checkWxBySelf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    goto :goto_1

    .line 274
    :cond_5
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v0, :cond_6

    .line 276
    invoke-static {p1}, Lcom/umeng/socialize/UmengTool;->checkSinaBySelf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    goto :goto_1

    .line 279
    :cond_6
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v0, :cond_7

    .line 281
    invoke-static {p1}, Lcom/umeng/socialize/UmengTool;->checkFBByself(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    goto :goto_1

    .line 285
    :cond_7
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->VKONTAKTE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v0, :cond_8

    .line 286
    invoke-static {p1}, Lcom/umeng/socialize/UmengTool;->checkVKByself(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 288
    :cond_8
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LINKEDIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v0, :cond_9

    .line 289
    invoke-static {p1}, Lcom/umeng/socialize/UmengTool;->checkLinkin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 291
    :cond_9
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->KAKAO:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v0, :cond_3

    .line 292
    invoke-static {p1}, Lcom/umeng/socialize/UmengTool;->checkKakao(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static get(Landroid/content/Context;)Lcom/umeng/socialize/UMShareAPI;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/UMShareAPI;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/UMShareAPI;

    iget-object v0, v0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    if-nez v0, :cond_1

    .line 89
    :cond_0
    new-instance v0, Lcom/umeng/socialize/UMShareAPI;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/UMShareAPI;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/UMShareAPI;

    .line 91
    :cond_1
    sget-object v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/UMShareAPI;

    iget-object v0, v0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p0}, Lcom/umeng/socialize/a/a;->a(Landroid/content/Context;)V

    .line 92
    sget-object v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/UMShareAPI;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    sput-object p1, Lcom/umeng/socialize/common/SocializeConstants;->APPKEY:Ljava/lang/String;

    .line 97
    invoke-static {p0}, Lcom/umeng/socialize/UMShareAPI;->get(Landroid/content/Context;)Lcom/umeng/socialize/UMShareAPI;

    .line 98
    return-void
.end method


# virtual methods
.method public deleteOauth(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 6

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    sget-object v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/UMShareAPI;

    iget-object v0, v0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/a/a;->a(Landroid/content/Context;)V

    .line 131
    new-instance v0, Lcom/umeng/socialize/UMShareAPI$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/UMShareAPI$2;-><init>(Lcom/umeng/socialize/UMShareAPI;Landroid/content/Context;Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V

    .line 141
    invoke-virtual {v0}, Lcom/umeng/socialize/UMShareAPI$2;->execute()Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->ACTIVITYNULL:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doOauthVerify(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 6

    .prologue
    .line 101
    invoke-static {}, Lcom/umeng/socialize/uploadlog/UMLog;->putAuth()V

    .line 102
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->getInitStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->NOINT:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    sget-object v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/UMShareAPI;

    iget-object v0, v0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/a/a;->a(Landroid/content/Context;)V

    .line 107
    invoke-static {}, Lcom/umeng/socialize/utils/SLog;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/UMShareAPI;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :cond_2
    if-eqz p1, :cond_3

    .line 113
    new-instance v0, Lcom/umeng/socialize/UMShareAPI$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/UMShareAPI$1;-><init>(Lcom/umeng/socialize/UMShareAPI;Landroid/content/Context;Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V

    .line 122
    invoke-virtual {v0}, Lcom/umeng/socialize/UMShareAPI$1;->execute()Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;

    goto :goto_0

    .line 124
    :cond_3
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->ACTIVITYNULL:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doShare(Landroid/app/Activity;Lcom/umeng/socialize/ShareAction;Lcom/umeng/socialize/UMShareListener;)V
    .locals 6

    .prologue
    .line 216
    invoke-static {}, Lcom/umeng/socialize/uploadlog/UMLog;->putShare()V

    .line 217
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->getInitStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->NOINT:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 222
    invoke-static {}, Lcom/umeng/socialize/utils/SLog;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    invoke-virtual {p2}, Lcom/umeng/socialize/ShareAction;->getPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/UMShareAPI;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p2}, Lcom/umeng/socialize/ShareAction;->getPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->sharePrint(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 229
    :cond_2
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 230
    sget-object v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/UMShareAPI;

    iget-object v0, v0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/a/a;->a(Landroid/content/Context;)V

    .line 231
    new-instance v0, Lcom/umeng/socialize/UMShareAPI$4;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/UMShareAPI$4;-><init>(Lcom/umeng/socialize/UMShareAPI;Landroid/content/Context;Ljava/lang/ref/WeakReference;Lcom/umeng/socialize/ShareAction;Lcom/umeng/socialize/UMShareListener;)V

    .line 247
    invoke-virtual {v0}, Lcom/umeng/socialize/UMShareAPI$4;->execute()Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;

    goto :goto_0

    .line 249
    :cond_3
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->ACTIVITYNULL:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fetchAuthResultWithBundle(Landroid/app/Activity;Landroid/os/Bundle;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/socialize/a/a;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/umeng/socialize/UMAuthListener;)V

    .line 407
    return-void
.end method

.method public getHandler(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/handler/UMSSOHandler;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/a/a;->a(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/handler/UMSSOHandler;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlatformInfo(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 6

    .prologue
    .line 148
    if-eqz p1, :cond_3

    .line 149
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->getInitStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->NOINT:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-static {}, Lcom/umeng/socialize/uploadlog/UMLog;->putAuth()V

    .line 154
    invoke-static {}, Lcom/umeng/socialize/utils/SLog;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/UMShareAPI;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {p2}, Lcom/umeng/socialize/utils/UrlUtil;->getInfoPrint(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 160
    :cond_2
    sget-object v0, Lcom/umeng/socialize/UMShareAPI;->a:Lcom/umeng/socialize/UMShareAPI;

    iget-object v0, v0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/a/a;->a(Landroid/content/Context;)V

    .line 161
    new-instance v0, Lcom/umeng/socialize/UMShareAPI$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/UMShareAPI$3;-><init>(Lcom/umeng/socialize/UMShareAPI;Landroid/content/Context;Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V

    .line 170
    invoke-virtual {v0}, Lcom/umeng/socialize/UMShareAPI$3;->execute()Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;

    goto :goto_0

    .line 172
    :cond_3
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->ACTIVITYNULL:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getversion(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/socialize/a/a;->c(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    .line 209
    :cond_0
    new-instance v0, Lcom/umeng/socialize/a/a;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    .line 210
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/socialize/a/a;->c(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isAuthorize(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/socialize/a/a;->d(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    .line 191
    :goto_0
    return v0

    .line 189
    :cond_0
    new-instance v0, Lcom/umeng/socialize/a/a;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    .line 191
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/socialize/a/a;->d(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    goto :goto_0
.end method

.method public isInstall(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/socialize/a/a;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    .line 181
    :goto_0
    return v0

    .line 180
    :cond_0
    new-instance v0, Lcom/umeng/socialize/a/a;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    .line 181
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/socialize/a/a;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSupport(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/socialize/a/a;->b(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    .line 201
    :goto_0
    return v0

    .line 199
    :cond_0
    new-instance v0, Lcom/umeng/socialize/a/a;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    .line 201
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/socialize/a/a;->b(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/socialize/a/a;->a(IILandroid/content/Intent;)V

    .line 304
    :goto_0
    invoke-static {p1, p2}, Lcom/umeng/socialize/utils/UmengText$CHECK;->getActivityResult(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->I(Ljava/lang/String;)V

    .line 305
    return-void

    .line 302
    :cond_0
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->ROUTERNULL:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/a/a;->a(Landroid/os/Bundle;)V

    .line 403
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0}, Lcom/umeng/socialize/a/a;->a()V

    .line 399
    return-void
.end method

.method public setShareConfig(Lcom/umeng/socialize/UMShareConfig;)V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/umeng/socialize/UMShareAPI;->b:Lcom/umeng/socialize/a/a;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/a/a;->a(Lcom/umeng/socialize/UMShareConfig;)V

    .line 416
    return-void
.end method
