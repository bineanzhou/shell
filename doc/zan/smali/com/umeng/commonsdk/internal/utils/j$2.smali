.class final Lcom/umeng/commonsdk/internal/utils/j$2;
.super Ljava/lang/Object;
.source "SystemLayerUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/internal/utils/j;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/hardware/Sensor;

.field final synthetic b:Landroid/hardware/Sensor;


# direct methods
.method constructor <init>(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/umeng/commonsdk/internal/utils/j$2;->a:Landroid/hardware/Sensor;

    iput-object p2, p0, Lcom/umeng/commonsdk/internal/utils/j$2;->b:Landroid/hardware/Sensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 135
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/umeng/commonsdk/internal/utils/j;->a(I)I

    .line 136
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/utils/j$2;->a:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 137
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/j;->k()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/j;->j()Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/commonsdk/internal/utils/j$2;->a:Landroid/hardware/Sensor;

    const v3, 0xc350

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/utils/j$2;->b:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/j;->k()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/j;->j()Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/commonsdk/internal/utils/j$2;->b:Landroid/hardware/Sensor;

    const v3, 0xc350

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-string v0, "sensor exception"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
