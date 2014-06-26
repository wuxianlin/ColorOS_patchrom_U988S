.class Lcom/android/server/WifiService$7;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .locals 1
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    .line 1396
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiStayAwake(II)Z
    .locals 5
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v1, 0x1

    .line 1364
    iget-object v2, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1368
    .local v0, wifiSleepPolicy:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1377
    :cond_0
    :goto_0
    return v1

    .line 1371
    :cond_1
    if-ne v0, v1, :cond_2

    if-nez p2, :cond_0

    .line 1377
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$7;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1258
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1260
    .local v1, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_idle_ms"

    const-wide/32 v13, 0xdbba0

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1264
    .local v2, idleMillis:J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_monitor_ms"

    const-wide/32 v13, 0xea60

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1268
    .local v4, monitorMillis:J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "stay_on_while_plugged_in"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1271
    .local v8, stayAwakeConditions:I
    const-string v11, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1273
    const-string v11, "WifiService"

    const-string v12, "ACTION_SCREEN_ON"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1277
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mMonitorIntent:Landroid/app/PendingIntent;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1278
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    const-wide/16 v12, 0x0

    #setter for: Lcom/android/server/WifiService;->mWifiData:J
    invoke-static {v11, v12, v13}, Lcom/android/server/WifiService;->access$3002(Lcom/android/server/WifiService;J)J

    .line 1280
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    const/4 v12, 0x0

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$3102(Lcom/android/server/WifiService;Z)Z

    .line 1281
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v11}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    const/4 v12, 0x0

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$3200(Lcom/android/server/WifiService;Z)V

    .line 1353
    :cond_0
    :goto_0
    return-void

    .line 1283
    :cond_1
    const-string v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1285
    const-string v11, "WifiService"

    const-string v12, "ACTION_SCREEN_OFF"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    const/4 v12, 0x1

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$3102(Lcom/android/server/WifiService;Z)Z

    .line 1288
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v11}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)V

    .line 1295
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v11}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11}, Lcom/android/server/WifiService$7;->shouldWifiStayAwake(II)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1297
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    iget-object v11, v11, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v11, v12, :cond_2

    .line 1298
    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setting ACTION_DEVICE_IDLE: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    add-long/2addr v13, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v15}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1302
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    const/4 v12, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$3200(Lcom/android/server/WifiService;Z)V

    goto :goto_0

    .line 1306
    :cond_3
    const-string v11, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1307
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    iget-object v11, v11, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v11, v12, :cond_4

    .line 1308
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->getWifiData()J
    invoke-static {v12}, Lcom/android/server/WifiService;->access$3400(Lcom/android/server/WifiService;)J

    move-result-wide v12

    #setter for: Lcom/android/server/WifiService;->mWifiData:J
    invoke-static {v11, v12, v13}, Lcom/android/server/WifiService;->access$3002(Lcom/android/server/WifiService;J)J

    .line 1309
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    add-long/2addr v13, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mMonitorIntent:Landroid/app/PendingIntent;
    invoke-static {v15}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1312
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    const/4 v12, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$3200(Lcom/android/server/WifiService;Z)V

    goto/16 :goto_0

    .line 1314
    :cond_5
    const-string v11, "com.android.server.WifiManager.action.ACTION_SMART_MONITOR"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1315
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiData:J
    invoke-static {v12}, Lcom/android/server/WifiService;->access$3000(Lcom/android/server/WifiService;)J

    move-result-wide v12

    #calls: Lcom/android/server/WifiService;->isWifiChangeData(J)Z
    invoke-static {v11, v12, v13}, Lcom/android/server/WifiService;->access$3500(Lcom/android/server/WifiService;J)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1316
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->getWifiData()J
    invoke-static {v12}, Lcom/android/server/WifiService;->access$3400(Lcom/android/server/WifiService;)J

    move-result-wide v12

    #setter for: Lcom/android/server/WifiService;->mWifiData:J
    invoke-static {v11, v12, v13}, Lcom/android/server/WifiService;->access$3002(Lcom/android/server/WifiService;J)J

    .line 1317
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    add-long/2addr v13, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mMonitorIntent:Landroid/app/PendingIntent;
    invoke-static {v15}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1320
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    const/4 v12, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$3200(Lcom/android/server/WifiService;Z)V

    goto/16 :goto_0

    .line 1323
    :cond_7
    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1331
    const-string v11, "plugged"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1333
    .local v6, pluggedType:I
    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ACTION_BATTERY_CHANGED pluggedType: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v11}, Lcom/android/server/WifiService;->access$3100(Lcom/android/server/WifiService;)Z

    move-result v11

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v11}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11}, Lcom/android/server/WifiService$7;->shouldWifiStayAwake(II)Z

    move-result v11

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6}, Lcom/android/server/WifiService$7;->shouldWifiStayAwake(II)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    add-long v9, v11, v2

    .line 1339
    .local v9, triggerTime:J
    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setting ACTION_DEVICE_IDLE timer for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v11, v12, v9, v10, v13}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1344
    .end local v9           #triggerTime:J
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v11, v6}, Lcom/android/server/WifiService;->access$3302(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    .line 1345
    .end local v6           #pluggedType:I
    :cond_9
    const-string v11, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1346
    const-string v11, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1348
    .local v7, state:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto/16 :goto_0

    .line 1349
    .end local v7           #state:I
    :cond_a
    const-string v11, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1350
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    const-string v12, "phoneinECMState"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    #setter for: Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$3602(Lcom/android/server/WifiService;Z)Z

    .line 1351
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static {v11}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)V

    goto/16 :goto_0
.end method
