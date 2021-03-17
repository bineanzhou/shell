.class public Lcom/taobao/accs/flowcontrol/FlowControl;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;,
        Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
    }
.end annotation


# static fields
.field public static final DELAY_MAX:I = -0x1

.field public static final DELAY_MAX_BRUSH:I = -0x3e8

.field public static final HIGH_FLOW_CTRL:I = 0x2

.field public static final HIGH_FLOW_CTRL_BRUSH:I = 0x3

.field public static final LOW_FLOW_CTRL:I = 0x1

.field public static final NO_FLOW_CTRL:I = 0x0

.field public static final SERVICE_ALL:Ljava/lang/String; = "ALL"

.field public static final SERVICE_ALL_BRUSH:Ljava/lang/String; = "ALL_BRUSH"

.field public static final STATUS_FLOW_CTRL_ALL:I = 0x1a4

.field public static final STATUS_FLOW_CTRL_BRUSH:I = 0x1a6

.field public static final STATUS_FLOW_CTRL_CUR:I = 0x1a5


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->a:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    iget-object v0, v0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->flowCtrlMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    iget-object v0, v0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->flowCtrlMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 163
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    .line 165
    invoke-virtual {v0}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :cond_2
    return-void
.end method

.method private a(JJ)Z
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 98
    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    cmp-long v1, p3, v2

    if-gtz v1, :cond_1

    .line 99
    :cond_0
    const-string v1, "FlowControl"

    const-string v2, "error flow ctrl info"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/lang/String;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 39
    const-wide/16 v6, 0x0

    .line 40
    const/4 v5, 0x0

    .line 42
    if-eqz p1, :cond_9

    .line 43
    :try_start_0
    sget-object v2, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_STATUS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v2}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 44
    sget-object v3, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_DELAY:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v3}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 45
    sget-object v4, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_EXPIRE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v4}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 46
    sget-object v4, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_BUSINESS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v4}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 47
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v5, 0x0

    .line 48
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v6, 0x0

    .line 49
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v8, 0x0

    .line 51
    :goto_2
    const/16 v2, 0x1a4

    if-eq v5, v2, :cond_0

    const/16 v2, 0x1a5

    if-eq v5, v2, :cond_0

    const/16 v2, 0x1a6

    if-ne v5, v2, :cond_1

    :cond_0
    invoke-direct {p0, v6, v7, v8, v9}, Lcom/taobao/accs/flowcontrol/FlowControl;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_5

    .line 55
    :cond_1
    const/4 v2, 0x0

    .line 92
    :goto_3
    return v2

    .line 47
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    .line 48
    :cond_3
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_1

    .line 49
    :cond_4
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_2

    .line 57
    :cond_5
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :try_start_1
    iget-object v2, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    if-nez v2, :cond_6

    .line 59
    new-instance v2, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    invoke-direct {v2}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;-><init>()V

    iput-object v2, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    .line 61
    :cond_6
    const/4 v2, 0x0

    .line 62
    const/16 v3, 0x1a4

    if-ne v5, v3, :cond_a

    .line 63
    new-instance v2, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    const-string v3, "ALL"

    const-string v4, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct/range {v2 .. v11}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJ)V

    .line 65
    iget-object v3, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    const-string v4, "ALL"

    const-string v8, ""

    invoke-virtual {v3, v4, v8, v2}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->put(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;)V

    .line 75
    :cond_7
    :goto_4
    if-eqz v2, :cond_8

    .line 76
    const-string v3, "FlowControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateFlowCtrlInfo "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_8
    monitor-exit p0

    .line 84
    :cond_9
    :goto_5
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_c

    .line 85
    const/4 v2, 0x1

    goto :goto_3

    .line 66
    :cond_a
    const/16 v3, 0x1a6

    if-ne v5, v3, :cond_b

    .line 67
    new-instance v2, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    const-string v3, "ALL_BRUSH"

    const-string v4, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct/range {v2 .. v11}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJ)V

    .line 69
    iget-object v3, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    const-string v4, "ALL_BRUSH"

    const-string v8, ""

    invoke-virtual {v3, v4, v8, v2}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->put(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;)V

    goto :goto_4

    .line 78
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    :catch_0
    move-exception v2

    .line 82
    const-string v3, "FlowControl"

    const-string v4, "updateFlowCtrlInfo"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_5

    .line 70
    :cond_b
    const/16 v3, 0x1a5

    if-ne v5, v3, :cond_7

    :try_start_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 71
    new-instance v2, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v3, p2

    invoke-direct/range {v2 .. v11}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJ)V

    .line 73
    iget-object v3, p0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    invoke-virtual {v3, p2, v4, v2}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->put(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 86
    :cond_c
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-nez v2, :cond_d

    .line 87
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 89
    :cond_d
    const/16 v2, 0x1a6

    if-ne v2, v5, :cond_e

    .line 90
    const/4 v2, 0x3

    goto/16 :goto_3

    .line 92
    :cond_e
    const/4 v2, 0x2

    goto/16 :goto_3
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 16

    .prologue
    .line 105
    const-wide/16 v8, 0x0

    .line 106
    const-wide/16 v6, 0x0

    .line 107
    const-wide/16 v10, 0x0

    .line 108
    const-wide/16 v4, 0x0

    .line 109
    const-wide/16 v2, 0x0

    .line 110
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    iget-object v12, v12, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->flowCtrlMap:Ljava/util/Map;

    if-eqz v12, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-wide v2

    .line 116
    :cond_1
    monitor-enter p0

    .line 117
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    const-string v3, "ALL"

    const/4 v12, 0x0

    invoke-virtual {v2, v3, v12}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    move-result-object v12

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    const-string v3, "ALL_BRUSH"

    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    move-result-object v13

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    move-result-object v14

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/flowcontrol/FlowControl;->b:Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowCtrlInfoHolder;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;

    move-result-object v15

    .line 122
    if-eqz v12, :cond_2

    .line 123
    invoke-virtual {v12}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_b

    const-wide/16 v2, 0x0

    :goto_1
    move-wide v6, v2

    .line 126
    :cond_2
    if-eqz v13, :cond_3

    .line 127
    invoke-virtual {v13}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_c

    const-wide/16 v2, 0x0

    :goto_2
    move-wide v10, v2

    .line 130
    :cond_3
    if-eqz v14, :cond_4

    .line 131
    invoke-virtual {v14}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_d

    const-wide/16 v2, 0x0

    :goto_3
    move-wide v4, v2

    .line 134
    :cond_4
    if-eqz v15, :cond_5

    .line 135
    invoke-virtual {v15}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_e

    const-wide/16 v2, 0x0

    :goto_4
    move-wide v8, v2

    .line 138
    :cond_5
    const-wide/16 v2, -0x1

    cmp-long v2, v6, v2

    if-eqz v2, :cond_6

    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-eqz v2, :cond_6

    const-wide/16 v2, -0x1

    cmp-long v2, v4, v2

    if-nez v2, :cond_f

    .line 141
    :cond_6
    const-wide/16 v2, -0x1

    .line 149
    :cond_7
    :goto_5
    if-eqz v15, :cond_8

    invoke-virtual {v15}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v10

    if-nez v10, :cond_9

    :cond_8
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->isExpired()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 151
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/flowcontrol/FlowControl;->a()V

    .line 153
    :cond_a
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    const-string v10, "FlowControl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getFlowCtrlDelay service "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " biz "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " result:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " global:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " serviceDelay:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bidDelay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v10, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 123
    :cond_b
    :try_start_1
    iget-wide v2, v12, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->delayTime:J

    goto/16 :goto_1

    .line 127
    :cond_c
    iget-wide v2, v13, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->delayTime:J

    goto/16 :goto_2

    .line 131
    :cond_d
    iget-wide v2, v14, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->delayTime:J

    goto/16 :goto_3

    .line 135
    :cond_e
    iget-wide v2, v15, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->delayTime:J

    goto/16 :goto_4

    .line 142
    :cond_f
    const-wide/16 v2, -0x1

    cmp-long v2, v10, v2

    if-nez v2, :cond_10

    .line 143
    const-wide/16 v2, -0x3e8

    goto :goto_5

    .line 145
    :cond_10
    cmp-long v2, v6, v8

    if-lez v2, :cond_11

    move-wide v2, v6

    .line 146
    :goto_6
    cmp-long v10, v2, v4

    if-gtz v10, :cond_7

    move-wide v2, v4

    goto/16 :goto_5

    :cond_11
    move-wide v2, v8

    .line 145
    goto :goto_6

    .line 153
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
