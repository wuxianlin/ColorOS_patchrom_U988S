.class final Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HotplugDisplayEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 195
    invoke-direct {p0, p2}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;)V

    .line 196
    return-void
.end method


# virtual methods
.method public onHotplug(JIZ)V
    .locals 2
    .parameter "timestampNanos"
    .parameter "builtInDisplayId"
    .parameter "connected"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 201
    if-eqz p4, :cond_0

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #calls: Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(I)V
    invoke-static {v0, p3}, Lcom/android/server/display/LocalDisplayAdapter;->access$000(Lcom/android/server/display/LocalDisplayAdapter;I)V

    .line 206
    :goto_0
    monitor-exit v1

    .line 207
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    #calls: Lcom/android/server/display/LocalDisplayAdapter;->tryDisconnectDisplayLocked(I)V
    invoke-static {v0, p3}, Lcom/android/server/display/LocalDisplayAdapter;->access$100(Lcom/android/server/display/LocalDisplayAdapter;I)V

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
