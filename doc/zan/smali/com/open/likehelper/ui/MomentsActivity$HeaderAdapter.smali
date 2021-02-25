.class Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MomentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/ui/MomentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;,
        Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$CenterAlignImageSpan;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# instance fields
.field final synthetic c:Lcom/open/likehelper/ui/MomentsActivity;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/open/likehelper/bean/MomentBean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/MomentsActivity;)V
    .locals 1

    .prologue
    .line 190
    iput-object p1, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->c:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->d:Ljava/util/ArrayList;

    .line 377
    return-void
.end method

.method static synthetic a(Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;)Landroid/view/View;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->e:Landroid/view/View;

    return-object v0
.end method

.method private a(Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;Lcom/open/likehelper/bean/MomentBean;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-virtual {p2}, Lcom/open/likehelper/bean/MomentBean;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->b(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->contentFrameLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 295
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-virtual {p2}, Lcom/open/likehelper/bean/MomentBean;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 290
    :pswitch_0
    new-instance v0, Lcom/open/likehelper/ui/MomentsActivity$OtherImageMomentsContentFactory;

    iget-object v1, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->c:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-virtual {p2}, Lcom/open/likehelper/bean/MomentBean;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/open/likehelper/ui/MomentsActivity$OtherImageMomentsContentFactory;-><init>(Lcom/open/likehelper/ui/MomentsActivity;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/open/likehelper/ui/MomentsActivity$OtherImageMomentsContentFactory;->b()Landroid/view/View;

    move-result-object v0

    .line 293
    :goto_1
    iget-object v1, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 294
    iget-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 284
    :pswitch_1
    new-instance v1, Lcom/open/likehelper/ui/MomentsActivity$OneImageMomentsContentFactory;

    iget-object v2, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->c:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-virtual {p2}, Lcom/open/likehelper/bean/MomentBean;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/open/likehelper/ui/MomentsActivity$OneImageMomentsContentFactory;-><init>(Lcom/open/likehelper/ui/MomentsActivity;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/open/likehelper/ui/MomentsActivity$OneImageMomentsContentFactory;->b()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 287
    :pswitch_2
    new-instance v0, Lcom/open/likehelper/ui/MomentsActivity$FourImageMomentsContentFactory;

    iget-object v1, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->c:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-virtual {p2}, Lcom/open/likehelper/bean/MomentBean;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/open/likehelper/ui/MomentsActivity$FourImageMomentsContentFactory;-><init>(Lcom/open/likehelper/ui/MomentsActivity;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/open/likehelper/ui/MomentsActivity$FourImageMomentsContentFactory;->b()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private b(Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;Lcom/open/likehelper/bean/MomentBean;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 298
    invoke-virtual {p2}, Lcom/open/likehelper/bean/MomentBean;->getLike()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->b(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->likeTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    :goto_0
    return-void

    .line 302
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    .line 303
    :goto_1
    invoke-virtual {p2}, Lcom/open/likehelper/bean/MomentBean;->getLike()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 304
    invoke-virtual {p2}, Lcom/open/likehelper/bean/MomentBean;->getLike()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p2}, Lcom/open/likehelper/bean/MomentBean;->getLike()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_1

    .line 306
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 309
    :cond_2
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v1, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->c:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-virtual {v1}, Lcom/open/likehelper/ui/MomentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020074

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 311
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 312
    new-instance v3, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$CenterAlignImageSpan;

    invoke-direct {v3, p0, v1}, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$CenterAlignImageSpan;-><init>(Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;Landroid/graphics/drawable/Drawable;)V

    .line 313
    const/4 v1, 0x1

    const/16 v4, 0x21

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 314
    iget-object v1, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->likeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->likeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 347
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    :cond_0
    const/4 v0, 0x0

    .line 349
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;Lcom/open/likehelper/bean/MomentBean;)V
    .locals 10

    .prologue
    const/16 v1, 0x8

    const/4 v9, 0x0

    const/4 v3, -0x2

    .line 319
    invoke-virtual {p2}, Lcom/open/likehelper/bean/MomentBean;->getComment()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->b(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->dividerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->commentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 344
    :goto_0
    return-void

    .line 324
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->c:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/MomentsActivity;->a(Lcom/open/likehelper/ui/MomentsActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 325
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 327
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 330
    invoke-virtual {p2}, Lcom/open/likehelper/bean/MomentBean;->getComment()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/bean/MomentBean$CommentBean;

    .line 331
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->c:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-static {v5}, Lcom/open/likehelper/ui/MomentsActivity;->a(Lcom/open/likehelper/ui/MomentsActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 332
    iget-object v5, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->c:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-virtual {v5}, Lcom/open/likehelper/ui/MomentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    iget-object v5, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->c:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-virtual {v5}, Lcom/open/likehelper/ui/MomentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080065

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 334
    new-instance v5, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/open/likehelper/bean/MomentBean$CommentBean;->getNickname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/open/likehelper/bean/MomentBean$CommentBean;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 335
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->c:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-virtual {v7}, Lcom/open/likehelper/ui/MomentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0011

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 336
    invoke-virtual {v0}, Lcom/open/likehelper/bean/MomentBean$CommentBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v7, 0x21

    invoke-virtual {v5, v6, v9, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 337
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 341
    :cond_1
    iget-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->commentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 342
    iget-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->dividerView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->commentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()I

    move-result v0

    .line 273
    iget-object v1, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->e:Landroid/view/View;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->e:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(I)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 219
    iget-object v1, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->e:Landroid/view/View;

    if-nez v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 220
    :cond_1
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->c(Landroid/view/ViewGroup;I)Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 190
    check-cast p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->a(Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;I)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 198
    iput-object p1, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->e:Landroid/view/View;

    .line 199
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->e:Landroid/view/View;

    const v1, 0x7f0c0085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->c:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-static {v1}, Lcom/open/likehelper/ui/MomentsActivity;->a(Lcom/open/likehelper/ui/MomentsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/open/likehelper/base/user/UserManager;->a(Landroid/content/Context;)Lcom/open/likehelper/base/user/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/open/likehelper/base/user/UserManager;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->c:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-virtual {v0}, Lcom/open/likehelper/ui/MomentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->c(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->c:Lcom/open/likehelper/ui/MomentsActivity;

    .line 201
    invoke-static {v1}, Lcom/open/likehelper/ui/MomentsActivity;->a(Lcom/open/likehelper/ui/MomentsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/open/likehelper/base/user/UserManager;->a(Landroid/content/Context;)Lcom/open/likehelper/base/user/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/open/likehelper/base/user/UserManager;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    const v1, 0x7f020067

    .line 202
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->d(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->f()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->e:Landroid/view/View;

    const v2, 0x7f0c0058

    .line 204
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->d(I)V

    .line 206
    return-void
.end method

.method public a(Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;I)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 233
    invoke-virtual {p0, p2}, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-direct {p0, p1}, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 236
    iget-object v1, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/bean/MomentBean;

    .line 237
    iget-object v1, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/open/likehelper/bean/MomentBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v1, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->c:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-virtual {v1}, Lcom/open/likehelper/ui/MomentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->c(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 239
    invoke-virtual {v0}, Lcom/open/likehelper/bean/MomentBean;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    const v2, 0x7f020067

    .line 240
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->d(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->f()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->avatarImageView:Landroid/widget/ImageView;

    .line 242
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 243
    invoke-virtual {v0}, Lcom/open/likehelper/bean/MomentBean;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    iget-object v1, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    :goto_1
    invoke-virtual {v0}, Lcom/open/likehelper/bean/MomentBean;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    iget-object v1, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->locationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    :goto_2
    invoke-virtual {v0}, Lcom/open/likehelper/bean/MomentBean;->getTimes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 256
    iget-object v1, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    :goto_3
    invoke-direct {p0, p1, v0}, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->a(Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;Lcom/open/likehelper/bean/MomentBean;)V

    .line 262
    invoke-virtual {v0}, Lcom/open/likehelper/bean/MomentBean;->getLike()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->b(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/open/likehelper/bean/MomentBean;->getComment()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->b(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 263
    iget-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->likeCommentLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 246
    :cond_1
    iget-object v1, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/open/likehelper/bean/MomentBean;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v1, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 252
    :cond_2
    iget-object v1, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->locationTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/open/likehelper/bean/MomentBean;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v1, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->locationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 258
    :cond_3
    iget-object v1, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/open/likehelper/bean/MomentBean;->getTimes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v1, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 266
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->b(Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;Lcom/open/likehelper/bean/MomentBean;)V

    .line 267
    invoke-direct {p0, p1, v0}, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->c(Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;Lcom/open/likehelper/bean/MomentBean;)V

    .line 268
    iget-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->likeCommentLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/open/likehelper/bean/MomentBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 214
    invoke-virtual {p0}, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->d()V

    .line 215
    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;

    iget-object v1, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->e:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;-><init>(Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;Landroid/view/View;)V

    .line 228
    :goto_0
    return-object v0

    .line 227
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 228
    new-instance v0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;-><init>(Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;Landroid/view/View;)V

    goto :goto_0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->e:Landroid/view/View;

    return-object v0
.end method
