.class Landroid/view/View$SendViewScrolledAccessibilityEvent;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendViewScrolledAccessibilityEvent"
.end annotation


# instance fields
.field public volatile mIsPending:Z

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 18141
    iput-object p1, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->this$0:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18141
    invoke-direct {p0, p1}, Landroid/view/View$SendViewScrolledAccessibilityEvent;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 18145
    iget-object v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->this$0:Landroid/view/View;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 18146
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    .line 18147
    return-void
.end method
