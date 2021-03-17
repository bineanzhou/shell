.class public interface abstract Lanet/channel/security/ISecurity;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final CIPHER_ALGORITHM_AES128:Ljava/lang/String; = "ASE128"

.field public static final SIGN_ALGORITHM_HMAC_SHA1:Ljava/lang/String; = "HMAC_SHA1"


# virtual methods
.method public abstract decrypt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)[B
.end method

.method public abstract getBytes(Landroid/content/Context;Ljava/lang/String;)[B
.end method

.method public abstract isSecOff()Z
.end method

.method public abstract saveBytes(Landroid/content/Context;Ljava/lang/String;[B)Z
.end method

.method public abstract sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
