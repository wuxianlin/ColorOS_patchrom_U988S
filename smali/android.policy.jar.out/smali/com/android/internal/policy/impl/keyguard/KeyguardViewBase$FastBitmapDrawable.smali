.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "KeyguardViewBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FastBitmapDrawable"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mOpacity:I


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 328
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 329
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x3

    :goto_0
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$FastBitmapDrawable;->mOpacity:I

    .line 331
    return-void

    .line 330
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/graphics/Bitmap;Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 340
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$FastBitmapDrawable;->mOpacity:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 349
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 353
    return-void
.end method
