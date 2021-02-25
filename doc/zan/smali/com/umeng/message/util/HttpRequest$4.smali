.class final Lcom/umeng/message/util/HttpRequest$4;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/util/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1319
    iput-object p1, p0, Lcom/umeng/message/util/HttpRequest$4;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/umeng/message/util/HttpRequest$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest$4;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/message/util/HttpRequest$4;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1319
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest$4;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
