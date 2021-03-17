.class Lcom/umeng/message/UTrack$1;
.super Ljava/lang/Object;
.source "UTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/UTrack;->a(Ljava/lang/String;IJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/umeng/message/UTrack;


# direct methods
.method constructor <init>(Lcom/umeng/message/UTrack;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/umeng/message/UTrack$1;->e:Lcom/umeng/message/UTrack;

    iput-object p2, p0, Lcom/umeng/message/UTrack$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/umeng/message/UTrack$1;->b:I

    iput-wide p4, p0, Lcom/umeng/message/UTrack$1;->c:J

    iput-object p6, p0, Lcom/umeng/message/UTrack$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 222
    iget-object v1, p0, Lcom/umeng/message/UTrack$1;->e:Lcom/umeng/message/UTrack;

    iget-object v2, p0, Lcom/umeng/message/UTrack$1;->a:Ljava/lang/String;

    iget v3, p0, Lcom/umeng/message/UTrack$1;->b:I

    iget-wide v4, p0, Lcom/umeng/message/UTrack$1;->c:J

    iget-object v6, p0, Lcom/umeng/message/UTrack$1;->d:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;Ljava/lang/String;IJLjava/lang/String;)V

    .line 223
    return-void
.end method
