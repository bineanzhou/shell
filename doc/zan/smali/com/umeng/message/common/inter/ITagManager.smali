.class public interface abstract Lcom/umeng/message/common/inter/ITagManager;
.super Ljava/lang/Object;
.source "ITagManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/common/inter/ITagManager$Result;
    }
.end annotation


# static fields
.field public static final FAIL:Ljava/lang/String; = "fail"

.field public static final STATUS_FALSE:Ljava/lang/String; = "false"

.field public static final STATUS_TRUE:Ljava/lang/String; = "true"

.field public static final SUCCESS:Ljava/lang/String; = "ok"


# virtual methods
.method public varargs abstract addTags(Lorg/json/JSONObject;[Ljava/lang/String;)Lcom/umeng/message/common/inter/ITagManager$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract addWeightedTags(Lorg/json/JSONObject;Ljava/util/Hashtable;)Lcom/umeng/message/common/inter/ITagManager$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/umeng/message/common/inter/ITagManager$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public varargs abstract deleteTags(Lorg/json/JSONObject;[Ljava/lang/String;)Lcom/umeng/message/common/inter/ITagManager$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public varargs abstract deleteWeightedTags(Lorg/json/JSONObject;[Ljava/lang/String;)Lcom/umeng/message/common/inter/ITagManager$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getTags(Lorg/json/JSONObject;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getWeightedTags(Lorg/json/JSONObject;)Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract reset(Lorg/json/JSONObject;)Lcom/umeng/message/common/inter/ITagManager$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public varargs abstract update(Lorg/json/JSONObject;[Ljava/lang/String;)Lcom/umeng/message/common/inter/ITagManager$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
