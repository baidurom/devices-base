.class Landroid/widget/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# static fields
.field private static final ATTRS:[I = null

.field private static BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION_CROSS_FADE:I = 0x32

.field private static final DURATION_FADE_IN:I = 0x96

.field private static final DURATION_FADE_OUT:I = 0x12c

.field private static final DURATION_RESIZE:I = 0x64

.field private static final FADE_TIMEOUT:J = 0x5dcL

.field private static LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_PAGES:I = 0x4

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final OVERLAY_POSITION:I = 0x5

.field private static final PREVIEW_BACKGROUND_LEFT:I = 0x3

.field private static final PREVIEW_BACKGROUND_RIGHT:I = 0x4

.field private static final PREVIEW_LEFT:I = 0x0

.field private static final PREVIEW_RIGHT:I = 0x1

.field private static RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final TAP_TIMEOUT:J = 0x0L

.field private static final TEXT_COLOR:I = 0x0

.field private static final THUMB_DRAWABLE:I = 0x1

.field private static TOP:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRACK_DRAWABLE:I = 0x2


# instance fields
.field private mAlwaysShow:Z

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private final mDeferStartDrag:Ljava/lang/Runnable;

.field private mEnabled:Z

.field private mFirstVisibleItem:I

.field private mHasPendingDrag:Z

.field private final mHasTrackImage:Z

.field private mHeaderCount:I

.field private mInitialTouchY:F

.field private mLayoutFromRight:Z

.field private final mList:Landroid/widget/AbsListView;

.field private mListAdapter:Landroid/widget/BaseAdapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/widget/ImageView;

.field private final mPreviewPadding:I

.field private final mPreviewResId:[I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

.field private mScrollbarPosition:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSections:[Ljava/lang/Object;

.field private mShowingPrimary:Z

.field private mState:I

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private final mThumbImage:Landroid/widget/ImageView;

.field private final mTrackImage:Landroid/widget/ImageView;

.field private mUpdatingLayout:Z

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/FastScroller;->ATTRS:[I

    .line 105
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroid/widget/FastScroller;->TAP_TIMEOUT:J

    .line 1436
    new-instance v0, Landroid/widget/FastScroller$4;

    const-string v1, "left"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->LEFT:Landroid/util/Property;

    .line 1452
    new-instance v0, Landroid/widget/FastScroller$5;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->TOP:Landroid/util/Property;

    .line 1468
    new-instance v0, Landroid/widget/FastScroller$6;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->RIGHT:Landroid/util/Property;

    .line 1484
    new-instance v0, Landroid/widget/FastScroller$7;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    return-void

    .line 79
    :array_0
    .array-data 0x4
        0x59t 0x3t 0x1t 0x1t
        0x36t 0x3t 0x1t 0x1t
        0x39t 0x3t 0x1t 0x1t
        0x37t 0x3t 0x1t 0x1t
        0x38t 0x3t 0x1t 0x1t
        0x3at 0x3t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 17
    .parameter "listView"

    .prologue
    .line 244
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 108
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 109
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 123
    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/FastScroller;->mPreviewResId:[I

    .line 156
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/FastScroller;->mCurrentSection:I

    .line 159
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    .line 210
    new-instance v13, Landroid/widget/FastScroller$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/FastScroller$1;-><init>(Landroid/widget/FastScroller;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    .line 227
    new-instance v13, Landroid/widget/FastScroller$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/FastScroller$2;-><init>(Landroid/widget/FastScroller;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 237
    new-instance v13, Landroid/widget/FastScroller$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/FastScroller$3;-><init>(Landroid/widget/FastScroller;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 245
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 248
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 249
    .local v2, context:Landroid/content/Context;
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    .line 251
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 252
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    sget-object v14, Landroid/widget/FastScroller;->ATTRS:[I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 254
    .local v6, ta:Landroid/content/res/TypedArray;
    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 255
    .local v11, trackImage:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 257
    const/4 v12, 0x0

    .line 260
    .local v12, width:I
    const/4 v13, 0x2

    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 261
    .local v10, trackDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_3

    .line 262
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/FastScroller;->mHasTrackImage:Z

    .line 263
    invoke-virtual {v11, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v13, v11}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 265
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 270
    :goto_0
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 271
    .local v9, thumbImage:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iput-object v9, v0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 274
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 275
    .local v8, thumbDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_0

    .line 276
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v13, v9}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 278
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 282
    :cond_0
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    if-lez v13, :cond_1

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    if-gtz v13, :cond_2

    .line 283
    :cond_1
    const v13, 0x1050018

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 284
    .local v3, minWidth:I
    invoke-virtual {v9, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 285
    const v13, 0x1050019

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/view/View;->setMinimumHeight(I)V

    .line 287
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 290
    .end local v3           #minWidth:I
    :cond_2
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/FastScroller;->mWidth:I

    .line 292
    const v13, 0x1050015

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 293
    .local v4, previewSize:I
    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 294
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v13, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v13, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 296
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    .line 297
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 299
    const v13, 0x1050017

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/FastScroller;->mPreviewPadding:I

    .line 301
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FastScroller;->mPreviewPadding:I

    sub-int v14, v4, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 302
    .local v7, textMinSize:I
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 303
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v13, v7}, Landroid/view/View;->setMinimumWidth(I)V

    .line 304
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v13, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 305
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 306
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 307
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v13, v7}, Landroid/view/View;->setMinimumWidth(I)V

    .line 308
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v13, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mPreviewResId:[I

    const/4 v14, 0x0

    const/4 v15, 0x3

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v13, v14

    .line 312
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mPreviewResId:[I

    const/4 v14, 0x1

    const/4 v15, 0x4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v13, v14

    .line 313
    const/4 v13, 0x5

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/FastScroller;->mOverlayPosition:I

    .line 314
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 316
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollBarStyle()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 317
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 318
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/FastScroller;->mState:I

    .line 319
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v14, 0xb

    if-lt v13, v14, :cond_4

    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    .line 322
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 323
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->refreshDrawablePressedState()V

    .line 324
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/widget/FastScroller;->updateLongList(II)V

    .line 325
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v13}, Landroid/view/View;->getVerticalScrollbarPosition()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 326
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 327
    return-void

    .line 267
    .end local v4           #previewSize:I
    .end local v7           #textMinSize:I
    .end local v8           #thumbDrawable:Landroid/graphics/drawable/Drawable;
    .end local v9           #thumbImage:Landroid/widget/ImageView;
    :cond_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/FastScroller;->mHasTrackImage:Z

    goto/16 :goto_0

    .line 319
    .restart local v4       #previewSize:I
    .restart local v7       #textMinSize:I
    .restart local v8       #thumbDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v9       #thumbImage:Landroid/widget/ImageView;
    :cond_4
    const/4 v13, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/widget/FastScroller;)Landroid/widget/AbsListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/FastScroller;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/FastScroller;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/FastScroller;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/widget/FastScroller;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->scrollTo(F)V

    return-void
.end method

.method static synthetic access$502(Landroid/widget/FastScroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mHasPendingDrag:Z

    return p1
.end method

.method static synthetic access$600(Landroid/widget/FastScroller;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/FastScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    return v0
.end method

.method static synthetic access$702(Landroid/widget/FastScroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .parameter "v"
    .parameter "alpha"

    .prologue
    .line 1429
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 9
    .parameter "v"
    .parameter "bounds"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1500
    sget-object v4, Landroid/widget/FastScroller;->LEFT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1501
    .local v1, left:Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/FastScroller;->TOP:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1502
    .local v3, top:Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/FastScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1503
    .local v2, right:Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1504
    .local v0, bottom:Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v7

    aput-object v3, v4, v8

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    return-object v4
.end method

.method private static animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .parameter "v"
    .parameter "target"

    .prologue
    .line 1422
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "view"
    .parameter "bounds"

    .prologue
    .line 533
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 534
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 535
    return-void

    .line 534
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private beginDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1221
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 1223
    iget-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 1224
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 1227
    :cond_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_1

    .line 1228
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1229
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1232
    :cond_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelFling()V

    .line 1233
    return-void
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 1195
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1197
    .local v8, cancelFling:Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1198
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1199
    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    .prologue
    .line 1207
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1208
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mHasPendingDrag:Z

    .line 1209
    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;
    .locals 8
    .parameter "context"
    .parameter "ta"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 469
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 471
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 472
    .local v2, res:Landroid/content/res/Resources;
    const v6, 0x1050015

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 473
    .local v0, minSize:I
    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 474
    .local v3, textColor:Landroid/content/res/ColorStateList;
    const v6, 0x1050016

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v4, v6

    .line 475
    .local v4, textSize:F
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 476
    .local v5, textView:Landroid/widget/TextView;
    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 478
    invoke-virtual {v5, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 479
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 480
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 481
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 482
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 485
    iget-object v6, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutDirection(I)V

    .line 487
    return-object v5
.end method

.method private getPosFromItemCount(III)F
    .locals 11
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v9, 0x0

    .line 1135
    iget-object v10, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v10, :cond_1

    .line 1136
    :cond_0
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 1139
    :cond_1
    iget-object v10, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v10, :cond_3

    iget-object v10, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v10, :cond_3

    iget-object v10, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    array-length v10, v10

    if-lez v10, :cond_3

    const/4 v1, 0x1

    .line 1141
    .local v1, hasSections:Z
    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v10, p0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    if-nez v10, :cond_4

    .line 1142
    :cond_2
    int-to-float v9, p1

    sub-int v10, p3, p2

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 1187
    :goto_1
    return v9

    .end local v1           #hasSections:Z
    :cond_3
    move v1, v9

    .line 1139
    goto :goto_0

    .line 1146
    .restart local v1       #hasSections:Z
    :cond_4
    iget v10, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    sub-int/2addr p1, v10

    .line 1147
    if-gez p1, :cond_5

    .line 1148
    const/4 v9, 0x0

    goto :goto_1

    .line 1150
    :cond_5
    iget v10, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    sub-int/2addr p3, v10

    .line 1153
    iget-object v10, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1155
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    if-nez v9, :cond_7

    .line 1156
    :cond_6
    const/4 v2, 0x0

    .line 1162
    .local v2, incrementalPos:F
    :goto_2
    iget-object v9, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v9, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v6

    .line 1163
    .local v6, section:I
    iget-object v9, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v9, v6}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v8

    .line 1164
    .local v8, sectionPos:I
    iget-object v9, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    array-length v7, v9

    .line 1166
    .local v7, sectionCount:I
    add-int/lit8 v9, v7, -0x1

    if-ge v6, v9, :cond_9

    .line 1168
    add-int/lit8 v9, v6, 0x1

    if-ge v9, v7, :cond_8

    .line 1169
    iget-object v9, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v10, v6, 0x1

    invoke-interface {v9, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v3

    .line 1173
    .local v3, nextSectionPos:I
    :goto_3
    sub-int v5, v3, v8

    .line 1180
    .end local v3           #nextSectionPos:I
    .local v5, positionsInSection:I
    :goto_4
    if-nez v5, :cond_a

    .line 1181
    const/4 v4, 0x0

    .line 1187
    .local v4, posWithinSection:F
    :goto_5
    int-to-float v9, v6

    add-float/2addr v9, v4

    int-to-float v10, v7

    div-float/2addr v9, v10

    goto :goto_1

    .line 1158
    .end local v2           #incrementalPos:F
    .end local v4           #posWithinSection:F
    .end local v5           #positionsInSection:I
    .end local v6           #section:I
    .end local v7           #sectionCount:I
    .end local v8           #sectionPos:I
    :cond_7
    iget-object v9, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v2, v9, v10

    .restart local v2       #incrementalPos:F
    goto :goto_2

    .line 1171
    .restart local v6       #section:I
    .restart local v7       #sectionCount:I
    .restart local v8       #sectionPos:I
    :cond_8
    add-int/lit8 v3, p3, -0x1

    .restart local v3       #nextSectionPos:I
    goto :goto_3

    .line 1175
    .end local v3           #nextSectionPos:I
    :cond_9
    sub-int v5, p3, v8

    .restart local v5       #positionsInSection:I
    goto :goto_4

    .line 1183
    :cond_a
    int-to-float v9, p1

    add-float/2addr v9, v2

    int-to-float v10, v8

    sub-float/2addr v9, v10

    int-to-float v10, v5

    div-float v4, v9, v10

    .restart local v4       #posWithinSection:F
    goto :goto_5
.end method

.method private getPosFromMotionEvent(F)F
    .locals 11
    .parameter "y"

    .prologue
    const/4 v8, 0x0

    .line 1114
    iget-object v1, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1115
    .local v1, container:Landroid/graphics/Rect;
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 1116
    .local v6, top:I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1118
    .local v0, bottom:I
    iget-object v7, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 1119
    .local v7, trackImage:Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v3, v9

    .line 1120
    .local v3, min:F
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    int-to-float v2, v9

    .line 1121
    .local v2, max:F
    move v4, v3

    .line 1122
    .local v4, offset:F
    sub-float v5, v2, v3

    .line 1126
    .local v5, range:F
    cmpg-float v9, v5, v8

    if-gtz v9, :cond_0

    .line 1130
    :goto_0
    return v8

    :cond_0
    sub-float v9, p1, v4

    div-float/2addr v9, v5

    const/high16 v10, 0x3f80

    invoke-static {v9, v8, v10}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v8

    goto :goto_0
.end method

.method private getSectionsFromIndexer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 844
    iput-object v3, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 846
    iget-object v2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 847
    .local v0, adapter:Landroid/widget/Adapter;
    instance-of v2, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 848
    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    .line 849
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 852
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_0
    instance-of v2, v0, Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 853
    check-cast v2, Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 855
    .local v1, expAdapter:Landroid/widget/ExpandableListAdapter;
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_1

    .line 856
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1           #expAdapter:Landroid/widget/ExpandableListAdapter;
    iput-object v1, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 857
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 858
    iget-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 868
    :cond_1
    :goto_0
    return-void

    .line 860
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_2
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 861
    check-cast v2, Landroid/widget/BaseAdapter;

    iput-object v2, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 862
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 863
    iget-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 865
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_3
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 866
    iput-object v3, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .parameter
    .parameter "value"
    .parameter "views"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 1403
    .local p0, property:Landroid/util/Property;,"Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1404
    .local v1, animSet:Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .line 1406
    .local v2, builder:Landroid/animation/AnimatorSet$Builder;
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 1407
    aget-object v4, p2, v3

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1408
    .local v0, anim:Landroid/animation/Animator;
    if-nez v2, :cond_0

    .line 1409
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1406
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1411
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 1415
    .end local v0           #anim:Landroid/animation/Animator;
    :cond_1
    return-object v1
.end method

.method private isPointInside(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1373
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mHasTrackImage:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Landroid/widget/FastScroller;->isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPointInsideX(F)Z
    .locals 3
    .parameter "x"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1377
    iget-boolean v2, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v2, :cond_2

    .line 1378
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 1380
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1378
    goto :goto_0

    .line 1380
    :cond_2
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isPointInsideY(F)Z
    .locals 4
    .parameter "y"

    .prologue
    .line 1385
    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 1386
    .local v1, offset:F
    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float v2, v3, v1

    .line 1387
    .local v2, top:F
    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    add-float v0, v3, v1

    .line 1388
    .local v0, bottom:F
    cmpl-float v3, p1, v2

    if-ltz v3, :cond_0

    cmpg-float v3, p1, v0

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private layoutThumb()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 687
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 688
    .local v0, bounds:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v2, v0}, Landroid/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 689
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 690
    return-void
.end method

.method private layoutTrack()V
    .locals 14

    .prologue
    const/4 v7, 0x0

    .line 697
    iget-object v9, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 698
    .local v9, track:Landroid/view/View;
    iget-object v6, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 699
    .local v6, thumb:Landroid/view/View;
    iget-object v1, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 700
    .local v1, container:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 701
    .local v2, containerWidth:I
    const/high16 v12, -0x8000

    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 702
    .local v11, widthMeasureSpec:I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 703
    .local v3, heightMeasureSpec:I
    invoke-virtual {v9, v11, v3}, Landroid/view/View;->measure(II)V

    .line 705
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 706
    .local v10, trackWidth:I
    if-nez v6, :cond_0

    .line 707
    .local v7, thumbHalfHeight:I
    :goto_0
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v13

    sub-int/2addr v13, v10

    div-int/lit8 v13, v13, 0x2

    add-int v4, v12, v13

    .line 708
    .local v4, left:I
    add-int v5, v4, v10

    .line 709
    .local v5, right:I
    iget v12, v1, Landroid/graphics/Rect;->top:I

    add-int v8, v12, v7

    .line 710
    .local v8, top:I
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v12, v7

    .line 711
    .local v0, bottom:I
    invoke-virtual {v9, v4, v8, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 712
    return-void

    .line 706
    .end local v0           #bottom:I
    .end local v4           #left:I
    .end local v5           #right:I
    .end local v7           #thumbHalfHeight:I
    .end local v8           #top:I
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v7, v12, 0x2

    goto :goto_0
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .parameter "preview"
    .parameter "margins"
    .parameter "out"

    .prologue
    .line 623
    if-nez p2, :cond_0

    .line 624
    const/4 v8, 0x0

    .line 625
    .local v8, marginLeft:I
    const/4 v10, 0x0

    .line 626
    .local v10, marginTop:I
    const/4 v9, 0x0

    .line 633
    .local v9, marginRight:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 634
    .local v3, container:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 635
    .local v5, containerWidth:I
    sub-int v15, v5, v8

    sub-int v1, v15, v9

    .line 636
    .local v1, adjMaxWidth:I
    const/high16 v15, -0x8000

    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 637
    .local v14, widthMeasureSpec:I
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 638
    .local v6, heightMeasureSpec:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v6}, Landroid/view/View;->measure(II)V

    .line 641
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 642
    .local v4, containerHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 643
    .local v13, width:I
    div-int/lit8 v15, v4, 0xa

    add-int/2addr v15, v10

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v12, v15, v16

    .line 644
    .local v12, top:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int v2, v12, v15

    .line 645
    .local v2, bottom:I
    sub-int v15, v5, v13

    div-int/lit8 v15, v15, 0x2

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v7, v15, v16

    .line 646
    .local v7, left:I
    add-int v11, v7, v13

    .line 647
    .local v11, right:I
    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v12, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 648
    return-void

    .line 628
    .end local v1           #adjMaxWidth:I
    .end local v2           #bottom:I
    .end local v3           #container:Landroid/graphics/Rect;
    .end local v4           #containerHeight:I
    .end local v5           #containerWidth:I
    .end local v6           #heightMeasureSpec:I
    .end local v7           #left:I
    .end local v8           #marginLeft:I
    .end local v9           #marginRight:I
    .end local v10           #marginTop:I
    .end local v11           #right:I
    .end local v12           #top:I
    .end local v13           #width:I
    .end local v14           #widthMeasureSpec:I
    :cond_0
    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 629
    .restart local v8       #marginLeft:I
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 630
    .restart local v10       #marginTop:I
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .restart local v9       #marginRight:I
    goto :goto_0
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "v"
    .parameter "out"

    .prologue
    .line 547
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 548
    .local v0, margins:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 549
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 550
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 551
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 553
    iget v1, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 554
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 558
    :goto_0
    return-void

    .line 556
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/FastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .parameter "view"
    .parameter "adjacent"
    .parameter "margins"
    .parameter "out"

    .prologue
    .line 575
    if-nez p3, :cond_0

    .line 576
    const/4 v7, 0x0

    .line 577
    .local v7, marginLeft:I
    const/4 v9, 0x0

    .line 578
    .local v9, marginTop:I
    const/4 v8, 0x0

    .line 585
    .local v8, marginRight:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 586
    .local v3, container:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 588
    .local v4, containerWidth:I
    if-nez p2, :cond_1

    .line 589
    move v10, v4

    .line 596
    .local v10, maxWidth:I
    :goto_1
    sub-int v15, v10, v7

    sub-int v1, v15, v8

    .line 597
    .local v1, adjMaxWidth:I
    const/high16 v15, -0x8000

    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 598
    .local v14, widthMeasureSpec:I
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 599
    .local v5, heightMeasureSpec:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v5}, Landroid/view/View;->measure(II)V

    .line 602
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 605
    .local v13, width:I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v15, :cond_4

    .line 606
    if-nez p2, :cond_3

    iget v15, v3, Landroid/graphics/Rect;->right:I

    :goto_2
    sub-int v11, v15, v8

    .line 607
    .local v11, right:I
    sub-int v6, v11, v13

    .line 614
    .local v6, left:I
    :goto_3
    move v12, v9

    .line 615
    .local v12, top:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int v2, v12, v15

    .line 616
    .local v2, bottom:I
    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v12, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 617
    return-void

    .line 580
    .end local v1           #adjMaxWidth:I
    .end local v2           #bottom:I
    .end local v3           #container:Landroid/graphics/Rect;
    .end local v4           #containerWidth:I
    .end local v5           #heightMeasureSpec:I
    .end local v6           #left:I
    .end local v7           #marginLeft:I
    .end local v8           #marginRight:I
    .end local v9           #marginTop:I
    .end local v10           #maxWidth:I
    .end local v11           #right:I
    .end local v12           #top:I
    .end local v13           #width:I
    .end local v14           #widthMeasureSpec:I
    :cond_0
    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 581
    .restart local v7       #marginLeft:I
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 582
    .restart local v9       #marginTop:I
    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->right:I

    .restart local v8       #marginRight:I
    goto :goto_0

    .line 590
    .restart local v3       #container:Landroid/graphics/Rect;
    .restart local v4       #containerWidth:I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v15, :cond_2

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v10

    .restart local v10       #maxWidth:I
    goto :goto_1

    .line 593
    .end local v10           #maxWidth:I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int v10, v4, v15

    .restart local v10       #maxWidth:I
    goto :goto_1

    .line 606
    .restart local v1       #adjMaxWidth:I
    .restart local v5       #heightMeasureSpec:I
    .restart local v13       #width:I
    .restart local v14       #widthMeasureSpec:I
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v15

    goto :goto_2

    .line 609
    :cond_4
    if-nez p2, :cond_5

    iget v15, v3, Landroid/graphics/Rect;->left:I

    :goto_4
    add-int v6, v15, v7

    .line 610
    .restart local v6       #left:I
    add-int v11, v6, v13

    .restart local v11       #right:I
    goto :goto_3

    .line 609
    .end local v6           #left:I
    .end local v11           #right:I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v15

    goto :goto_4
.end method

.method private onStateDependencyChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 381
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    .line 391
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->resolvePadding()V

    .line 392
    return-void

    .line 384
    :cond_1
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v0, v1, :cond_0

    .line 385
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    goto :goto_0

    .line 388
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FastScroller;->stop()V

    goto :goto_0
.end method

.method private postAutoHide()V
    .locals 4

    .prologue
    .line 815
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 816
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 817
    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 3

    .prologue
    .line 747
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 748
    .local v0, isPressed:Z
    :goto_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 749
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 750
    return-void

    .line 747
    .end local v0           #isPressed:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollTo(F)V
    .locals 23
    .parameter "position"

    .prologue
    .line 879
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    .line 882
    .local v3, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 883
    .local v16, sections:[Ljava/lang/Object;
    if-nez v16, :cond_3

    const/4 v14, 0x0

    .line 885
    .local v14, sectionCount:I
    :goto_0
    if-eqz v16, :cond_b

    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v14, v0, :cond_b

    .line 886
    int-to-float v0, v14

    move/from16 v20, v0

    mul-float v20, v20, p1

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    add-int/lit8 v22, v14, -0x1

    invoke-static/range {v20 .. v22}, Landroid/util/MathUtils;->constrain(III)I

    move-result v4

    .line 888
    .local v4, exactSection:I
    move/from16 v19, v4

    .line 889
    .local v19, targetSection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    .line 890
    .local v18, targetIndex:I
    move/from16 v15, v19

    .line 898
    .local v15, sectionIndex:I
    move v7, v3

    .line 899
    .local v7, nextIndex:I
    move/from16 v11, v18

    .line 900
    .local v11, prevIndex:I
    move/from16 v13, v19

    .line 901
    .local v13, prevSection:I
    add-int/lit8 v10, v19, 0x1

    .line 904
    .local v10, nextSection:I
    add-int/lit8 v20, v14, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    add-int/lit8 v21, v19, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    .line 909
    :cond_0
    move/from16 v0, v18

    if-ne v7, v0, :cond_2

    .line 911
    :cond_1
    if-lez v19, :cond_2

    .line 912
    add-int/lit8 v19, v19, -0x1

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    .line 914
    move/from16 v0, v18

    if-eq v11, v0, :cond_4

    .line 915
    move/from16 v13, v19

    .line 916
    move/from16 v15, v19

    .line 932
    :cond_2
    :goto_1
    add-int/lit8 v8, v10, 0x1

    .line 934
    .local v8, nextNextSection:I
    :goto_2
    if-ge v8, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v20

    move/from16 v0, v20

    if-ne v0, v7, :cond_5

    .line 935
    add-int/lit8 v8, v8, 0x1

    .line 936
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 883
    .end local v4           #exactSection:I
    .end local v7           #nextIndex:I
    .end local v8           #nextNextSection:I
    .end local v10           #nextSection:I
    .end local v11           #prevIndex:I
    .end local v13           #prevSection:I
    .end local v14           #sectionCount:I
    .end local v15           #sectionIndex:I
    .end local v18           #targetIndex:I
    .end local v19           #targetSection:I
    :cond_3
    move-object/from16 v0, v16

    array-length v14, v0

    goto/16 :goto_0

    .line 918
    .restart local v4       #exactSection:I
    .restart local v7       #nextIndex:I
    .restart local v10       #nextSection:I
    .restart local v11       #prevIndex:I
    .restart local v13       #prevSection:I
    .restart local v14       #sectionCount:I
    .restart local v15       #sectionIndex:I
    .restart local v18       #targetIndex:I
    .restart local v19       #targetSection:I
    :cond_4
    if-nez v19, :cond_1

    .line 921
    const/4 v15, 0x0

    .line 922
    goto :goto_1

    .line 943
    .restart local v8       #nextNextSection:I
    :cond_5
    int-to-float v0, v13

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v12, v20, v21

    .line 944
    .local v12, prevPosition:F
    int-to-float v0, v10

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v9, v20, v21

    .line 945
    .local v9, nextPosition:F
    if-nez v3, :cond_7

    const v17, 0x7f7fffff

    .line 946
    .local v17, snapThreshold:F
    :goto_3
    if-ne v13, v4, :cond_8

    sub-float v20, p1, v12

    cmpg-float v20, v20, v17

    if-gez v20, :cond_8

    .line 947
    move/from16 v18, v11

    .line 954
    :goto_4
    const/16 v20, 0x0

    add-int/lit8 v21, v3, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v18

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 957
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v5, Landroid/widget/ExpandableListView;

    .line 958
    .local v5, expList:Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    move/from16 v20, v0

    add-int v20, v20, v18

    invoke-static/range {v20 .. v20}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v20

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 982
    .end local v4           #exactSection:I
    .end local v5           #expList:Landroid/widget/ExpandableListView;
    .end local v7           #nextIndex:I
    .end local v8           #nextNextSection:I
    .end local v9           #nextPosition:F
    .end local v10           #nextSection:I
    .end local v11           #prevIndex:I
    .end local v12           #prevPosition:F
    .end local v13           #prevSection:I
    .end local v17           #snapThreshold:F
    .end local v18           #targetIndex:I
    .end local v19           #targetSection:I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mCurrentSection:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v15, :cond_6

    .line 983
    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/FastScroller;->mCurrentSection:I

    .line 985
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/widget/FastScroller;->transitionPreviewLayout(I)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 986
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->transitionToDragging()V

    .line 991
    :cond_6
    :goto_6
    return-void

    .line 945
    .restart local v4       #exactSection:I
    .restart local v7       #nextIndex:I
    .restart local v8       #nextNextSection:I
    .restart local v9       #nextPosition:F
    .restart local v10       #nextSection:I
    .restart local v11       #prevIndex:I
    .restart local v12       #prevPosition:F
    .restart local v13       #prevSection:I
    .restart local v18       #targetIndex:I
    .restart local v19       #targetSection:I
    :cond_7
    const/high16 v20, 0x3e00

    int-to-float v0, v3

    move/from16 v21, v0

    div-float v17, v20, v21

    goto :goto_3

    .line 949
    .restart local v17       #snapThreshold:F
    :cond_8
    sub-int v20, v7, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v21, p1, v12

    mul-float v20, v20, v21

    sub-float v21, v9, v12

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v18, v11, v20

    goto :goto_4

    .line 961
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v18

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_5

    .line 964
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v18

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_5

    .line 967
    .end local v4           #exactSection:I
    .end local v7           #nextIndex:I
    .end local v8           #nextNextSection:I
    .end local v9           #nextPosition:F
    .end local v10           #nextSection:I
    .end local v11           #prevIndex:I
    .end local v12           #prevPosition:F
    .end local v13           #prevSection:I
    .end local v15           #sectionIndex:I
    .end local v17           #snapThreshold:F
    .end local v18           #targetIndex:I
    .end local v19           #targetSection:I
    :cond_b
    int-to-float v0, v3

    move/from16 v20, v0

    mul-float v20, v20, p1

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    add-int/lit8 v22, v3, -0x1

    invoke-static/range {v20 .. v22}, Landroid/util/MathUtils;->constrain(III)I

    move-result v6

    .line 969
    .local v6, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 970
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v5, Landroid/widget/ExpandableListView;

    .line 971
    .restart local v5       #expList:Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    move/from16 v20, v0

    add-int v20, v20, v6

    invoke-static/range {v20 .. v20}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v20

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 979
    .end local v5           #expList:Landroid/widget/ExpandableListView;
    :goto_7
    const/4 v15, -0x1

    .restart local v15       #sectionIndex:I
    goto/16 :goto_5

    .line 973
    .end local v15           #sectionIndex:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v6

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_7

    .line 976
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v6

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_7

    .line 988
    .end local v6           #index:I
    .restart local v15       #sectionIndex:I
    :cond_e
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    goto/16 :goto_6
.end method

.method private setState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 715
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 717
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 718
    const/4 p1, 0x1

    .line 721
    :cond_0
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne p1, v0, :cond_1

    .line 744
    :goto_0
    return-void

    .line 725
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 741
    :goto_1
    iput p1, p0, Landroid/widget/FastScroller;->mState:I

    .line 743
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawablePressedState()V

    goto :goto_0

    .line 727
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToHidden()V

    goto :goto_1

    .line 730
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    goto :goto_1

    .line 733
    :pswitch_2
    iget v0, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->transitionPreviewLayout(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 734
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToDragging()V

    goto :goto_1

    .line 736
    :cond_2
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    goto :goto_1

    .line 725
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setThumbPos(F)V
    .locals 21
    .parameter "position"

    .prologue
    .line 1085
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1086
    .local v3, container:Landroid/graphics/Rect;
    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    .line 1087
    .local v17, top:I
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 1089
    .local v2, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    .line 1090
    .local v18, trackImage:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 1091
    .local v15, thumbImage:Landroid/widget/ImageView;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    int-to-float v6, v0

    .line 1092
    .local v6, min:F
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v19

    move/from16 v0, v19

    int-to-float v4, v0

    .line 1093
    .local v4, max:F
    move v8, v6

    .line 1094
    .local v8, offset:F
    sub-float v14, v4, v6

    .line 1095
    .local v14, range:F
    mul-float v19, p1, v14

    add-float v16, v19, v8

    .line 1096
    .local v16, thumbMiddle:F
    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v16, v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1098
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlayPosition:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    move/from16 v12, v16

    .line 1101
    .local v12, previewPos:F
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 1102
    .local v10, previewImage:Landroid/widget/ImageView;
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v9, v19, v20

    .line 1103
    .local v9, previewHalfHeight:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v7, v19, v9

    .line 1104
    .local v7, minP:F
    int-to-float v0, v2

    move/from16 v19, v0

    sub-float v5, v19, v9

    .line 1105
    .local v5, maxP:F
    invoke-static {v12, v7, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v11

    .line 1106
    .local v11, previewMiddle:F
    sub-float v13, v11, v9

    .line 1107
    .local v13, previewTop:F
    invoke-virtual {v10, v13}, Landroid/view/View;->setTranslationY(F)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/view/View;->setTranslationY(F)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/view/View;->setTranslationY(F)V

    .line 1111
    return-void

    .line 1098
    .end local v5           #maxP:F
    .end local v7           #minP:F
    .end local v9           #previewHalfHeight:F
    .end local v10           #previewImage:Landroid/widget/ImageView;
    .end local v11           #previewMiddle:F
    .end local v12           #previewPos:F
    .end local v13           #previewTop:F
    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private startPendingDrag()V
    .locals 4

    .prologue
    .line 1216
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mHasPendingDrag:Z

    .line 1217
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    sget-wide v2, Landroid/widget/FastScroller;->TAP_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1218
    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 21
    .parameter "sectionIndex"

    .prologue
    .line 1002
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 1003
    .local v11, sections:[Ljava/lang/Object;
    const/16 v17, 0x0

    .line 1004
    .local v17, text:Ljava/lang/String;
    if-eqz v11, :cond_0

    if-ltz p1, :cond_0

    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, p1

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 1005
    aget-object v10, v11, p1

    .line 1006
    .local v10, section:Ljava/lang/Object;
    if-eqz v10, :cond_0

    .line 1007
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1011
    .end local v10           #section:Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 1012
    .local v2, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .line 1015
    .local v5, preview:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 1016
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1017
    .local v13, showing:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1024
    .local v15, target:Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1026
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1033
    :cond_1
    const/high16 v18, 0x3f80

    move/from16 v0, v18

    invoke-static {v15, v0}, Landroid/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v18

    const-wide/16 v19, 0x32

    invoke-virtual/range {v18 .. v20}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v12

    .line 1034
    .local v12, showTarget:Landroid/animation/Animator;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v13, v0}, Landroid/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v18

    const-wide/16 v19, 0x32

    invoke-virtual/range {v18 .. v20}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v4

    .line 1035
    .local v4, hideShowing:Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1038
    iget v0, v2, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingLeft()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 1039
    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingTop()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 1040
    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingRight()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 1041
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingBottom()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 1042
    invoke-static {v5, v2}, Landroid/widget/FastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v7

    .line 1043
    .local v7, resizePreview:Landroid/animation/Animator;
    const-wide/16 v18, 0x64

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1045
    new-instance v18, Landroid/animation/AnimatorSet;

    invoke-direct/range {v18 .. v18}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    .line 1047
    .local v3, builder:Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1051
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v18

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v19

    sub-int v18, v18, v19

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v19

    sub-int v6, v18, v19

    .line 1056
    .local v6, previewWidth:I
    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v16

    .line 1057
    .local v16, targetWidth:I
    move/from16 v0, v16

    if-le v0, v6, :cond_4

    .line 1058
    int-to-float v0, v6

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1059
    const/high16 v18, 0x3f80

    move/from16 v0, v18

    invoke-static {v15, v0}, Landroid/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v18

    const-wide/16 v19, 0x64

    invoke-virtual/range {v18 .. v20}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v9

    .line 1060
    .local v9, scaleAnim:Landroid/animation/Animator;
    invoke-virtual {v3, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1066
    .end local v9           #scaleAnim:Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v14

    .line 1067
    .local v14, showingWidth:I
    move/from16 v0, v16

    if-le v14, v0, :cond_2

    .line 1068
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v14

    move/from16 v19, v0

    div-float v8, v18, v19

    .line 1069
    .local v8, scale:F
    invoke-static {v13, v8}, Landroid/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v18

    const-wide/16 v19, 0x64

    invoke-virtual/range {v18 .. v20}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v9

    .line 1070
    .restart local v9       #scaleAnim:Landroid/animation/Animator;
    invoke-virtual {v3, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1073
    .end local v8           #scale:F
    .end local v9           #scaleAnim:Landroid/animation/Animator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/AnimatorSet;->start()V

    .line 1075
    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_5

    const/16 v18, 0x1

    :goto_2
    return v18

    .line 1019
    .end local v3           #builder:Landroid/animation/AnimatorSet$Builder;
    .end local v4           #hideShowing:Landroid/animation/Animator;
    .end local v6           #previewWidth:I
    .end local v7           #resizePreview:Landroid/animation/Animator;
    .end local v12           #showTarget:Landroid/animation/Animator;
    .end local v13           #showing:Landroid/widget/TextView;
    .end local v14           #showingWidth:I
    .end local v15           #target:Landroid/widget/TextView;
    .end local v16           #targetWidth:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1020
    .restart local v13       #showing:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .restart local v15       #target:Landroid/widget/TextView;
    goto/16 :goto_0

    .line 1062
    .restart local v3       #builder:Landroid/animation/AnimatorSet$Builder;
    .restart local v4       #hideShowing:Landroid/animation/Animator;
    .restart local v6       #previewWidth:I
    .restart local v7       #resizePreview:Landroid/animation/Animator;
    .restart local v12       #showTarget:Landroid/animation/Animator;
    .restart local v16       #targetWidth:I
    :cond_4
    const/high16 v18, 0x3f80

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setScaleX(F)V

    goto :goto_1

    .line 1075
    .restart local v14       #showingWidth:I
    :cond_5
    const/16 v18, 0x0

    goto :goto_2
.end method

.method private transitionToDragging()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x96

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 799
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 800
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 803
    :cond_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v3, 0x3f80

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 806
    .local v0, fadeIn:Landroid/animation/Animator;
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x0

    new-array v4, v8, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 809
    .local v1, slideIn:Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 810
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 811
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 812
    return-void
.end method

.method private transitionToHidden()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x12c

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 756
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 757
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 760
    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x0

    const/4 v5, 0x5

    new-array v5, v5, [Landroid/view/View;

    iget-object v6, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v8

    iget-object v6, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v6, v5, v9

    iget-object v6, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v6, v5, v10

    const/4 v6, 0x3

    iget-object v7, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 764
    .local v0, fadeOut:Landroid/animation/Animator;
    iget-boolean v3, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 765
    .local v1, offset:F
    :goto_0
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v10, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    iget-object v5, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v9

    invoke-static {v3, v1, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 769
    .local v2, slideOut:Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 770
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v10, [Landroid/animation/Animator;

    aput-object v0, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 771
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 772
    return-void

    .line 764
    .end local v1           #offset:F
    .end local v2           #slideOut:Landroid/animation/Animator;
    :cond_1
    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v1, v3

    goto :goto_0
.end method

.method private transitionToVisible()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 778
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 779
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 782
    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v4, 0x3f80

    new-array v5, v9, [Landroid/view/View;

    iget-object v6, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v7

    iget-object v6, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 784
    .local v0, fadeIn:Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v11, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v5, v4, v8

    iget-object v5, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v5, v4, v9

    invoke-static {v3, v10, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 787
    .local v1, fadeOut:Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v9, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    invoke-static {v3, v10, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 790
    .local v2, slideIn:Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 791
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v11, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 792
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 793
    return-void
.end method

.method private updateContainerRect()V
    .locals 7

    .prologue
    const/high16 v6, 0x100

    const/4 v4, 0x0

    .line 654
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 655
    .local v1, list:Landroid/widget/AbsListView;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->resolvePadding()V

    .line 657
    iget-object v0, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 658
    .local v0, container:Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 659
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 660
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 661
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 663
    iget v2, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 664
    .local v2, scrollbarStyle:I
    if-eq v2, v6, :cond_0

    if-nez v2, :cond_1

    .line 666
    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 667
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 668
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 669
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 672
    if-ne v2, v6, :cond_1

    .line 673
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getWidth()I

    move-result v3

    .line 674
    .local v3, width:I
    iget v4, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 675
    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 681
    .end local v3           #width:I
    :cond_1
    :goto_0
    return-void

    .line 677
    .restart local v3       #width:I
    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private updateLongList(II)V
    .locals 3
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 456
    if-lez p1, :cond_1

    div-int v1, p2, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 458
    .local v0, longList:Z
    :goto_0
    iget-boolean v1, p0, Landroid/widget/FastScroller;->mLongList:Z

    if-eq v1, v0, :cond_0

    .line 459
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    .line 461
    invoke-direct {p0}, Landroid/widget/FastScroller;->onStateDependencyChanged()V

    .line 463
    :cond_0
    return-void

    .line 456
    .end local v0           #longList:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getWidth()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Landroid/widget/FastScroller;->mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 1272
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1284
    :cond_0
    :goto_0
    return v3

    .line 1276
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1277
    .local v0, actionMasked:I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    :cond_2
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1280
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    .line 1281
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v0, 0x0

    .line 1236
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return v0

    .line 1240
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1242
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1248
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1249
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 1250
    const/4 v0, 0x1

    goto :goto_0

    .line 1253
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    .line 1254
    invoke-direct {p0}, Landroid/widget/FastScroller;->startPendingDrag()V

    goto :goto_0

    .line 1258
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1259
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1264
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemCountChanged(I)V
    .locals 5
    .parameter "totalItemCount"

    .prologue
    .line 445
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 446
    .local v2, visibleItemCount:I
    sub-int v3, p1, v2

    if-lez v3, :cond_1

    const/4 v1, 0x1

    .line 447
    .local v1, hasMoreItems:Z
    :goto_0
    if-eqz v1, :cond_0

    iget v3, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 448
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 449
    .local v0, firstVisibleItem:I
    invoke-direct {p0, v0, v2, p1}, Landroid/widget/FastScroller;->getPosFromItemCount(III)F

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 452
    .end local v0           #firstVisibleItem:I
    :cond_0
    invoke-direct {p0, v2, p1}, Landroid/widget/FastScroller;->updateLongList(II)V

    .line 453
    return-void

    .line 446
    .end local v1           #hasMoreItems:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScroll(III)V
    .locals 4
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 820
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 821
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    sub-int v2, p3, p2

    if-lez v2, :cond_2

    move v0, v1

    .line 826
    .local v0, hasMoreItems:Z
    :cond_2
    if-eqz v0, :cond_3

    iget v2, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v2, v3, :cond_3

    .line 827
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 830
    :cond_3
    iput-boolean v1, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 832
    iget v2, p0, Landroid/widget/FastScroller;->mFirstVisibleItem:I

    if-eq v2, p1, :cond_0

    .line 833
    iput p1, p0, Landroid/widget/FastScroller;->mFirstVisibleItem:I

    .line 836
    iget v2, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v2, v3, :cond_0

    .line 837
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    .line 838
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    goto :goto_0
.end method

.method public onSectionsChanged()V
    .locals 1

    .prologue
    .line 871
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 872
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 441
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 442
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "me"

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1288
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1359
    :cond_0
    :goto_0
    return v1

    .line 1292
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1294
    :pswitch_0
    iget-boolean v3, p0, Landroid/widget/FastScroller;->mHasPendingDrag:Z

    if-eqz v3, :cond_2

    .line 1296
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 1298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1299
    .local v0, pos:F
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 1300
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    .line 1302
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    .line 1306
    .end local v0           #pos:F
    :cond_2
    iget v3, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v3, v5, :cond_0

    .line 1307
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v3, :cond_3

    .line 1311
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1312
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1315
    :cond_3
    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setState(I)V

    .line 1316
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    move v1, v2

    .line 1318
    goto :goto_0

    .line 1323
    :pswitch_1
    iget-boolean v3, p0, Landroid/widget/FastScroller;->mHasPendingDrag:Z

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    .line 1324
    invoke-direct {p0, v5}, Landroid/widget/FastScroller;->setState(I)V

    .line 1326
    iget-object v3, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v3, :cond_4

    .line 1327
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 1330
    :cond_4
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v3, :cond_5

    .line 1331
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1332
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1335
    :cond_5
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelFling()V

    .line 1336
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    .line 1340
    :cond_6
    iget v3, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v3, v5, :cond_0

    .line 1342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1343
    .restart local v0       #pos:F
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 1346
    iget-boolean v1, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    if-eqz v1, :cond_7

    .line 1347
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    :cond_7
    move v1, v2

    .line 1350
    goto/16 :goto_0

    .line 1355
    .end local v0           #pos:F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto/16 :goto_0

    .line 1292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 334
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 335
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 336
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 337
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 338
    return-void
.end method

.method public setAlwaysShow(Z)V
    .locals 1
    .parameter "alwaysShow"

    .prologue
    .line 362
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    .line 363
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    .line 365
    invoke-direct {p0}, Landroid/widget/FastScroller;->onStateDependencyChanged()V

    .line 367
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 344
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 345
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mEnabled:Z

    .line 347
    invoke-direct {p0}, Landroid/widget/FastScroller;->onStateDependencyChanged()V

    .line 349
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 395
    iget v0, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    .line 396
    iput p1, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 398
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 400
    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 8
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 410
    if-nez p1, :cond_0

    .line 411
    iget-object v4, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_3

    move p1, v3

    .line 415
    :cond_0
    :goto_0
    iget v4, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    if-eq v4, p1, :cond_2

    .line 416
    iput p1, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    .line 417
    if-eq p1, v3, :cond_4

    move v4, v3

    :goto_1
    iput-boolean v4, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    .line 419
    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    iget-boolean v6, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v6, :cond_5

    :goto_2
    aget v2, v4, v3

    .line 420
    .local v2, previewResId:I
    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 423
    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 424
    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 425
    iget-object v1, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 426
    .local v1, padding:Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 427
    iget v3, p0, Landroid/widget/FastScroller;->mPreviewPadding:I

    iget v4, p0, Landroid/widget/FastScroller;->mPreviewPadding:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 428
    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 432
    .end local v1           #padding:Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 434
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v2           #previewResId:I
    :cond_2
    return-void

    .line 411
    :cond_3
    const/4 p1, 0x2

    goto :goto_0

    :cond_4
    move v4, v5

    .line 417
    goto :goto_1

    :cond_5
    move v3, v5

    .line 419
    goto :goto_2
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 407
    return-void
.end method

.method public updateLayout()V
    .locals 3

    .prologue
    .line 496
    iget-boolean v1, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    if-eqz v1, :cond_0

    .line 523
    :goto_0
    return-void

    .line 500
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    .line 502
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateContainerRect()V

    .line 504
    invoke-direct {p0}, Landroid/widget/FastScroller;->layoutThumb()V

    .line 505
    invoke-direct {p0}, Landroid/widget/FastScroller;->layoutTrack()V

    .line 507
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 508
    .local v0, bounds:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 509
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 510
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 511
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 513
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 515
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 516
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 517
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 518
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 519
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 522
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    goto :goto_0
.end method
