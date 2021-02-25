.class public Lcom/umeng/message/entity/UNotificationItem;
.super Ljava/lang/Object;
.source "UNotificationItem.java"


# instance fields
.field public id:I

.field public message:Lcom/umeng/message/entity/UMessage;


# direct methods
.method public constructor <init>(ILcom/umeng/message/entity/UMessage;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/umeng/message/entity/UNotificationItem;->id:I

    .line 12
    iput-object p2, p0, Lcom/umeng/message/entity/UNotificationItem;->message:Lcom/umeng/message/entity/UMessage;

    .line 13
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 17
    if-nez p1, :cond_1

    .line 23
    :cond_0
    :goto_0
    return v0

    .line 20
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 23
    iget v1, p0, Lcom/umeng/message/entity/UNotificationItem;->id:I

    check-cast p1, Lcom/umeng/message/entity/UNotificationItem;

    iget v2, p1, Lcom/umeng/message/entity/UNotificationItem;->id:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
