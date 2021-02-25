.class public Lcom/open/likehelper/base/upgrade/WMDialog$Builder;
.super Ljava/lang/Object;
.source "WMDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/base/upgrade/WMDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/open/likehelper/base/upgrade/WMDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lcom/open/likehelper/base/upgrade/WMDialog;

    invoke-direct {v0, p1}, Lcom/open/likehelper/base/upgrade/WMDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a:Lcom/open/likehelper/base/upgrade/WMDialog;

    .line 143
    return-void
.end method


# virtual methods
.method public a(I)Lcom/open/likehelper/base/upgrade/WMDialog$Builder;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a:Lcom/open/likehelper/base/upgrade/WMDialog;

    invoke-static {v0, p1}, Lcom/open/likehelper/base/upgrade/WMDialog;->a(Lcom/open/likehelper/base/upgrade/WMDialog;I)I

    .line 157
    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/open/likehelper/base/upgrade/WMDialog$Builder;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a:Lcom/open/likehelper/base/upgrade/WMDialog;

    invoke-static {v0, p1}, Lcom/open/likehelper/base/upgrade/WMDialog;->a(Lcom/open/likehelper/base/upgrade/WMDialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    .line 184
    return-object p0
.end method

.method public a(Lcom/open/likehelper/base/upgrade/WMDialog$OnCancelClickListener;)Lcom/open/likehelper/base/upgrade/WMDialog$Builder;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a:Lcom/open/likehelper/base/upgrade/WMDialog;

    invoke-static {v0, p1}, Lcom/open/likehelper/base/upgrade/WMDialog;->a(Lcom/open/likehelper/base/upgrade/WMDialog;Lcom/open/likehelper/base/upgrade/WMDialog$OnCancelClickListener;)Lcom/open/likehelper/base/upgrade/WMDialog$OnCancelClickListener;

    .line 173
    return-object p0
.end method

.method public a(Lcom/open/likehelper/base/upgrade/WMDialog$OnConfirmClickListener;)Lcom/open/likehelper/base/upgrade/WMDialog$Builder;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a:Lcom/open/likehelper/base/upgrade/WMDialog;

    invoke-static {v0, p1}, Lcom/open/likehelper/base/upgrade/WMDialog;->a(Lcom/open/likehelper/base/upgrade/WMDialog;Lcom/open/likehelper/base/upgrade/WMDialog$OnConfirmClickListener;)Lcom/open/likehelper/base/upgrade/WMDialog$OnConfirmClickListener;

    .line 162
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/open/likehelper/base/upgrade/WMDialog$Builder;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a:Lcom/open/likehelper/base/upgrade/WMDialog;

    invoke-static {v0, p1}, Lcom/open/likehelper/base/upgrade/WMDialog;->a(Lcom/open/likehelper/base/upgrade/WMDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 147
    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/open/likehelper/base/upgrade/WMDialog$OnCancelClickListener;)Lcom/open/likehelper/base/upgrade/WMDialog$Builder;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a:Lcom/open/likehelper/base/upgrade/WMDialog;

    invoke-static {v0, p2}, Lcom/open/likehelper/base/upgrade/WMDialog;->a(Lcom/open/likehelper/base/upgrade/WMDialog;Lcom/open/likehelper/base/upgrade/WMDialog$OnCancelClickListener;)Lcom/open/likehelper/base/upgrade/WMDialog$OnCancelClickListener;

    .line 178
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a:Lcom/open/likehelper/base/upgrade/WMDialog;

    invoke-static {v0, p1}, Lcom/open/likehelper/base/upgrade/WMDialog;->b(Lcom/open/likehelper/base/upgrade/WMDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/open/likehelper/base/upgrade/WMDialog$OnConfirmClickListener;)Lcom/open/likehelper/base/upgrade/WMDialog$Builder;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a:Lcom/open/likehelper/base/upgrade/WMDialog;

    invoke-static {v0, p2}, Lcom/open/likehelper/base/upgrade/WMDialog;->a(Lcom/open/likehelper/base/upgrade/WMDialog;Lcom/open/likehelper/base/upgrade/WMDialog$OnConfirmClickListener;)Lcom/open/likehelper/base/upgrade/WMDialog$OnConfirmClickListener;

    .line 167
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a:Lcom/open/likehelper/base/upgrade/WMDialog;

    invoke-static {v0, p1}, Lcom/open/likehelper/base/upgrade/WMDialog;->a(Lcom/open/likehelper/base/upgrade/WMDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    return-object p0
.end method

.method public a(Z)Lcom/open/likehelper/base/upgrade/WMDialog$Builder;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a:Lcom/open/likehelper/base/upgrade/WMDialog;

    invoke-static {v0, p1}, Lcom/open/likehelper/base/upgrade/WMDialog;->a(Lcom/open/likehelper/base/upgrade/WMDialog;Z)Z

    .line 189
    return-object p0
.end method

.method public a()Lcom/open/likehelper/base/upgrade/WMDialog;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a:Lcom/open/likehelper/base/upgrade/WMDialog;

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/open/likehelper/base/upgrade/WMDialog$Builder;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a:Lcom/open/likehelper/base/upgrade/WMDialog;

    invoke-static {v0, p1}, Lcom/open/likehelper/base/upgrade/WMDialog;->b(Lcom/open/likehelper/base/upgrade/WMDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 152
    return-object p0
.end method

.method public b(Z)Lcom/open/likehelper/base/upgrade/WMDialog$Builder;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a:Lcom/open/likehelper/base/upgrade/WMDialog;

    invoke-static {v0, p1}, Lcom/open/likehelper/base/upgrade/WMDialog;->b(Lcom/open/likehelper/base/upgrade/WMDialog;Z)Z

    .line 194
    return-object p0
.end method
