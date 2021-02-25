.class final Lanet/channel/security/d;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/security/ISecurityFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNonSecurity(Ljava/lang/String;)Lanet/channel/security/ISecurity;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lanet/channel/security/a;

    invoke-direct {v0, p1}, Lanet/channel/security/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createSecurity(Ljava/lang/String;)Lanet/channel/security/ISecurity;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lanet/channel/security/b;

    invoke-direct {v0, p1}, Lanet/channel/security/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
