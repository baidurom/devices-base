.class public Landroid/content/res/ThemeProperties;
.super Ljava/lang/Object;
.source "ThemeProperties.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentControlTheme()I
    .locals 3

    .prologue
    .line 17
    const-string/jumbo v1, "persist.sys.skin.control"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 18
    .local v0, index:I
    if-nez v0, :cond_0

    .line 19
    const v0, 0x10302f0

    .line 21
    :cond_0
    return v0
.end method

.method public static getCurrentThemeIndex()I
    .locals 3

    .prologue
    .line 26
    const-string/jumbo v1, "persist.sys.skin.theme"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 27
    .local v0, index:I
    if-gtz v0, :cond_0

    .line 28
    const v0, 0x103006b

    .line 30
    :cond_0
    return v0
.end method

.method public static setControlTheme(I)V
    .locals 2
    .parameter "controltheme"

    .prologue
    .line 34
    if-gtz p0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    const-string/jumbo v0, "persist.sys.skin.control"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setThemeId(I)V
    .locals 2
    .parameter "theme_id"

    .prologue
    .line 42
    if-gtz p0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string/jumbo v0, "persist.sys.skin.theme"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
