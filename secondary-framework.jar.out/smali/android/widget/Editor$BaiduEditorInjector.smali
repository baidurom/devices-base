.class Landroid/widget/Editor$BaiduEditorInjector;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaiduEditorInjector"
.end annotation


# static fields
.field static final DELAY_BEFORE_SEARCH_ACTION:I = 0xc8

.field static final HANDLE_HEIGHT:I = 0x28

.field static final NONIUS_HEIGHT:I = 0x1e

.field public static mMagnifierController:Landroid/widget/MagnifierController;

.field public static mSearchText:Ljava/lang/CharSequence;

.field public static mWordSegment:Lcom/android/internal/util/WordSegment;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableMagnifier()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/widget/Editor$BaiduEditorInjector;->mMagnifierController:Landroid/widget/MagnifierController;

    return-void
.end method

.method public static dismiss()V
    .locals 1

    .prologue
    sget-object v0, Landroid/widget/Editor$BaiduEditorInjector;->mMagnifierController:Landroid/widget/MagnifierController;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/widget/Editor$BaiduEditorInjector;->mMagnifierController:Landroid/widget/MagnifierController;

    invoke-virtual {v0}, Landroid/widget/MagnifierController;->dismiss()V

    :cond_0
    return-void
.end method

.method public static enableMagnifier(Landroid/widget/Editor;)V
    .locals 2
    .parameter "editor"

    .prologue
    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p0}, Landroid/widget/Editor;->access$iget-mTextView-e80fac(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroid/widget/EditText;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/widget/MagnifierController;

    invoke-direct {v1, v0}, Landroid/widget/MagnifierController;-><init>(Landroid/widget/TextView;)V

    sput-object v1, Landroid/widget/Editor$BaiduEditorInjector;->mMagnifierController:Landroid/widget/MagnifierController;

    goto :goto_0
.end method

.method public static fixCursorPostion(Landroid/widget/Editor;I)I
    .locals 7
    .parameter "editor"
    .parameter "line"

    .prologue
    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p0}, Landroid/widget/Editor;->access$iget-mTextView-e80fac(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    .local v4, textView:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .local v2, layout:Landroid/text/Layout;
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .local v0, bottom:I
    invoke-virtual {v4}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v5

    const/high16 v6, 0x3f80

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .local v1, displayMetrics:Landroid/util/DisplayMetrics;
    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x4080

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .local v3, offsetToBaseLine:I
    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v5

    add-int v0, v5, v3

    .end local v1           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v3           #offsetToBaseLine:I
    :cond_1
    return v0
.end method

.method public static hideDelayed()V
    .locals 1

    .prologue
    sget-object v0, Landroid/widget/Editor$BaiduEditorInjector;->mMagnifierController:Landroid/widget/MagnifierController;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/widget/Editor$BaiduEditorInjector;->mMagnifierController:Landroid/widget/MagnifierController;

    invoke-virtual {v0}, Landroid/widget/MagnifierController;->hideDelayed()V

    :cond_0
    return-void
.end method

.method public static onEventWordSearch(Landroid/widget/Editor;)V
    .locals 2
    .parameter "editor"

    .prologue
    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p0}, Landroid/widget/Editor;->access$iget-mTextView-e80fac(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "search_text"

    invoke-static {v0, v1}, Landroid/util/FeatureData;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static onEventWordSeg(Landroid/widget/Editor;)V
    .locals 2
    .parameter "editor"

    .prologue
    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p0}, Landroid/widget/Editor;->access$iget-mTextView-e80fac(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "seg_text"

    invoke-static {v0, v1}, Landroid/util/FeatureData;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static update(Landroid/widget/Editor$HandleView;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v0, -0x1

    .local v0, type:I
    instance-of v1, p0, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_0
    sget-object v1, Landroid/widget/Editor$BaiduEditorInjector;->mMagnifierController:Landroid/widget/MagnifierController;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/widget/Editor$BaiduEditorInjector;->mMagnifierController:Landroid/widget/MagnifierController;

    invoke-virtual {v1, v0}, Landroid/widget/MagnifierController;->update(I)V

    :cond_1
    return-void

    :cond_2
    instance-of v1, p0, Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    instance-of v1, p0, Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method
