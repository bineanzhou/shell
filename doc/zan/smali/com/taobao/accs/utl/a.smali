.class public Lcom/taobao/accs/utl/a;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = null

.field public static final channelService:Ljava/lang/String; = "com.taobao.accs.ChannelService"

.field private static d:Ljava/lang/String; = null

.field private static e:Z = false

.field private static f:Z = false

.field public static final msgService:Ljava/lang/String; = "com.taobao.accs.data.MsgDistributeService"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, ""

    sput-object v0, Lcom/taobao/accs/utl/a;->a:Ljava/lang/String;

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/taobao/accs/utl/a;->c:Ljava/lang/String;

    .line 29
    const-string v0, ""

    sput-object v0, Lcom/taobao/accs/utl/a;->d:Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/accs/utl/a;->e:Z

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/accs/utl/a;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 6

    .prologue
    .line 96
    const-wide/16 v0, -0x1

    .line 98
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 99
    if-nez v2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-wide v0

    .line 102
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_2

    .line 103
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    .line 114
    const-string v3, "AdapterUtilityImpl"

    const-string v4, "getUsableSpace"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    sget-object v0, Lcom/taobao/accs/client/a;->f:Lcom/taobao/accs/IProcessName;

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lcom/taobao/accs/client/a;->f:Lcom/taobao/accs/IProcessName;

    invoke-interface {v0}, Lcom/taobao/accs/IProcessName;->getCurrProcessName()Ljava/lang/String;

    move-result-object v1

    .line 87
    :cond_0
    return-object v1

    .line 73
    :cond_1
    const-string v1, ""

    .line 74
    invoke-static {p0}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/client/a;->a()Landroid/app/ActivityManager;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 78
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 81
    :try_start_0
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p1, :cond_2

    .line 82
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 86
    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 120
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 123
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 124
    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 126
    aget-object v3, v2, v0

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 133
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    sget-boolean v0, Lcom/taobao/accs/utl/a;->f:Z

    if-eqz v0, :cond_0

    .line 37
    sget-boolean v0, Lcom/taobao/accs/utl/a;->e:Z

    .line 65
    :goto_0
    return v0

    .line 41
    :cond_0
    :try_start_0
    sget-object v0, Lcom/taobao/accs/client/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    sget-object v0, Lcom/taobao/accs/utl/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    sput-object v0, Lcom/taobao/accs/utl/a;->c:Ljava/lang/String;

    .line 46
    :cond_1
    sget-object v0, Lcom/taobao/accs/utl/a;->c:Ljava/lang/String;

    .line 51
    :goto_1
    sget-object v1, Lcom/taobao/accs/utl/a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {p0, v1}, Lcom/taobao/accs/utl/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/taobao/accs/utl/a;->d:Ljava/lang/String;

    .line 56
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/taobao/accs/utl/a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 58
    sget-object v1, Lcom/taobao/accs/utl/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/taobao/accs/utl/a;->e:Z

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/accs/utl/a;->f:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_3
    :goto_2
    sget-boolean v0, Lcom/taobao/accs/utl/a;->e:Z

    goto :goto_0

    .line 48
    :cond_4
    :try_start_1
    sget-object v0, Lcom/taobao/accs/client/a;->d:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-string v1, "AdapterUtilityImpl"

    const-string v2, "isMainProcess"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static final a(Ljava/lang/String;I)Z
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 157
    if-nez p0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    .line 162
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v4, v3

    .line 163
    const-string v3, "FileCheckUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "st.getAvailableBlocks()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",st.getAvailableBlocks() * blockSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v8, v7

    int-to-long v10, v2

    mul-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    const/16 v3, 0xa

    if-le v1, v3, :cond_0

    int-to-long v2, v2

    mul-long/2addr v2, v4

    int-to-long v4, p1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 170
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 141
    if-eqz p0, :cond_0

    .line 143
    :try_start_0
    invoke-static {p0}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/client/a;->b()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 153
    :goto_0
    return v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 175
    const-string v2, "unknown"

    .line 178
    :try_start_0
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 184
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 188
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 190
    const-string v7, "checkOpNoThrow"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 192
    const-string v8, "OP_POST_NOTIFICATION"

    invoke-virtual {v1, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 195
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v9

    const/4 v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v1

    const/4 v1, 0x2

    aput-object v5, v8, v1

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 196
    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    :goto_1
    return-object v0

    :cond_0
    move v0, v4

    .line 196
    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string v1, "AdapterUtilityImpl"

    const-string v3, "isNotificationEnabled"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_1
.end method
