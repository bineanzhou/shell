.class Lcom/umeng/message/UTrack$9;
.super Ljava/lang/Object;
.source "UTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/UTrack;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/UTrack;


# direct methods
.method constructor <init>(Lcom/umeng/message/UTrack;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/umeng/message/UTrack$9;->a:Lcom/umeng/message/UTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 485
    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/UTrack$9;->a:Lcom/umeng/message/UTrack;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->b(Lcom/umeng/message/UTrack;)Lorg/json/JSONObject;

    move-result-object v0

    .line 488
    iget-object v1, p0, Lcom/umeng/message/UTrack$9;->a:Lcom/umeng/message/UTrack;

    invoke-static {v1}, Lcom/umeng/message/UTrack;->c(Lcom/umeng/message/UTrack;)Lorg/json/JSONArray;

    move-result-object v1

    .line 489
    if-eqz v1, :cond_0

    .line 491
    const-string v2, "ucode"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/proguard/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 493
    :cond_0
    invoke-static {}, Lcom/umeng/message/UTrack;->b()Lcom/umeng/message/common/inter/IUtrack;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/umeng/message/common/inter/IUtrack;->trackAppLaunch(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    invoke-static {v3}, Lcom/umeng/message/UTrack;->b(Z)Z

    .line 500
    :goto_0
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 498
    invoke-static {v3}, Lcom/umeng/message/UTrack;->b(Z)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/umeng/message/UTrack;->b(Z)Z

    throw v0
.end method
