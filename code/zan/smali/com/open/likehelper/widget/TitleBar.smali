.class public Lcom/open/likehelper/widget/TitleBar;
.super Landroid/widget/RelativeLayout;
.source "TitleBar.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/open/likehelper/widget/TitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040045

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->a:Landroid/view/View;

    .line 38
    invoke-direct {p0}, Lcom/open/likehelper/widget/TitleBar;->initView()V

    .line 39
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->a:Landroid/view/View;

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->b:Landroid/widget/ImageView;

    .line 43
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->a:Landroid/view/View;

    const v1, 0x7f0c00c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->c:Landroid/widget/ImageView;

    .line 44
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->a:Landroid/view/View;

    const v1, 0x7f0c00c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->d:Landroid/widget/ImageView;

    .line 45
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->a:Landroid/view/View;

    const v1, 0x7f0c00c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->e:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->a:Landroid/view/View;

    const v1, 0x7f0c00c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->f:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->a:Landroid/view/View;

    const v1, 0x7f0c00c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->g:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/open/likehelper/widget/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b001b

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 49
    return-void
.end method


# virtual methods
.method public getDefaultListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/open/likehelper/widget/TitleBar$1;

    invoke-direct {v0, p0}, Lcom/open/likehelper/widget/TitleBar$1;-><init>(Lcom/open/likehelper/widget/TitleBar;)V

    return-object v0
.end method

.method public setLeftImageClick(Landroid/view/View$OnClickListener;)Lcom/open/likehelper/widget/TitleBar;
    .locals 2

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 98
    :goto_0
    return-object p0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->b:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 96
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setLeftImageRes(I)Lcom/open/likehelper/widget/TitleBar;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    return-object p0
.end method

.method public setLeftImageVisibility(I)Lcom/open/likehelper/widget/TitleBar;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    return-object p0
.end method

.method public setLeftText(Ljava/lang/String;)Lcom/open/likehelper/widget/TitleBar;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    return-object p0
.end method

.method public setLeftTextClick(Landroid/view/View$OnClickListener;)Lcom/open/likehelper/widget/TitleBar;
    .locals 2

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 146
    :goto_0
    return-object p0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setLeftTextVisibility(I)Lcom/open/likehelper/widget/TitleBar;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    return-object p0
.end method

.method public setRightFirstImageClick(Landroid/view/View$OnClickListener;)Lcom/open/likehelper/widget/TitleBar;
    .locals 2

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 117
    :goto_0
    return-object p0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setRightFirstImageRes(I)Lcom/open/likehelper/widget/TitleBar;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    return-object p0
.end method

.method public setRightFirstVisibility(I)Lcom/open/likehelper/widget/TitleBar;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    return-object p0
.end method

.method public setRightSecondImageClick(Landroid/view/View$OnClickListener;)Lcom/open/likehelper/widget/TitleBar;
    .locals 2

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 126
    :goto_0
    return-object p0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setRightSecondImageRes(I)Lcom/open/likehelper/widget/TitleBar;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    return-object p0
.end method

.method public setRightSecondImageVisibility(I)Lcom/open/likehelper/widget/TitleBar;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    return-object p0
.end method

.method public setRightText(Ljava/lang/String;)Lcom/open/likehelper/widget/TitleBar;
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    return-object p0
.end method

.method public setRightTextClick(Landroid/view/View$OnClickListener;)Lcom/open/likehelper/widget/TitleBar;
    .locals 2

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 171
    :goto_0
    return-object p0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setRightTextColor(I)Lcom/open/likehelper/widget/TitleBar;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    return-object p0
.end method

.method public setRightTextVisibility(I)Lcom/open/likehelper/widget/TitleBar;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    return-object p0
.end method

.method public setTitleBarBackground(I)Lcom/open/likehelper/widget/TitleBar;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 196
    return-object p0
.end method

.method public setTitleText(Ljava/lang/String;)Lcom/open/likehelper/widget/TitleBar;
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    return-object p0
.end method

.method public setTitleTextClick(Landroid/view/View$OnClickListener;)Lcom/open/likehelper/widget/TitleBar;
    .locals 2

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 191
    :goto_0
    return-object p0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setTitleTextVisibility(I)Lcom/open/likehelper/widget/TitleBar;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    return-object p0
.end method

.method public setTopViewVisibility(I)Lcom/open/likehelper/widget/TitleBar;
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/open/likehelper/widget/TitleBar;->setVisibility(I)V

    .line 68
    return-object p0
.end method
