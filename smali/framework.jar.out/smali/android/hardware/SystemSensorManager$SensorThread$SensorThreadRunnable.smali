.class Landroid/hardware/SystemSensorManager$SensorThread$SensorThreadRunnable;
.super Ljava/lang/Object;
.source "SystemSensorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager$SensorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorThreadRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SystemSensorManager$SensorThread;


# direct methods
.method constructor <init>(Landroid/hardware/SystemSensorManager$SensorThread;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SystemSensorManager$SensorThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method private open()Z
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Landroid/hardware/SystemSensorManager;->sensors_create_queue()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->access$002(I)I

    .line 105
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 110
    const/4 v9, 0x3

    new-array v8, v9, [F

    .line 111
    .local v8, values:[F
    new-array v6, v10, [I

    .line 112
    .local v6, status:[I
    new-array v7, v10, [J

    .line 113
    .local v7, timestamp:[J
    const/4 v9, -0x8

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 115
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager$SensorThread$SensorThreadRunnable;->open()Z

    move-result v9

    if-nez v9, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v9, p0, Landroid/hardware/SystemSensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SystemSensorManager$SensorThread;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/hardware/SystemSensorManager$SensorThread;->mSensorsReady:Z

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 123
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    :goto_1
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 127
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$000()I

    move-result v9

    invoke-static {v9, v8, v6, v7}, Landroid/hardware/SystemSensorManager;->sensors_data_poll(I[F[I[J)I

    move-result v3

    .line 129
    .local v3, sensor:I
    aget v0, v6, v12

    .line 130
    .local v0, accuracy:I
    sget-object v10, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v10

    .line 131
    if-eq v3, v11, :cond_2

    :try_start_1
    sget-object v9, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 134
    :cond_2
    if-ne v3, v11, :cond_3

    sget-object v9, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 136
    const-string v9, "SensorManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_sensors_data_poll() failed, we bail out: sensors="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_3
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$000()I

    move-result v9

    invoke-static {v9}, Landroid/hardware/SystemSensorManager;->sensors_destroy_queue(I)V

    .line 140
    const/4 v9, 0x0

    invoke-static {v9}, Landroid/hardware/SystemSensorManager;->access$002(I)I

    .line 141
    iget-object v9, p0, Landroid/hardware/SystemSensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SystemSensorManager$SensorThread;

    const/4 v11, 0x0

    iput-object v11, v9, Landroid/hardware/SystemSensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    .line 142
    monitor-exit v10

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 123
    .end local v0           #accuracy:I
    .end local v3           #sensor:I
    :catchall_1
    move-exception v9

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v9

    .line 144
    .restart local v0       #accuracy:I
    .restart local v3       #sensor:I
    :cond_4
    :try_start_3
    sget-object v9, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 145
    .local v4, sensorObject:Landroid/hardware/Sensor;
    if-eqz v4, :cond_6

    .line 148
    sget-object v9, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 149
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v5, :cond_6

    .line 150
    sget-object v9, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 151
    .local v2, listener:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v2, v4}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 154
    invoke-virtual {v2, v4, v8, v7, v0}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V

    .line 149
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 159
    .end local v1           #i:I
    .end local v2           #listener:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v5           #size:I
    :cond_6
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method