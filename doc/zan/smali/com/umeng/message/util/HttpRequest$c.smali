.class public abstract Lcom/umeng/message/util/HttpRequest$c;
.super Lcom/umeng/message/util/HttpRequest$d;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/util/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/umeng/message/util/HttpRequest$d",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/Flushable;


# direct methods
.method protected constructor <init>(Ljava/io/Flushable;)V
    .locals 0

    .prologue
    .line 741
    invoke-direct {p0}, Lcom/umeng/message/util/HttpRequest$d;-><init>()V

    .line 742
    iput-object p1, p0, Lcom/umeng/message/util/HttpRequest$c;->a:Ljava/io/Flushable;

    .line 743
    return-void
.end method


# virtual methods
.method protected c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 747
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest$c;->a:Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    .line 748
    return-void
.end method
