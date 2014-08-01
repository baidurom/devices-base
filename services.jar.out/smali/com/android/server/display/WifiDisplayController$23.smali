.class Lcom/android/server/display/WifiDisplayController$23;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter

    .prologue
    .line 1364
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$23;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 1367
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1368
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1371
    const-string v7, "wifi_p2p_state"

    invoke-virtual {p2, v7, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 1374
    .local v2, enabled:Z
    :goto_0
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$300()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1375
    const-string v6, "WifiDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received WIFI_P2P_STATE_CHANGED_ACTION: enabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_0
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController$23;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->handleStateChanged(Z)V
    invoke-static {v6, v2}, Lcom/android/server/display/WifiDisplayController;->access$4600(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 1433
    .end local v2           #enabled:Z
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v6

    .line 1371
    goto :goto_0

    .line 1380
    :cond_3
    const-string v7, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1381
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$300()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1382
    const-string v6, "WifiDisplayController"

    const-string v7, "Received WIFI_P2P_PEERS_CHANGED_ACTION."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :cond_4
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController$23;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->handlePeersChanged()V
    invoke-static {v6}, Lcom/android/server/display/WifiDisplayController;->access$4700(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_1

    .line 1386
    :cond_5
    const-string v7, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1387
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1390
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    const-string v6, "reason="

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1391
    .local v5, reason:I
    const-string v6, "WifiDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received WIFI_P2P_CONNECTION_CHANGED_ACTION: networkInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", reason = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController$23;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->handleConnectionChanged(Landroid/net/NetworkInfo;I)V
    invoke-static {v6, v3, v5}, Lcom/android/server/display/WifiDisplayController;->access$4800(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;I)V

    goto :goto_1

    .line 1400
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v5           #reason:I
    :cond_6
    const-string v7, "com.mediatek.mediaplayer.DRM_PLAY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1401
    const/4 v4, 0x0

    .line 1402
    .local v4, playerID:I
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$23;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string v8, "isPlaying"

    invoke-virtual {p2, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    #setter for: Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z
    invoke-static {v7, v8}, Lcom/android/server/display/WifiDisplayController;->access$4902(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 1403
    const-string v7, "playerId"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1404
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received DRM_CONTENT_MEDIAPLAYER: isPlaying = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$23;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$4900(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", player = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isConnected = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$23;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mMR0DataPathConnected:Z
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$3000(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$23;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mMR0DataPathConnected:Z
    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$3000(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v7

    if-ne v2, v7, :cond_1

    .line 1409
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$23;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z
    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$4900(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v7

    if-ne v2, v7, :cond_7

    .line 1410
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$23;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->setRemoteSubmixOn(Z)V
    invoke-static {v7, v6}, Lcom/android/server/display/WifiDisplayController;->access$5000(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 1411
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController$23;->this$0:Lcom/android/server/display/WifiDisplayController;

    #setter for: Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I
    invoke-static {v6, v4}, Lcom/android/server/display/WifiDisplayController;->access$5102(Lcom/android/server/display/WifiDisplayController;I)I

    goto/16 :goto_1

    .line 1413
    :cond_7
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController$23;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I
    invoke-static {v6}, Lcom/android/server/display/WifiDisplayController;->access$5100(Lcom/android/server/display/WifiDisplayController;)I

    move-result v6

    if-ne v6, v4, :cond_8

    .line 1414
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController$23;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->setRemoteSubmixOn(Z)V
    invoke-static {v6, v2}, Lcom/android/server/display/WifiDisplayController;->access$5000(Lcom/android/server/display/WifiDisplayController;Z)V

    goto/16 :goto_1

    .line 1416
    :cond_8
    const-string v6, "WifiDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "player ID doesn\'t match last time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController$23;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I
    invoke-static {v8}, Lcom/android/server/display/WifiDisplayController;->access$5100(Lcom/android/server/display/WifiDisplayController;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1421
    .end local v4           #playerID:I
    :cond_9
    const-string v6, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1422
    const-string v6, "discoveryState"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1424
    .local v1, discoveryState:I
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$300()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1425
    const-string v6, "WifiDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received WIFI_P2P_DISCOVERY_CHANGED_ACTION: discoveryState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_a
    if-ne v1, v2, :cond_1

    .line 1429
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController$23;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->handleScanFinished()V
    invoke-static {v6}, Lcom/android/server/display/WifiDisplayController;->access$1400(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_1
.end method
