.class public Landroid/media/DolbyMediaCommon;
.super Ljava/lang/Object;
.source "DolbyMediaCommon.java"


# static fields
.field public static final DOLBY_METADATA_KEY_AUDIO_MIME_TYPE:I = 0xcc

.field public static final EXTRA_AUDIO_MIME_TYPE:Ljava/lang/String; = "android.media.extra.AUDIO_MIME_TYPE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDolbyDigitalFamily(Ljava/lang/String;)Z
    .locals 1
    .parameter "audioMimeType"

    .prologue
    .line 50
    if-eqz p0, :cond_1

    const-string v0, "audio/eac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/ac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
