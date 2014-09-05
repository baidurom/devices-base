.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1005
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1006
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1009
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1010
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 85
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    return-void
.end method

.method public run()V
    .locals 140

    .prologue
    .line 91
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 94
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 96
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 99
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 100
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 104
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v115

    .line 106
    .local v115, shutdownAction:Ljava/lang/String;
    if-eqz v115, :cond_0

    invoke-virtual/range {v115 .. v115}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 107
    const/4 v7, 0x0

    move-object/from16 v0, v115

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_f

    const/16 v109, 0x1

    .line 110
    .local v109, reboot:Z
    :goto_0
    invoke-virtual/range {v115 .. v115}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_10

    .line 111
    const/4 v7, 0x1

    invoke-virtual/range {v115 .. v115}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v115

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v108

    .line 116
    .local v108, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v109

    move-object/from16 v1, v108

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 120
    .end local v108           #reason:Ljava/lang/String;
    .end local v109           #reboot:Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 121
    .local v85, factoryTestStr:Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v85

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    const/16 v84, 0x0

    .line 123
    .local v84, factoryTest:I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 125
    .local v33, headless:Z
    const/16 v90, 0x0

    .line 126
    .local v90, installer:Lcom/android/server/pm/Installer;
    const/16 v59, 0x0

    .line 127
    .local v59, accountManager:Lcom/android/server/accounts/AccountManagerService;
    const/16 v72, 0x0

    .line 128
    .local v72, contentService:Lcom/android/server/content/ContentService;
    const/16 v92, 0x0

    .line 129
    .local v92, lights:Lcom/android/server/LightsService;
    const/16 v107, 0x0

    .line 130
    .local v107, power:Lcom/android/server/power/PowerManagerService;
    const/16 v78, 0x0

    .line 131
    .local v78, display:Lcom/android/server/display/DisplayManagerService;
    const/16 v64, 0x0

    .line 132
    .local v64, battery:Lcom/android/server/BatteryService;
    const/16 v129, 0x0

    .line 133
    .local v129, vibrator:Lcom/android/server/VibratorService;
    const/16 v61, 0x0

    .line 134
    .local v61, alarm:Lcom/android/server/AlarmManagerService;
    const/16 v98, 0x0

    .line 135
    .local v98, mountService:Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 136
    .local v30, networkManagement:Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 137
    .local v29, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v100, 0x0

    .line 138
    .local v100, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v70, 0x0

    .line 139
    .local v70, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v136, 0x0

    .line 140
    .local v136, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v134, 0x0

    .line 141
    .local v134, wifi:Lcom/android/server/wifi/WifiService;
    const/16 v114, 0x0

    .line 142
    .local v114, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v106, 0x0

    .line 143
    .local v106, pm:Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 144
    .local v5, context:Landroid/content/Context;
    const/16 v138, 0x0

    .line 145
    .local v138, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v65, 0x0

    .line 146
    .local v65, bluetooth:Lcom/android/server/BluetoothManagerService;
    const/16 v79, 0x0

    .line 147
    .local v79, dock:Lcom/android/server/DockObserver;
    const/16 v127, 0x0

    .line 148
    .local v127, usb:Lcom/android/server/usb/UsbService;
    const/16 v112, 0x0

    .line 149
    .local v112, serial:Lcom/android/server/SerialService;
    const/16 v122, 0x0

    .line 150
    .local v122, twilight:Lcom/android/server/TwilightService;
    const/16 v125, 0x0

    .line 151
    .local v125, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v110, 0x0

    .line 152
    .local v110, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v102, 0x0

    .line 153
    .local v102, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v67, 0x0

    .line 154
    .local v67, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v89, 0x0

    .line 155
    .local v89, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v118, 0x0

    .line 162
    .local v118, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    new-instance v124, Landroid/os/HandlerThread;

    const-string v7, "UI"

    move-object/from16 v0, v124

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 163
    .local v124, uiHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v124 .. v124}, Ljava/lang/Thread;->start()V

    .line 164
    new-instance v20, Landroid/os/Handler;

    invoke-virtual/range {v124 .. v124}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 165
    .local v20, uiHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    new-instance v139, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v139

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 183
    .local v139, wmHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v139 .. v139}, Ljava/lang/Thread;->start()V

    .line 184
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v139 .. v139}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 185
    .local v21, wmHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    const/16 v24, 0x0

    .line 207
    .local v24, onlyCore:Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v91, Lcom/android/server/pm/Installer;

    invoke-direct/range {v91 .. v91}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4d

    .line 209
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .local v91, installer:Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v91 .. v91}, Lcom/android/server/pm/Installer;->ping()Z

    .line 211
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v4, Lcom/android/server/power/PowerManagerService;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4e

    .line 213
    .end local v107           #power:Lcom/android/server/power/PowerManagerService;
    .local v4, power:Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "power"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 215
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static/range {v84 .. v84}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v5

    .line 218
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v10, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v10, v5, v0, v1}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4f

    .line 220
    .end local v78           #display:Lcom/android/server/display/DisplayManagerService;
    .local v10, display:Lcom/android/server/display/DisplayManagerService;
    :try_start_3
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 222
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v119, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v119

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_50

    .line 224
    .end local v118           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .local v119, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :try_start_4
    const-string v7, "telephony.registry"

    move-object/from16 v0, v119

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 226
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 230
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 232
    invoke-virtual {v10}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_1

    .line 233
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    :cond_1
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v75

    .line 240
    .local v75, cryptState:Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v75

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 241
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/16 v24, 0x1

    .line 248
    :cond_2
    :goto_3
    if-eqz v84, :cond_13

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, v91

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v106

    .line 251
    const/16 v86, 0x0

    .line 253
    .local v86, firstBoot:Z
    :try_start_5
    invoke-interface/range {v106 .. v106}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_37
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v86

    .line 257
    :goto_5
    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 259
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 262
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 266
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 270
    :try_start_7
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v60, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v60

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 272
    .end local v59           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .local v60, accountManager:Lcom/android/server/accounts/AccountManagerService;
    :try_start_8
    const-string v7, "account"

    move-object/from16 v0, v60

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_57
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_51

    move-object/from16 v59, v60

    .line 277
    .end local v60           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v59       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    :goto_6
    :try_start_9
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v7, 0x1

    move/from16 v0, v84

    if-ne v0, v7, :cond_14

    const/4 v7, 0x1

    :goto_7
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v72

    .line 281
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 284
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 287
    .end local v92           #lights:Lcom/android/server/LightsService;
    .local v6, lights:Lcom/android/server/LightsService;
    :try_start_a
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_52

    .line 289
    .end local v64           #battery:Lcom/android/server/BatteryService;
    .local v8, battery:Lcom/android/server/BatteryService;
    :try_start_b
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 291
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v130, Lcom/android/server/VibratorService;

    move-object/from16 v0, v130

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_53

    .line 293
    .end local v129           #vibrator:Lcom/android/server/VibratorService;
    .local v130, vibrator:Lcom/android/server/VibratorService;
    :try_start_c
    const-string v7, "vibrator"

    move-object/from16 v0, v130

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 297
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V

    .line 300
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v15, Lcom/android/server/AlarmManagerService;

    invoke-direct {v15, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_54

    .line 302
    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .local v15, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_d
    const-string v7, "alarm"

    invoke-static {v7, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 304
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v16

    move-object v12, v5

    move-object v13, v8

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 308
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v19, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_55

    .line 311
    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .local v19, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_e
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v7, 0x1

    move/from16 v0, v84

    if-eq v0, v7, :cond_15

    const/16 v22, 0x1

    :goto_8
    if-nez v86, :cond_16

    const/16 v23, 0x1

    :goto_9
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    invoke-static/range {v16 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v138

    .line 316
    const-string v7, "window"

    move-object/from16 v0, v138

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 317
    const-string v7, "input"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 319
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v138

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 321
    invoke-virtual/range {v138 .. v138}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 322
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/input/InputManagerService;->start()V

    .line 324
    move-object/from16 v0, v138

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 325
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 330
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 331
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2

    :goto_a
    move-object/from16 v118, v119

    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v118       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v129, v130

    .end local v130           #vibrator:Lcom/android/server/VibratorService;
    .restart local v129       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .line 348
    .end local v75           #cryptState:Ljava/lang/String;
    .end local v86           #firstBoot:Z
    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    :goto_b
    const/16 v76, 0x0

    .line 349
    .local v76, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v116, 0x0

    .line 350
    .local v116, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v87, 0x0

    .line 351
    .local v87, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v62, 0x0

    .line 352
    .local v62, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v104, 0x0

    .line 353
    .local v104, notification:Lcom/android/server/NotificationManagerService;
    const/16 v132, 0x0

    .line 354
    .local v132, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v93, 0x0

    .line 355
    .local v93, location:Lcom/android/server/LocationManagerService;
    const/16 v73, 0x0

    .line 356
    .local v73, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v120, 0x0

    .line 357
    .local v120, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v95, 0x0

    .line 358
    .local v95, lockSettings:Lcom/android/server/LockSettingsService;
    const/16 v81, 0x0

    .line 361
    .local v81, dreamy:Lcom/android/server/dreams/DreamManagerService;
    const/4 v7, 0x1

    move/from16 v0, v84

    if-eq v0, v7, :cond_3

    .line 363
    :try_start_f
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v88, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v88

    move-object/from16 v1, v138

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3

    .line 365
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .local v88, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_10
    const-string v7, "input_method"

    move-object/from16 v0, v88

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4c

    move-object/from16 v87, v88

    .line 371
    .end local v88           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_11
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4

    .line 380
    :cond_3
    :goto_d
    :try_start_12
    invoke-virtual/range {v138 .. v138}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_5

    .line 386
    :goto_e
    :try_start_13
    invoke-interface/range {v106 .. v106}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_6

    .line 392
    :goto_f
    :try_start_14
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x104040e

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_4b

    .line 399
    :goto_10
    const/4 v7, 0x1

    move/from16 v0, v84

    if-eq v0, v7, :cond_1b

    .line 400
    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 406
    :try_start_15
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v99, Lcom/android/server/MountService;

    move-object/from16 v0, v99

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_7

    .line 408
    .end local v98           #mountService:Lcom/android/server/MountService;
    .local v99, mountService:Lcom/android/server/MountService;
    :try_start_16
    const-string v7, "mount"

    move-object/from16 v0, v99

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_4a

    move-object/from16 v98, v99

    .line 415
    .end local v99           #mountService:Lcom/android/server/MountService;
    .restart local v98       #mountService:Lcom/android/server/MountService;
    :cond_4
    :goto_11
    :try_start_17
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance v96, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v96

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_8

    .line 417
    .end local v95           #lockSettings:Lcom/android/server/LockSettingsService;
    .local v96, lockSettings:Lcom/android/server/LockSettingsService;
    :try_start_18
    const-string v7, "lock_settings"

    move-object/from16 v0, v96

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_49

    move-object/from16 v95, v96

    .line 423
    .end local v96           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v95       #lockSettings:Lcom/android/server/LockSettingsService;
    :goto_12
    :try_start_19
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v77, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v77

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_9

    .line 425
    .end local v76           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v77, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1a
    const-string v7, "device_policy"

    move-object/from16 v0, v77

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_48

    move-object/from16 v76, v77

    .line 431
    .end local v77           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v76       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_13
    :try_start_1b
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v117, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v117

    move-object/from16 v1, v138

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_a

    .line 433
    .end local v116           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v117, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1c
    const-string v7, "statusbar"

    move-object/from16 v0, v117

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_47

    move-object/from16 v116, v117

    .line 439
    .end local v117           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v116       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_14
    :try_start_1d
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_b

    .line 447
    :goto_15
    :try_start_1e
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 449
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_c

    .line 455
    :goto_16
    :try_start_1f
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v121, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v121

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_d

    .line 457
    .end local v120           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v121, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_20
    const-string v7, "textservices"

    move-object/from16 v0, v121

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_46

    move-object/from16 v120, v121

    .line 463
    .end local v121           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v120       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_17
    :try_start_21
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v101, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v101

    move-object/from16 v1, v30

    invoke-direct {v0, v5, v1, v15}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_e

    .line 465
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v101, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_22
    const-string v7, "netstats"

    move-object/from16 v0, v101

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_45

    move-object/from16 v29, v101

    .line 471
    .end local v101           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_18
    :try_start_23
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_f

    .line 475
    .end local v100           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_24
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_44

    .line 481
    :goto_19
    :try_start_25
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v137, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v137

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_10

    .line 483
    .end local v136           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v137, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_26
    const-string v7, "wifip2p"

    move-object/from16 v0, v137

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_43

    move-object/from16 v136, v137

    .line 489
    .end local v137           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v136       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1a
    :try_start_27
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v135, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v135

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_11

    .line 491
    .end local v134           #wifi:Lcom/android/server/wifi/WifiService;
    .local v135, wifi:Lcom/android/server/wifi/WifiService;
    :try_start_28
    const-string v7, "wifi"

    move-object/from16 v0, v135

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_42

    move-object/from16 v134, v135

    .line 497
    .end local v135           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v134       #wifi:Lcom/android/server/wifi/WifiService;
    :goto_1b
    :try_start_29
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    new-instance v71, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v71

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_12

    .line 500
    .end local v70           #connectivity:Lcom/android/server/ConnectivityService;
    .local v71, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_2a
    const-string v7, "connectivity"

    move-object/from16 v0, v71

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 501
    move-object/from16 v0, v29

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 502
    move-object/from16 v0, v25

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 503
    invoke-virtual/range {v134 .. v134}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V

    .line 504
    invoke-virtual/range {v136 .. v136}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_41

    move-object/from16 v70, v71

    .line 510
    .end local v71           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v70       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1c
    :try_start_2b
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v114

    .line 512
    const-string v7, "servicediscovery"

    move-object/from16 v0, v114

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_13

    .line 519
    :goto_1d
    :try_start_2c
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_14

    .line 531
    :goto_1e
    if-eqz v98, :cond_5

    .line 532
    invoke-virtual/range {v98 .. v98}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 536
    :cond_5
    if-eqz v59, :cond_6

    .line 537
    :try_start_2d
    invoke-virtual/range {v59 .. v59}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_15

    .line 543
    :cond_6
    :goto_1f
    if-eqz v72, :cond_7

    .line 544
    :try_start_2e
    invoke-virtual/range {v72 .. v72}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_16

    .line 550
    :cond_7
    :goto_20
    :try_start_2f
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    new-instance v105, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v105

    move-object/from16 v1, v116

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_17

    .line 552
    .end local v104           #notification:Lcom/android/server/NotificationManagerService;
    .local v105, notification:Lcom/android/server/NotificationManagerService;
    :try_start_30
    const-string v7, "notification"

    move-object/from16 v0, v105

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 553
    move-object/from16 v0, v25

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_40

    move-object/from16 v104, v105

    .line 559
    .end local v105           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v104       #notification:Lcom/android/server/NotificationManagerService;
    :goto_21
    :try_start_31
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_18

    .line 567
    :goto_22
    :try_start_32
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v94, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v94

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_19

    .line 569
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .local v94, location:Lcom/android/server/LocationManagerService;
    :try_start_33
    const-string v7, "location"

    move-object/from16 v0, v94

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_3f

    move-object/from16 v93, v94

    .line 575
    .end local v94           #location:Lcom/android/server/LocationManagerService;
    .restart local v93       #location:Lcom/android/server/LocationManagerService;
    :goto_23
    :try_start_34
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v74, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v74

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1a

    .line 577
    .end local v73           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v74, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_35
    const-string v7, "country_detector"

    move-object/from16 v0, v74

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_3e

    move-object/from16 v73, v74

    .line 583
    .end local v74           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v73       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_24
    :try_start_36
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1b

    .line 591
    :goto_25
    :try_start_37
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v11}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1c

    .line 598
    :goto_26
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 601
    :try_start_38
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    if-nez v33, :cond_8

    .line 603
    new-instance v133, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v133

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1d

    .line 604
    .end local v132           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v133, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_39
    const-string v7, "wallpaper"

    move-object/from16 v0, v133

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_3d

    move-object/from16 v132, v133

    .line 611
    .end local v133           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v132       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_8
    :goto_27
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 613
    :try_start_3a
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1e

    .line 621
    :cond_9
    :goto_28
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    new-instance v80, Lcom/android/server/DockObserver;

    move-object/from16 v0, v80

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1f

    .end local v79           #dock:Lcom/android/server/DockObserver;
    .local v80, dock:Lcom/android/server/DockObserver;
    move-object/from16 v79, v80

    .line 629
    .end local v80           #dock:Lcom/android/server/DockObserver;
    .restart local v79       #dock:Lcom/android/server/DockObserver;
    :goto_29
    :try_start_3c
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v19

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_20

    .line 638
    :goto_2a
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    new-instance v128, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v128

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_21

    .line 641
    .end local v127           #usb:Lcom/android/server/usb/UsbService;
    .local v128, usb:Lcom/android/server/usb/UsbService;
    :try_start_3e
    const-string v7, "usb"

    move-object/from16 v0, v128

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_3c

    move-object/from16 v127, v128

    .line 647
    .end local v128           #usb:Lcom/android/server/usb/UsbService;
    .restart local v127       #usb:Lcom/android/server/usb/UsbService;
    :goto_2b
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    new-instance v113, Lcom/android/server/SerialService;

    move-object/from16 v0, v113

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_22

    .line 650
    .end local v112           #serial:Lcom/android/server/SerialService;
    .local v113, serial:Lcom/android/server/SerialService;
    :try_start_40
    const-string v7, "serial"

    move-object/from16 v0, v113

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_3b

    move-object/from16 v112, v113

    .line 656
    .end local v113           #serial:Lcom/android/server/SerialService;
    .restart local v112       #serial:Lcom/android/server/SerialService;
    :goto_2c
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    new-instance v123, Lcom/android/server/TwilightService;

    move-object/from16 v0, v123

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_23

    .end local v122           #twilight:Lcom/android/server/TwilightService;
    .local v123, twilight:Lcom/android/server/TwilightService;
    move-object/from16 v122, v123

    .line 663
    .end local v123           #twilight:Lcom/android/server/TwilightService;
    .restart local v122       #twilight:Lcom/android/server/TwilightService;
    :goto_2d
    :try_start_42
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    new-instance v126, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v126

    move-object/from16 v1, v122

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_24

    .end local v125           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v126, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v125, v126

    .line 671
    .end local v126           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v125       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_2e
    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_25

    .line 679
    :goto_2f
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    new-instance v63, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v63

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_26

    .line 681
    .end local v62           #appWidget:Lcom/android/server/AppWidgetService;
    .local v63, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_45
    const-string v7, "appwidget"

    move-object/from16 v0, v63

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_3a

    move-object/from16 v62, v63

    .line 687
    .end local v63           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v62       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_30
    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    new-instance v111, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v111

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_27

    .end local v110           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v111, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v110, v111

    .line 694
    .end local v111           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v110       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_31
    :try_start_47
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_28

    .line 705
    :goto_32
    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_29

    .line 713
    :goto_33
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    new-instance v103, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v103

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2a

    .end local v102           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v103, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v102, v103

    .line 720
    .end local v103           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v102       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_34
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    new-instance v68, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v68

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2b

    .line 722
    .end local v67           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v68, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_4b
    const-string v7, "commontime_management"

    move-object/from16 v0, v68

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_39

    move-object/from16 v67, v68

    .line 728
    .end local v68           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v67       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_35
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2c

    .line 734
    :goto_36
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110042

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 737
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    new-instance v82, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v82

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2d

    .line 740
    .end local v81           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .local v82, dreamy:Lcom/android/server/dreams/DreamManagerService;
    :try_start_4e
    const-string v7, "dreams"

    move-object/from16 v0, v82

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_38

    move-object/from16 v81, v82

    .line 747
    .end local v82           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v81       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :cond_a
    :goto_37
    :try_start_4f
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2e

    .line 756
    :goto_38
    invoke-virtual/range {v138 .. v138}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 757
    .local v47, safeMode:Z
    if-eqz v47, :cond_1a

    .line 758
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 760
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 762
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 771
    :goto_39
    :try_start_50
    invoke-virtual/range {v129 .. v129}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2f

    .line 777
    :goto_3a
    :try_start_51
    invoke-virtual/range {v95 .. v95}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_30

    .line 782
    :goto_3b
    if-eqz v76, :cond_b

    .line 784
    :try_start_52
    invoke-virtual/range {v76 .. v76}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_31

    .line 790
    :cond_b
    :goto_3c
    if-eqz v104, :cond_c

    .line 792
    :try_start_53
    invoke-virtual/range {v104 .. v104}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_32

    .line 799
    :cond_c
    :goto_3d
    :try_start_54
    invoke-virtual/range {v138 .. v138}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_33

    .line 804
    :goto_3e
    if-eqz v47, :cond_d

    .line 805
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 811
    :cond_d
    invoke-virtual/range {v138 .. v138}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v69

    .line 812
    .local v69, config:Landroid/content/res/Configuration;
    new-instance v97, Landroid/util/DisplayMetrics;

    invoke-direct/range {v97 .. v97}, Landroid/util/DisplayMetrics;-><init>()V

    .line 813
    .local v97, metrics:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v131

    check-cast v131, Landroid/view/WindowManager;

    .line 814
    .local v131, w:Landroid/view/WindowManager;
    invoke-interface/range {v131 .. v131}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v97

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 815
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v69

    move-object/from16 v1, v97

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 818
    :try_start_55
    move-object/from16 v0, v122

    move-object/from16 v1, v81

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_34

    .line 824
    :goto_3f
    :try_start_56
    invoke-interface/range {v106 .. v106}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_35

    .line 830
    :goto_40
    :try_start_57
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_36

    .line 836
    :goto_41
    move-object/from16 v34, v5

    .line 837
    .local v34, contextF:Landroid/content/Context;
    move-object/from16 v35, v98

    .line 838
    .local v35, mountServiceF:Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 839
    .local v36, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 840
    .local v37, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 841
    .local v38, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 842
    .local v39, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v70

    .line 843
    .local v40, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v79

    .line 844
    .local v41, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v42, v127

    .line 845
    .local v42, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v43, v122

    .line 846
    .local v43, twilightF:Lcom/android/server/TwilightService;
    move-object/from16 v44, v125

    .line 847
    .local v44, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v62

    .line 848
    .local v46, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v132

    .line 849
    .local v48, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v87

    .line 850
    .local v49, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v110

    .line 851
    .local v45, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v93

    .line 852
    .local v51, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v73

    .line 853
    .local v52, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v53, v102

    .line 854
    .local v53, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v54, v67

    .line 855
    .local v54, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v55, v120

    .line 856
    .local v55, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v116

    .line 857
    .local v50, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v56, v81

    .line 858
    .local v56, dreamyF:Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v57, v19

    .line 859
    .local v57, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v58, v118

    .line 866
    .local v58, telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$3;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v58}, Lcom/android/server/ServerThread$3;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 996
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 997
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_e
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1001
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    return-void

    .line 107
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #uiHandler:Landroid/os/Handler;
    .end local v21           #wmHandler:Landroid/os/Handler;
    .end local v24           #onlyCore:Z
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v30           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v33           #headless:Z
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #usbF:Lcom/android/server/usb/UsbService;
    .end local v43           #twilightF:Lcom/android/server/TwilightService;
    .end local v44           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v45           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v46           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v47           #safeMode:Z
    .end local v48           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v49           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v50           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v51           #locationF:Lcom/android/server/LocationManagerService;
    .end local v52           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v53           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v54           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v55           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v56           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v57           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v58           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v59           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v62           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v65           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v67           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v69           #config:Landroid/content/res/Configuration;
    .end local v70           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v72           #contentService:Lcom/android/server/content/ContentService;
    .end local v73           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v76           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v79           #dock:Lcom/android/server/DockObserver;
    .end local v81           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v84           #factoryTest:I
    .end local v85           #factoryTestStr:Ljava/lang/String;
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .end local v95           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v97           #metrics:Landroid/util/DisplayMetrics;
    .end local v98           #mountService:Lcom/android/server/MountService;
    .end local v102           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v104           #notification:Lcom/android/server/NotificationManagerService;
    .end local v106           #pm:Landroid/content/pm/IPackageManager;
    .end local v110           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v112           #serial:Lcom/android/server/SerialService;
    .end local v114           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v116           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v118           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v120           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v122           #twilight:Lcom/android/server/TwilightService;
    .end local v124           #uiHandlerThread:Landroid/os/HandlerThread;
    .end local v125           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v127           #usb:Lcom/android/server/usb/UsbService;
    .end local v129           #vibrator:Lcom/android/server/VibratorService;
    .end local v131           #w:Landroid/view/WindowManager;
    .end local v132           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v134           #wifi:Lcom/android/server/wifi/WifiService;
    .end local v136           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v138           #wm:Lcom/android/server/wm/WindowManagerService;
    .end local v139           #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_f
    const/16 v109, 0x0

    goto/16 :goto_0

    .line 113
    .restart local v109       #reboot:Z
    :cond_10
    const/16 v108, 0x0

    .restart local v108       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 121
    .end local v108           #reason:Ljava/lang/String;
    .end local v109           #reboot:Z
    .restart local v85       #factoryTestStr:Ljava/lang/String;
    :cond_11
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v84

    goto/16 :goto_2

    .line 243
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    .restart local v5       #context:Landroid/content/Context;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v20       #uiHandler:Landroid/os/Handler;
    .restart local v21       #wmHandler:Landroid/os/Handler;
    .restart local v24       #onlyCore:Z
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v30       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v33       #headless:Z
    .restart local v59       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v65       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v67       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v70       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v72       #contentService:Lcom/android/server/content/ContentService;
    .restart local v75       #cryptState:Ljava/lang/String;
    .restart local v79       #dock:Lcom/android/server/DockObserver;
    .restart local v84       #factoryTest:I
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v98       #mountService:Lcom/android/server/MountService;
    .restart local v100       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v102       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v106       #pm:Landroid/content/pm/IPackageManager;
    .restart local v110       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v112       #serial:Lcom/android/server/SerialService;
    .restart local v114       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v122       #twilight:Lcom/android/server/TwilightService;
    .restart local v124       #uiHandlerThread:Landroid/os/HandlerThread;
    .restart local v125       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v127       #usb:Lcom/android/server/usb/UsbService;
    .restart local v129       #vibrator:Lcom/android/server/VibratorService;
    .restart local v134       #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v136       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v138       #wm:Lcom/android/server/wm/WindowManagerService;
    .restart local v139       #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_12
    :try_start_58
    const-string v7, "1"

    move-object/from16 v0, v75

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 244
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/16 v24, 0x1

    goto/16 :goto_3

    .line 248
    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 273
    .restart local v86       #firstBoot:Z
    :catch_0
    move-exception v83

    .line 274
    .local v83, e:Ljava/lang/Throwable;
    :goto_42
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v83

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_58} :catch_1

    goto/16 :goto_6

    .line 343
    .end local v75           #cryptState:Ljava/lang/String;
    .end local v83           #e:Ljava/lang/Throwable;
    .end local v86           #firstBoot:Z
    :catch_1
    move-exception v83

    move-object/from16 v118, v119

    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v118       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v64

    .end local v64           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v90, v91

    .line 344
    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .local v83, e:Ljava/lang/RuntimeException;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    :goto_43
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v83

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 278
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v83           #e:Ljava/lang/RuntimeException;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v118           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v75       #cryptState:Ljava/lang/String;
    .restart local v86       #firstBoot:Z
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 312
    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v64           #battery:Lcom/android/server/BatteryService;
    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v92           #lights:Lcom/android/server/LightsService;
    .end local v129           #vibrator:Lcom/android/server/VibratorService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v130       #vibrator:Lcom/android/server/VibratorService;
    :cond_15
    const/16 v22, 0x0

    goto/16 :goto_8

    :cond_16
    const/16 v23, 0x0

    goto/16 :goto_9

    .line 332
    :cond_17
    const/4 v7, 0x1

    move/from16 v0, v84

    if-ne v0, v7, :cond_18

    .line 333
    :try_start_59
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 343
    :catch_2
    move-exception v83

    move-object/from16 v118, v119

    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v118       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v129, v130

    .end local v130           #vibrator:Lcom/android/server/VibratorService;
    .restart local v129       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto :goto_43

    .line 334
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v118           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v129           #vibrator:Lcom/android/server/VibratorService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v130       #vibrator:Lcom/android/server/VibratorService;
    :cond_18
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_19

    .line 336
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 338
    :cond_19
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v66, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v66

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_59
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_59} :catch_2

    .line 340
    .end local v65           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .local v66, bluetooth:Lcom/android/server/BluetoothManagerService;
    :try_start_5a
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v66

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catch Ljava/lang/RuntimeException; {:try_start_5a .. :try_end_5a} :catch_56

    move-object/from16 v65, v66

    .end local v66           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v65       #bluetooth:Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_a

    .line 366
    .end local v75           #cryptState:Ljava/lang/String;
    .end local v86           #firstBoot:Z
    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v130           #vibrator:Lcom/android/server/VibratorService;
    .restart local v62       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v73       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v76       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v81       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #location:Lcom/android/server/LocationManagerService;
    .restart local v95       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v104       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v116       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v118       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v120       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v129       #vibrator:Lcom/android/server/VibratorService;
    .restart local v132       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v83

    .line 367
    .local v83, e:Ljava/lang/Throwable;
    :goto_44
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 374
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v83

    .line 375
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 381
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v83

    .line 382
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 387
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v83

    .line 388
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 409
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v83

    .line 410
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_45
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 418
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v83

    .line 419
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_46
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 426
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v83

    .line 427
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_47
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 434
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v83

    .line 435
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_48
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 442
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v83

    .line 443
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 450
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v83

    .line 451
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 458
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v83

    .line 459
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 466
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v83

    .line 467
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_4a
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 476
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v83

    move-object/from16 v25, v100

    .line 477
    .end local v100           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 484
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v83

    .line 485
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 492
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v83

    .line 493
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 505
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v83

    .line 506
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 514
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v83

    .line 515
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 522
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v83

    .line 523
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 538
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v83

    .line 539
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 545
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v83

    .line 546
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 554
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v83

    .line 555
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 562
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v83

    .line 563
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 570
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v83

    .line 571
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 578
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v83

    .line 579
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 586
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v83

    .line 587
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 594
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v83

    .line 595
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 606
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v83

    .line 607
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 615
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v83

    .line 616
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 624
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v83

    .line 625
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 633
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v83

    .line 634
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 642
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v83

    .line 643
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 651
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v83

    .line 652
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v83

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c

    .line 658
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v83

    .line 659
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 666
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v83

    .line 667
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 674
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v83

    .line 675
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v83

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 682
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v83

    .line 683
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 689
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v83

    .line 690
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 696
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v83

    .line 697
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 708
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v83

    .line 709
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 715
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v83

    .line 716
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 723
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v83

    .line 724
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 730
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v83

    .line 731
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 741
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v83

    .line 742
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 749
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v83

    .line 750
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 765
    .end local v83           #e:Ljava/lang/Throwable;
    .restart local v47       #safeMode:Z
    :cond_1a
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_39

    .line 772
    :catch_2f
    move-exception v83

    .line 773
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 778
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v83

    .line 779
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 785
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v83

    .line 786
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 793
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v83

    .line 794
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 800
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v83

    .line 801
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 819
    .end local v83           #e:Ljava/lang/Throwable;
    .restart local v69       #config:Landroid/content/res/Configuration;
    .restart local v97       #metrics:Landroid/util/DisplayMetrics;
    .restart local v131       #w:Landroid/view/WindowManager;
    :catch_34
    move-exception v83

    .line 820
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 825
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v83

    .line 826
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 831
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v83

    .line 832
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 254
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47           #safeMode:Z
    .end local v62           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v69           #config:Landroid/content/res/Configuration;
    .end local v73           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v76           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v81           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v83           #e:Ljava/lang/Throwable;
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .end local v95           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v97           #metrics:Landroid/util/DisplayMetrics;
    .end local v104           #notification:Lcom/android/server/NotificationManagerService;
    .end local v116           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v118           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v120           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v131           #w:Landroid/view/WindowManager;
    .end local v132           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v75       #cryptState:Ljava/lang/String;
    .restart local v86       #firstBoot:Z
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v100       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_37
    move-exception v7

    goto/16 :goto_5

    .line 741
    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v64           #battery:Lcom/android/server/BatteryService;
    .end local v75           #cryptState:Ljava/lang/String;
    .end local v86           #firstBoot:Z
    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .end local v92           #lights:Lcom/android/server/LightsService;
    .end local v100           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v62       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v73       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v76       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v82       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #location:Lcom/android/server/LocationManagerService;
    .restart local v95       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v104       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v116       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v118       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v120       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v132       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_38
    move-exception v83

    move-object/from16 v81, v82

    .end local v82           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v81       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_57

    .line 723
    .end local v67           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v68       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_39
    move-exception v83

    move-object/from16 v67, v68

    .end local v68           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v67       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_56

    .line 682
    .end local v62           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v63       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_3a
    move-exception v83

    move-object/from16 v62, v63

    .end local v63           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v62       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_55

    .line 651
    .end local v112           #serial:Lcom/android/server/SerialService;
    .restart local v113       #serial:Lcom/android/server/SerialService;
    :catch_3b
    move-exception v83

    move-object/from16 v112, v113

    .end local v113           #serial:Lcom/android/server/SerialService;
    .restart local v112       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_54

    .line 642
    .end local v127           #usb:Lcom/android/server/usb/UsbService;
    .restart local v128       #usb:Lcom/android/server/usb/UsbService;
    :catch_3c
    move-exception v83

    move-object/from16 v127, v128

    .end local v128           #usb:Lcom/android/server/usb/UsbService;
    .restart local v127       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_53

    .line 606
    .end local v132           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v133       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3d
    move-exception v83

    move-object/from16 v132, v133

    .end local v133           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v132       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_52

    .line 578
    .end local v73           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v74       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_3e
    move-exception v83

    move-object/from16 v73, v74

    .end local v74           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v73       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_51

    .line 570
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .restart local v94       #location:Lcom/android/server/LocationManagerService;
    :catch_3f
    move-exception v83

    move-object/from16 v93, v94

    .end local v94           #location:Lcom/android/server/LocationManagerService;
    .restart local v93       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_50

    .line 554
    .end local v104           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v105       #notification:Lcom/android/server/NotificationManagerService;
    :catch_40
    move-exception v83

    move-object/from16 v104, v105

    .end local v105           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v104       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_4f

    .line 505
    .end local v70           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v71       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_41
    move-exception v83

    move-object/from16 v70, v71

    .end local v71           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v70       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_4e

    .line 492
    .end local v134           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v135       #wifi:Lcom/android/server/wifi/WifiService;
    :catch_42
    move-exception v83

    move-object/from16 v134, v135

    .end local v135           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v134       #wifi:Lcom/android/server/wifi/WifiService;
    goto/16 :goto_4d

    .line 484
    .end local v136           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v137       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_43
    move-exception v83

    move-object/from16 v136, v137

    .end local v137           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v136       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_4c

    .line 476
    :catch_44
    move-exception v83

    goto/16 :goto_4b

    .line 466
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v100       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v101       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_45
    move-exception v83

    move-object/from16 v29, v101

    .end local v101           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_4a

    .line 458
    .end local v120           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v121       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_46
    move-exception v83

    move-object/from16 v120, v121

    .end local v121           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v120       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_49

    .line 434
    .end local v116           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v117       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_47
    move-exception v83

    move-object/from16 v116, v117

    .end local v117           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v116       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_48

    .line 426
    .end local v76           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v77       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_48
    move-exception v83

    move-object/from16 v76, v77

    .end local v77           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v76       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_47

    .line 418
    .end local v95           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v96       #lockSettings:Lcom/android/server/LockSettingsService;
    :catch_49
    move-exception v83

    move-object/from16 v95, v96

    .end local v96           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v95       #lockSettings:Lcom/android/server/LockSettingsService;
    goto/16 :goto_46

    .line 409
    .end local v98           #mountService:Lcom/android/server/MountService;
    .restart local v99       #mountService:Lcom/android/server/MountService;
    :catch_4a
    move-exception v83

    move-object/from16 v98, v99

    .end local v99           #mountService:Lcom/android/server/MountService;
    .restart local v98       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_45

    .line 396
    :catch_4b
    move-exception v7

    goto/16 :goto_10

    .line 366
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v88       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_4c
    move-exception v83

    move-object/from16 v87, v88

    .end local v88           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_44

    .line 343
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v62           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v73           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v76           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v81           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .end local v95           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v104           #notification:Lcom/android/server/NotificationManagerService;
    .end local v116           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v120           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v132           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v78       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v107       #power:Lcom/android/server/power/PowerManagerService;
    :catch_4d
    move-exception v83

    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v64

    .end local v64           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v78

    .end local v78           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v107

    .end local v107           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_43

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v78       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v107       #power:Lcom/android/server/power/PowerManagerService;
    :catch_4e
    move-exception v83

    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v64

    .end local v64           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v78

    .end local v78           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v107

    .end local v107           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_43

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v78       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    :catch_4f
    move-exception v83

    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v64

    .end local v64           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v78

    .end local v78           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_43

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    :catch_50
    move-exception v83

    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v64

    .end local v64           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_43

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v59           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v118           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v60       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v75       #cryptState:Ljava/lang/String;
    .restart local v86       #firstBoot:Z
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_51
    move-exception v83

    move-object/from16 v118, v119

    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v118       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v64

    .end local v64           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v59, v60

    .end local v60           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v59       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_43

    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v118           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_52
    move-exception v83

    move-object/from16 v118, v119

    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v118       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v64

    .end local v64           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_43

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v118           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_53
    move-exception v83

    move-object/from16 v118, v119

    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v118       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_43

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v118           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v129           #vibrator:Lcom/android/server/VibratorService;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v130       #vibrator:Lcom/android/server/VibratorService;
    :catch_54
    move-exception v83

    move-object/from16 v118, v119

    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v118       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v129, v130

    .end local v130           #vibrator:Lcom/android/server/VibratorService;
    .restart local v129       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_43

    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v118           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v129           #vibrator:Lcom/android/server/VibratorService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v130       #vibrator:Lcom/android/server/VibratorService;
    :catch_55
    move-exception v83

    move-object/from16 v118, v119

    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v118       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v129, v130

    .end local v130           #vibrator:Lcom/android/server/VibratorService;
    .restart local v129       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_43

    .end local v65           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v118           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v129           #vibrator:Lcom/android/server/VibratorService;
    .restart local v66       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v130       #vibrator:Lcom/android/server/VibratorService;
    :catch_56
    move-exception v83

    move-object/from16 v118, v119

    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v118       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v65, v66

    .end local v66           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v65       #bluetooth:Lcom/android/server/BluetoothManagerService;
    move-object/from16 v129, v130

    .end local v130           #vibrator:Lcom/android/server/VibratorService;
    .restart local v129       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_43

    .line 273
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v59           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v118           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v60       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_57
    move-exception v83

    move-object/from16 v59, v60

    .end local v60           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v59       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_42

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v64           #battery:Lcom/android/server/BatteryService;
    .end local v75           #cryptState:Ljava/lang/String;
    .end local v86           #firstBoot:Z
    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .end local v92           #lights:Lcom/android/server/LightsService;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v62       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v73       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v76       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v81       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #location:Lcom/android/server/LocationManagerService;
    .restart local v95       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v104       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v116       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v118       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v120       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v132       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_1b
    move-object/from16 v25, v100

    .end local v100           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_38
.end method
