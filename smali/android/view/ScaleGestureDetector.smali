.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrSpan:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mFocusX:F

.field private mFocusY:F

.field private mInProgress:Z

.field private mInitialSpan:F

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mPrevSpan:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mSpanSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .registers 5
    .parameter "context"
    .parameter "listener"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_f
    iput-object v0, p0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public getCurrentSpan()F
    .registers 2

    .prologue
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    return v0
.end method

.method public getCurrentSpanX()F
    .registers 2

    .prologue
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .registers 2

    .prologue
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    return v0
.end method

.method public getEventTime()J
    .registers 3

    .prologue
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .registers 2

    .prologue
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .registers 2

    .prologue
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .registers 2

    .prologue
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    return v0
.end method

.method public getPreviousSpanX()F
    .registers 2

    .prologue
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .registers 2

    .prologue
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    return v0
.end method

.method public getScaleFactor()F
    .registers 3

    .prologue
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    div-float/2addr v0, v1

    :goto_c
    return v0

    :cond_d
    const/high16 v0, 0x3f80

    goto :goto_c
.end method

.method public getTimeDelta()J
    .registers 5

    .prologue
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isInProgress()Z
    .registers 2

    .prologue
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 28
    .parameter "event"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v24, v0

    if-eqz v24, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .local v3, action:I
    const/16 v24, 0x1

    move/from16 v0, v24

    if-eq v3, v0, :cond_29

    const/16 v24, 0x3

    move/from16 v0, v24

    if-ne v3, v0, :cond_59

    :cond_29
    const/16 v19, 0x1

    .local v19, streamComplete:Z
    :goto_2b
    if-eqz v3, :cond_2f

    if-eqz v19, :cond_5c

    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v24, v0

    if-eqz v24, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    :cond_54
    if-eqz v19, :cond_5c

    const/16 v24, 0x1

    :goto_58
    return v24

    .end local v19           #streamComplete:Z
    :cond_59
    const/16 v19, 0x0

    goto :goto_2b

    .restart local v19       #streamComplete:Z
    :cond_5c
    const/16 v24, 0x6

    move/from16 v0, v24

    if-eq v3, v0, :cond_68

    const/16 v24, 0x5

    move/from16 v0, v24

    if-ne v3, v0, :cond_86

    :cond_68
    const/4 v4, 0x1

    .local v4, configChanged:Z
    :goto_69
    const/16 v24, 0x6

    move/from16 v0, v24

    if-ne v3, v0, :cond_88

    const/4 v14, 0x1

    .local v14, pointerUp:Z
    :goto_70
    if-eqz v14, :cond_8a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v15

    .local v15, skipIndex:I
    :goto_76
    const/16 v20, 0x0

    .local v20, sumX:F
    const/16 v21, 0x0

    .local v21, sumY:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .local v5, count:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_7f
    if-ge v13, v5, :cond_9d

    if-ne v15, v13, :cond_8c

    :goto_83
    add-int/lit8 v13, v13, 0x1

    goto :goto_7f

    .end local v4           #configChanged:Z
    .end local v5           #count:I
    .end local v13           #i:I
    .end local v14           #pointerUp:Z
    .end local v15           #skipIndex:I
    .end local v20           #sumX:F
    .end local v21           #sumY:F
    :cond_86
    const/4 v4, 0x0

    goto :goto_69

    .restart local v4       #configChanged:Z
    :cond_88
    const/4 v14, 0x0

    goto :goto_70

    .restart local v14       #pointerUp:Z
    :cond_8a
    const/4 v15, -0x1

    goto :goto_76

    .restart local v5       #count:I
    .restart local v13       #i:I
    .restart local v15       #skipIndex:I
    .restart local v20       #sumX:F
    .restart local v21       #sumY:F
    :cond_8c
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    add-float v20, v20, v24

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v24

    add-float v21, v21, v24

    goto :goto_83

    :cond_9d
    if-eqz v14, :cond_b5

    add-int/lit8 v10, v5, -0x1

    .local v10, div:I
    :goto_a1
    int-to-float v0, v10

    move/from16 v24, v0

    div-float v11, v20, v24

    .local v11, focusX:F
    int-to-float v0, v10

    move/from16 v24, v0

    div-float v12, v21, v24

    .local v12, focusY:F
    const/4 v6, 0x0

    .local v6, devSumX:F
    const/4 v7, 0x0

    .local v7, devSumY:F
    const/4 v13, 0x0

    :goto_ae
    if-ge v13, v5, :cond_d4

    if-ne v15, v13, :cond_b7

    :goto_b2
    add-int/lit8 v13, v13, 0x1

    goto :goto_ae

    .end local v6           #devSumX:F
    .end local v7           #devSumY:F
    .end local v10           #div:I
    .end local v11           #focusX:F
    .end local v12           #focusY:F
    :cond_b5
    move v10, v5

    goto :goto_a1

    .restart local v6       #devSumX:F
    .restart local v7       #devSumY:F
    .restart local v10       #div:I
    .restart local v11       #focusX:F
    .restart local v12       #focusY:F
    :cond_b7
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    sub-float v24, v24, v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    add-float v6, v6, v24

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v24

    sub-float v24, v24, v12

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    add-float v7, v7, v24

    goto :goto_b2

    :cond_d4
    int-to-float v0, v10

    move/from16 v24, v0

    div-float v8, v6, v24

    .local v8, devX:F
    int-to-float v0, v10

    move/from16 v24, v0

    div-float v9, v7, v24

    .local v9, devY:F
    const/high16 v24, 0x4000

    mul-float v17, v8, v24

    .local v17, spanX:F
    const/high16 v24, 0x4000

    mul-float v18, v9, v24

    .local v18, spanY:F
    mul-float v24, v17, v17

    mul-float v25, v18, v18

    add-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v16

    .local v16, span:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v23, v0

    .local v23, wasInProgress:Z
    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v24, v0

    if-eqz v24, :cond_129

    const/16 v24, 0x0

    cmpl-float v24, v16, v24

    if-eqz v24, :cond_10e

    if-eqz v4, :cond_129

    :cond_10e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    :cond_129
    if-eqz v4, :cond_155

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    :cond_155
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v24, v0

    if-nez v24, :cond_1b8

    const/16 v24, 0x0

    cmpl-float v24, v16, v24

    if-eqz v24, :cond_1b8

    if-nez v23, :cond_180

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    move/from16 v24, v0

    sub-float v24, v16, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_1b8

    :cond_180
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    :cond_1b8
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v3, v0, :cond_20e

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    const/16 v22, 0x1

    .local v22, updatePrev:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1e8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v22

    :cond_1e8
    if-eqz v22, :cond_20e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    .end local v22           #updatePrev:Z
    :cond_20e
    const/16 v24, 0x1

    goto/16 :goto_58
.end method
