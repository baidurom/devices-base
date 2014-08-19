.class public Landroid/view/BaiduVolumePanel;
.super Landroid/view/VolumePanel;
.source "BaiduVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/BaiduVolumePanel$BaiduInjector;
    }
.end annotation


# static fields
.field static final MSG_THEME_CHANGED:I = 0x3e8


# instance fields
.field mIsThemeChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 0
    .parameter "context"
    .parameter "volumeService"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    invoke-super {p0, p1}, Landroid/view/VolumePanel;->handleMessage(Landroid/os/Message;)V

    invoke-static {p0, p1}, Landroid/view/BaiduVolumePanel$BaiduInjector;->handleMessage(Landroid/view/BaiduVolumePanel;Landroid/os/Message;)V

    return-void
.end method

.method listenToRingerMode()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.THEME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/BaiduVolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/BaiduVolumePanel$1;

    invoke-direct {v2, p0}, Landroid/view/BaiduVolumePanel$1;-><init>(Landroid/view/BaiduVolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 0
    .parameter "streamType"
    .parameter "flags"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    invoke-static {p0}, Landroid/view/BaiduVolumePanel$BaiduInjector;->checkThemeChanged(Landroid/view/BaiduVolumePanel;)V

    return-void
.end method
