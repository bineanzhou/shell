.class public Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->c:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->d:Z

    iput-boolean v1, p0, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->e:Z

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isImportant()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->e:Z

    return v0
.end method

.method public isSendImmediately()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->d:Z

    return v0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setImportant(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->e:Z

    return-void
.end method

.method public setInstallChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setSendImmediately(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->d:Z

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatSpecifyReportedInfo [appKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", installChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sendImmediately="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isImportant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
