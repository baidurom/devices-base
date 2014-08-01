.class Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;
.super Ljava/lang/Object;
.source "VoiceCommandManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voicecommand/app/VoiceCommandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheCommand"
.end annotation


# instance fields
.field mExtraData:Landroid/os/Bundle;

.field mMainAction:I

.field mSubAction:I

.field final synthetic this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;


# direct methods
.method constructor <init>(Lcom/mediatek/voicecommand/app/VoiceCommandManager;IILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter "mainaction"
    .parameter "subaction"
    .parameter "extradata"

    .prologue
    .line 466
    iput-object p1, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;->this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    iput p2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;->mMainAction:I

    .line 468
    iput p3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;->mSubAction:I

    .line 469
    iput-object p4, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;->mExtraData:Landroid/os/Bundle;

    .line 470
    return-void
.end method
