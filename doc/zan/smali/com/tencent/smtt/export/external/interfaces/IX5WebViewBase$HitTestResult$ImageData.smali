.class public Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$HitTestResult$ImageData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$HitTestResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageData"
.end annotation


# instance fields
.field public mBmp:Landroid/graphics/Bitmap;

.field public mPicUrl:Ljava/lang/String;

.field public mRawDataSize:J

.field final synthetic this$0:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$HitTestResult;


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$HitTestResult;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$HitTestResult$ImageData;->this$0:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$HitTestResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$HitTestResult$ImageData;->this$0:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$HitTestResult;

    invoke-virtual {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$HitTestResult;->getBitmapData()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
