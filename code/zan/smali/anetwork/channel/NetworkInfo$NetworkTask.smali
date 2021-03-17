.class Lanetwork/channel/NetworkInfo$NetworkTask;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/NetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field public static final i:I = 0x8

.field public static final j:I = 0x9

.field public static final k:I = 0xa

.field public static final l:I = 0xb

.field public static final m:I = 0xc

.field public static final n:I = 0xd

.field public static final o:I = 0xe

.field public static final p:I = 0xf

.field public static final q:I = 0x10

.field public static final r:I = 0x11

.field public static final s:I = 0x12

.field public static final t:I = 0x13

.field public static final u:I = 0x14

.field public static final v:I = 0x15


# instance fields
.field private A:Ljava/util/concurrent/CountDownLatch;

.field final synthetic w:Lanetwork/channel/NetworkInfo;

.field private x:Landroid/content/Context;

.field private y:I

.field private z:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lanetwork/channel/NetworkInfo;Landroid/content/Context;ILjava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/CountDownLatch;",
            ")V"
        }
    .end annotation

    .prologue
    .line 653
    iput-object p1, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->w:Lanetwork/channel/NetworkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    iput-object p2, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->x:Landroid/content/Context;

    .line 655
    iput p3, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->y:I

    .line 656
    iput-object p4, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->z:Ljava/util/concurrent/ConcurrentHashMap;

    .line 657
    iput-object p5, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->A:Ljava/util/concurrent/CountDownLatch;

    .line 658
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 666
    const/4 v0, 0x0

    .line 667
    invoke-static {}, Lanetwork/channel/NetworkInfo;->b()Lanetwork/channel/NetworkInfo;

    move-result-object v1

    .line 668
    iget v2, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->y:I

    packed-switch v2, :pswitch_data_0

    .line 731
    :goto_0
    iget-object v1, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->z:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    iget-object v1, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->A:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 737
    return-object v0

    .line 670
    :pswitch_0
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->x:Landroid/content/Context;

    invoke-static {v1, v0}, Lanetwork/channel/NetworkInfo;->c(Lanetwork/channel/NetworkInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 673
    :pswitch_1
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->x:Landroid/content/Context;

    invoke-static {v1, v0}, Lanetwork/channel/NetworkInfo;->d(Lanetwork/channel/NetworkInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 676
    :pswitch_2
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->x:Landroid/content/Context;

    invoke-static {v1, v0}, Lanetwork/channel/NetworkInfo;->e(Lanetwork/channel/NetworkInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 679
    :pswitch_3
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->w:Lanetwork/channel/NetworkInfo;

    const-string v1, "http.proxyHost"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lanetwork/channel/NetworkInfo;->a(Lanetwork/channel/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 682
    :pswitch_4
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->w:Lanetwork/channel/NetworkInfo;

    const-string v1, "http.proxyPort"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lanetwork/channel/NetworkInfo;->a(Lanetwork/channel/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 685
    :pswitch_5
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->w:Lanetwork/channel/NetworkInfo;

    const-string v1, "http.nonProxyHosts"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lanetwork/channel/NetworkInfo;->a(Lanetwork/channel/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 688
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->w:Lanetwork/channel/NetworkInfo;

    iget-object v2, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->x:Landroid/content/Context;

    const-string v3, "http://api.m.taobao.com/gw/mtop.common.getTimeStamp/*"

    invoke-static {v1, v2, v3}, Lanetwork/channel/NetworkInfo;->a(Lanetwork/channel/NetworkInfo;Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 691
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->w:Lanetwork/channel/NetworkInfo;

    iget-object v2, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->x:Landroid/content/Context;

    const-string v3, "http://gw.alicdn.com/bao/uploaded/i2/12071029418847231/T13I2HFk8aXXXXXXXX_!!0-item_pic.jpg_170x170.jpg"

    invoke-static {v1, v2, v3}, Lanetwork/channel/NetworkInfo;->a(Lanetwork/channel/NetworkInfo;Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 694
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->w:Lanetwork/channel/NetworkInfo;

    iget-object v2, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->x:Landroid/content/Context;

    const-string v3, "http://g.alicdn.com/tbc/??search-suggest/1.4.6/mods/storage-min.js"

    invoke-static {v1, v2, v3}, Lanetwork/channel/NetworkInfo;->a(Lanetwork/channel/NetworkInfo;Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 697
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->w:Lanetwork/channel/NetworkInfo;

    iget-object v2, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->x:Landroid/content/Context;

    const-string v3, "http://m.taobao.com"

    invoke-static {v1, v2, v3}, Lanetwork/channel/NetworkInfo;->a(Lanetwork/channel/NetworkInfo;Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 700
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->w:Lanetwork/channel/NetworkInfo;

    iget-object v2, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->x:Landroid/content/Context;

    const-string v3, "http://www.tencent.com"

    invoke-static {v1, v2, v3}, Lanetwork/channel/NetworkInfo;->a(Lanetwork/channel/NetworkInfo;Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 703
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->w:Lanetwork/channel/NetworkInfo;

    iget-object v2, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->x:Landroid/content/Context;

    const-string v3, "http://www.baidu.com"

    invoke-static {v1, v2, v3}, Lanetwork/channel/NetworkInfo;->a(Lanetwork/channel/NetworkInfo;Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 706
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->x:Landroid/content/Context;

    invoke-static {v1, v2}, Lanetwork/channel/NetworkInfo;->f(Lanetwork/channel/NetworkInfo;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 709
    :pswitch_d
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->x:Landroid/content/Context;

    const-string v2, "http://api.m.taobao.com/gw/mtop.common.getTimeStamp/*"

    invoke-virtual {v1, v0, v2}, Lanetwork/channel/NetworkInfo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 712
    :pswitch_e
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->x:Landroid/content/Context;

    const-string v2, "http://gw.alicdn.com/bao/uploaded/i2/12071029418847231/T13I2HFk8aXXXXXXXX_!!0-item_pic.jpg_170x170.jpg"

    invoke-virtual {v1, v0, v2}, Lanetwork/channel/NetworkInfo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 715
    :pswitch_f
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->x:Landroid/content/Context;

    const-string v2, "http://g.alicdn.com/tbc/??search-suggest/1.4.6/mods/storage-min.js"

    invoke-virtual {v1, v0, v2}, Lanetwork/channel/NetworkInfo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 718
    :pswitch_10
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->x:Landroid/content/Context;

    const-string v2, "http://h5.m.taobao.com/app/category/www/man/index.html"

    invoke-virtual {v1, v0, v2}, Lanetwork/channel/NetworkInfo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 721
    :pswitch_11
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->x:Landroid/content/Context;

    const-string v2, "http://hws.m.taobao.com/cache/desc/5.0?id=42860783596&type=1&f=TB1FFmAJFXXXXbvXFXX8qtpFXlX"

    invoke-virtual {v1, v0, v2}, Lanetwork/channel/NetworkInfo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 724
    :pswitch_12
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->x:Landroid/content/Context;

    const-string v2, "http://acs.m.taobao.com/gw/mtop.wdetail.getitemdetail/"

    invoke-virtual {v1, v0, v2}, Lanetwork/channel/NetworkInfo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 727
    :pswitch_13
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->x:Landroid/content/Context;

    const-string v2, "http://unitacs.m.taobao.com/gw/mtop.wdetail.getitemdetail/"

    invoke-virtual {v1, v0, v2}, Lanetwork/channel/NetworkInfo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 730
    :pswitch_14
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$NetworkTask;->x:Landroid/content/Context;

    const-string v2, "http://unszacs.m.taobao.com/gw/mtop.wdetail.getitemdetail/"

    invoke-virtual {v1, v0, v2}, Lanetwork/channel/NetworkInfo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 668
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 662
    invoke-direct {p0}, Lanetwork/channel/NetworkInfo$NetworkTask;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 622
    invoke-virtual {p0}, Lanetwork/channel/NetworkInfo$NetworkTask;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
