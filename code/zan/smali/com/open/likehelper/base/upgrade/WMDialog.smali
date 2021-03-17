.class public Lcom/open/likehelper/base/upgrade/WMDialog;
.super Landroid/app/Dialog;
.source "WMDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/open/likehelper/base/upgrade/WMDialog$Builder;,
        Lcom/open/likehelper/base/upgrade/WMDialog$OnCancelClickListener;,
        Lcom/open/likehelper/base/upgrade/WMDialog$OnConfirmClickListener;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field private b:Ljava/lang/CharSequence;

.field btnCancel:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c007f
    .end annotation
.end field

.field btnConfirm:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0081
    .end annotation
.end field

.field btnLine:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0080
    .end annotation
.end field

.field btnOk:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c007d
    .end annotation
.end field

.field private c:Ljava/lang/CharSequence;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Lcom/open/likehelper/base/upgrade/WMDialog$OnConfirmClickListener;

.field private j:Lcom/open/likehelper/base/upgrade/WMDialog$OnCancelClickListener;

.field private k:Landroid/content/DialogInterface$OnDismissListener;

.field layoutOperate:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c007e
    .end annotation
.end field

.field tvMessage:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c007c
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c007b
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 52
    const v0, 0x7f09011c

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->d:I

    .line 45
    iput-boolean v1, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->g:Z

    .line 46
    iput-boolean v1, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->h:Z

    .line 53
    iput-object p1, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->a:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/open/likehelper/base/upgrade/WMDialog;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->d:I

    return p1
.end method

.method static synthetic a(Lcom/open/likehelper/base/upgrade/WMDialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->k:Landroid/content/DialogInterface$OnDismissListener;

    return-object p1
.end method

.method static synthetic a(Lcom/open/likehelper/base/upgrade/WMDialog;Lcom/open/likehelper/base/upgrade/WMDialog$OnCancelClickListener;)Lcom/open/likehelper/base/upgrade/WMDialog$OnCancelClickListener;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->j:Lcom/open/likehelper/base/upgrade/WMDialog$OnCancelClickListener;

    return-object p1
.end method

.method static synthetic a(Lcom/open/likehelper/base/upgrade/WMDialog;)Lcom/open/likehelper/base/upgrade/WMDialog$OnConfirmClickListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->i:Lcom/open/likehelper/base/upgrade/WMDialog$OnConfirmClickListener;

    return-object v0
.end method

.method static synthetic a(Lcom/open/likehelper/base/upgrade/WMDialog;Lcom/open/likehelper/base/upgrade/WMDialog$OnConfirmClickListener;)Lcom/open/likehelper/base/upgrade/WMDialog$OnConfirmClickListener;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->i:Lcom/open/likehelper/base/upgrade/WMDialog$OnConfirmClickListener;

    return-object p1
.end method

.method static synthetic a(Lcom/open/likehelper/base/upgrade/WMDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->b:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic a(Lcom/open/likehelper/base/upgrade/WMDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/open/likehelper/base/upgrade/WMDialog;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/open/likehelper/base/upgrade/WMDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->c:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic b(Lcom/open/likehelper/base/upgrade/WMDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/open/likehelper/base/upgrade/WMDialog;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/open/likehelper/base/upgrade/WMDialog;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/open/likehelper/base/upgrade/WMDialog;)Lcom/open/likehelper/base/upgrade/WMDialog$OnCancelClickListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->j:Lcom/open/likehelper/base/upgrade/WMDialog$OnCancelClickListener;

    return-object v0
.end method

.method private d(Lcom/open/likehelper/base/upgrade/WMDialog;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 72
    iget-object v0, p1, Lcom/open/likehelper/base/upgrade/WMDialog;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 73
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/open/likehelper/base/upgrade/WMDialog;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    :goto_0
    iget-object v0, p1, Lcom/open/likehelper/base/upgrade/WMDialog;->c:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->tvMessage:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/open/likehelper/base/upgrade/WMDialog;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    iget-object v0, p1, Lcom/open/likehelper/base/upgrade/WMDialog;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 82
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->btnConfirm:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/open/likehelper/base/upgrade/WMDialog;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->btnConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    :goto_1
    iget-object v0, p1, Lcom/open/likehelper/base/upgrade/WMDialog;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 89
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->btnCancel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/open/likehelper/base/upgrade/WMDialog;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->btnCancel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :goto_2
    iget v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->tvMessage:Landroid/widget/TextView;

    iget v1, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 97
    :cond_1
    iget-boolean v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->g:Z

    invoke-virtual {p1, v0}, Lcom/open/likehelper/base/upgrade/WMDialog;->setCancelable(Z)V

    .line 99
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->btnOk:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->layoutOperate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->btnConfirm:Landroid/widget/TextView;

    new-instance v1, Lcom/open/likehelper/base/upgrade/WMDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/open/likehelper/base/upgrade/WMDialog$1;-><init>(Lcom/open/likehelper/base/upgrade/WMDialog;Lcom/open/likehelper/base/upgrade/WMDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->btnCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/open/likehelper/base/upgrade/WMDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/open/likehelper/base/upgrade/WMDialog$2;-><init>(Lcom/open/likehelper/base/upgrade/WMDialog;Lcom/open/likehelper/base/upgrade/WMDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->k:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0, v0}, Lcom/open/likehelper/base/upgrade/WMDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 125
    iget-object v0, p1, Lcom/open/likehelper/base/upgrade/WMDialog;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/open/likehelper/base/upgrade/WMDialog;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->btnLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_3
    return-void

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->btnConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 92
    :cond_6
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog;->btnCancel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f040025

    invoke-virtual {p0, v0}, Lcom/open/likehelper/base/upgrade/WMDialog;->setContentView(I)V

    .line 60
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/app/Dialog;)Lbutterknife/Unbinder;

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/open/likehelper/base/upgrade/WMDialog;->setCancelable(Z)V

    .line 62
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 68
    invoke-direct {p0, p0}, Lcom/open/likehelper/base/upgrade/WMDialog;->d(Lcom/open/likehelper/base/upgrade/WMDialog;)V

    .line 69
    return-void
.end method
