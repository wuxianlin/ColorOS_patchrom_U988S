.class Lcom/android/internal/policy/impl/keyguard/ItemImageView$2;
.super Landroid/database/ContentObserver;
.source "ItemImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/ItemImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/ItemImageView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/16 v3, 0x130

    .line 378
    const-string v1, "ItemImageView"

    const-string v2, "mMissedCallsObserver onChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mCallsRespondingOnChange:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->access$600(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mCallsRespondingOnChange:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->access$602(Lcom/android/internal/policy/impl/keyguard/ItemImageView;Z)Z

    .line 387
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 388
    .local v0, message:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 389
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->access$700(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 391
    return-void

    .line 385
    .end local v0           #message:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->access$700(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method