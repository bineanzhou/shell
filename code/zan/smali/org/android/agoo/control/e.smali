.class Lorg/android/agoo/control/e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lorg/android/agoo/control/AgooFactory;


# direct methods
.method constructor <init>(Lorg/android/agoo/control/AgooFactory;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lorg/android/agoo/control/e;->c:Lorg/android/agoo/control/AgooFactory;

    iput-object p2, p0, Lorg/android/agoo/control/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/android/agoo/control/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lorg/android/agoo/control/e;->c:Lorg/android/agoo/control/AgooFactory;

    iget-object v1, p0, Lorg/android/agoo/control/e;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/android/agoo/control/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/android/agoo/control/AgooFactory;->updateMsgStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void
.end method
