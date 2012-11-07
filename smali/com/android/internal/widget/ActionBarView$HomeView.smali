.class Lcom/android/internal/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeView"
.end annotation


# instance fields
.field mCompactMode:Z
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field mIconDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mIconView:Landroid/widget/ImageView;

.field private mUpView:Landroid/view/View;

.field private mUpWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 1307
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1308
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1311
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1312
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 1343
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 1327
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1328
    const/4 v0, 0x1

    return v0
.end method

.method getIconView()Landroid/widget/ImageView;
    .registers 2
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLeftOffset()I
    .registers 3
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/android/internal/widget/ActionBarView$Injector;->getUpViewVisibility(Lcom/android/internal/widget/ActionBarView$HomeView;Landroid/view/View;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method getUpView()Landroid/view/View;
    .registers 2
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 2
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 1349
    const v0, 0x102023b

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    .line 1350
    const v0, 0x102002c

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 1351
    invoke-static {p0}, Lcom/android/internal/widget/ActionBarView$Injector;->switchToCompactMode(Lcom/android/internal/widget/ActionBarView$HomeView;)V

    .line 1352
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 23
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1404
    sub-int v14, p5, p3

    div-int/lit8 v12, v14, 0x2

    .line 1405
    .local v12, vCenter:I
    sub-int v13, p4, p2

    .line 1406
    .local v13, width:I
    const/4 v9, 0x0

    .line 1407
    .local v9, upOffset:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_47

    .line 1408
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 1409
    .local v8, upLp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1410
    .local v7, upHeight:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 1411
    .local v11, upWidth:I
    div-int/lit8 v14, v7, 0x2

    sub-int v10, v12, v14

    .line 1412
    .local v10, upTop:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    const/4 v15, 0x0

    add-int v16, v10, v7

    move/from16 v0, v16

    invoke-virtual {v14, v15, v10, v11, v0}, Landroid/view/View;->layout(IIII)V

    .line 1413
    iget v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v14, v11

    iget v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v9, v14, v15

    .line 1414
    sub-int/2addr v13, v9

    .line 1415
    add-int p2, p2, v9

    .line 1417
    .end local v7           #upHeight:I
    .end local v8           #upLp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v10           #upTop:I
    .end local v11           #upWidth:I
    :cond_47
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1418
    .local v4, iconLp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    .line 1419
    .local v2, iconHeight:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    .line 1420
    .local v6, iconWidth:I
    sub-int v14, p4, p2

    div-int/lit8 v1, v14, 0x2

    .line 1421
    .local v1, hCenter:I
    iget v14, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    div-int/lit8 v15, v6, 0x2

    sub-int v15, v1, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int v3, v9, v14

    .line 1422
    .local v3, iconLeft:I
    iget v14, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    div-int/lit8 v15, v2, 0x2

    sub-int v15, v12, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1423
    .local v5, iconTop:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    add-int v15, v3, v6

    add-int v16, v5, v2

    move/from16 v0, v16

    invoke-virtual {v14, v3, v5, v15, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1424
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1361
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1362
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 1363
    .local v10, upLp:Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    .line 1364
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_80

    const/4 v3, 0x0

    .line 1365
    .local v3, width:I
    :goto_2b
    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v6, v0, v1

    .line 1366
    .local v6, height:I
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1367
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1368
    .local v9, iconLp:Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 1369
    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1372
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1373
    .local v11, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1374
    .local v7, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1375
    .local v12, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1377
    .local v8, heightSize:I
    sparse-switch v11, :sswitch_data_92

    .line 1388
    :goto_79
    sparse-switch v7, :sswitch_data_9c

    .line 1399
    :goto_7c
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/widget/ActionBarView$HomeView;->setMeasuredDimension(II)V

    .line 1400
    return-void

    .line 1364
    .end local v3           #width:I
    .end local v6           #height:I
    .end local v7           #heightMode:I
    .end local v8           #heightSize:I
    .end local v9           #iconLp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v11           #widthMode:I
    .end local v12           #widthSize:I
    :cond_80
    iget v3, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    goto :goto_2b

    .line 1379
    .restart local v3       #width:I
    .restart local v6       #height:I
    .restart local v7       #heightMode:I
    .restart local v8       #heightSize:I
    .restart local v9       #iconLp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11       #widthMode:I
    .restart local v12       #widthSize:I
    :sswitch_83
    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1380
    goto :goto_79

    .line 1382
    :sswitch_88
    move v3, v12

    .line 1383
    goto :goto_79

    .line 1390
    :sswitch_8a
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1391
    goto :goto_7c

    .line 1393
    :sswitch_8f
    move v6, v8

    .line 1394
    goto :goto_7c

    .line 1377
    nop

    :sswitch_data_92
    .sparse-switch
        -0x80000000 -> :sswitch_83
        0x40000000 -> :sswitch_88
    .end sparse-switch

    .line 1388
    :sswitch_data_9c
    .sparse-switch
        -0x80000000 -> :sswitch_8a
        0x40000000 -> :sswitch_8f
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 1333
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1334
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1335
    .local v0, cdesc:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1336
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1338
    :cond_14
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "icon"

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1322
    invoke-static {p0, p1}, Lcom/android/internal/widget/ActionBarView$Injector;->setIcon(Lcom/android/internal/widget/ActionBarView$HomeView;Landroid/graphics/drawable/Drawable;)V

    .line 1323
    return-void
.end method

.method public setUp(Z)V
    .registers 4
    .parameter "isUp"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 1316
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    if-eqz p1, :cond_c

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1317
    invoke-static {p0}, Lcom/android/internal/widget/ActionBarView$Injector;->setIcon(Lcom/android/internal/widget/ActionBarView$HomeView;)V

    .line 1318
    return-void

    .line 1316
    :cond_c
    const/16 v0, 0x8

    goto :goto_5
.end method
