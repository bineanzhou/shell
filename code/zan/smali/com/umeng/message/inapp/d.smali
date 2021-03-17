.class Lcom/umeng/message/inapp/d;
.super Ljava/lang/Object;
.source "UmengInAppClickHandler.java"

# interfaces
.implements Lcom/umeng/message/inapp/UInAppHandler;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/umeng/message/inapp/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/inapp/d;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/umeng/message/inapp/d;->b:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/umeng/message/inapp/d;->c:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/umeng/message/inapp/d;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/inapp/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/message/inapp/d;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    iget-object v1, p0, Lcom/umeng/message/inapp/d;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 7

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/inapp/d;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/message/inapp/d;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/inapp/d;->a:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6253\u5f00\u94fe\u63a5: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/umeng/message/inapp/d;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/umeng/message/inapp/d;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 85
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final handleInAppMessage(Landroid/app/Activity;Lcom/umeng/message/entity/UInAppMessage;I)V
    .locals 2

    .prologue
    .line 22
    packed-switch p3, :pswitch_data_0

    .line 47
    :goto_0
    iget-object v0, p0, Lcom/umeng/message/inapp/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const-string v0, "go_activity"

    iget-object v1, p0, Lcom/umeng/message/inapp/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-direct {p0, p1}, Lcom/umeng/message/inapp/d;->a(Landroid/app/Activity;)V

    .line 62
    :cond_0
    :goto_1
    return-void

    .line 24
    :pswitch_0
    iget-object v0, p2, Lcom/umeng/message/entity/UInAppMessage;->action_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/message/inapp/d;->b:Ljava/lang/String;

    .line 25
    iget-object v0, p2, Lcom/umeng/message/entity/UInAppMessage;->action_activity:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/message/inapp/d;->c:Ljava/lang/String;

    .line 26
    iget-object v0, p2, Lcom/umeng/message/entity/UInAppMessage;->action_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/message/inapp/d;->d:Ljava/lang/String;

    goto :goto_0

    .line 29
    :pswitch_1
    iget-object v0, p2, Lcom/umeng/message/entity/UInAppMessage;->bottom_action_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/message/inapp/d;->b:Ljava/lang/String;

    .line 30
    iget-object v0, p2, Lcom/umeng/message/entity/UInAppMessage;->bottom_action_activity:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/message/inapp/d;->c:Ljava/lang/String;

    .line 31
    iget-object v0, p2, Lcom/umeng/message/entity/UInAppMessage;->bottom_action_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/message/inapp/d;->d:Ljava/lang/String;

    goto :goto_0

    .line 34
    :pswitch_2
    iget-object v0, p2, Lcom/umeng/message/entity/UInAppMessage;->customButtonActionType:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/message/inapp/d;->b:Ljava/lang/String;

    .line 35
    iget-object v0, p2, Lcom/umeng/message/entity/UInAppMessage;->customButtonActivity:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/message/inapp/d;->c:Ljava/lang/String;

    .line 36
    iget-object v0, p2, Lcom/umeng/message/entity/UInAppMessage;->customButtonUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/message/inapp/d;->d:Ljava/lang/String;

    goto :goto_0

    .line 39
    :pswitch_3
    iget-object v0, p2, Lcom/umeng/message/entity/UInAppMessage;->plainTextActionType:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/message/inapp/d;->b:Ljava/lang/String;

    .line 40
    iget-object v0, p2, Lcom/umeng/message/entity/UInAppMessage;->plainTextActivity:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/message/inapp/d;->c:Ljava/lang/String;

    .line 41
    iget-object v0, p2, Lcom/umeng/message/entity/UInAppMessage;->plainTextUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/message/inapp/d;->d:Ljava/lang/String;

    goto :goto_0

    .line 53
    :cond_1
    const-string v0, "go_url"

    iget-object v1, p0, Lcom/umeng/message/inapp/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    invoke-direct {p0, p1}, Lcom/umeng/message/inapp/d;->b(Landroid/app/Activity;)V

    goto :goto_1

    .line 58
    :cond_2
    const-string v0, "go_app"

    iget-object v1, p0, Lcom/umeng/message/inapp/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 22
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
