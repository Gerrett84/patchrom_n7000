.class Landroid/widget/TextView$StylusEventListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private final DELTA:I

.field private mDirLTR:Z

.field private mMaxX:F

.field private mOldCursorPostion:I

.field private mPressed:Z

.field private mStartX:F

.field private mStartY:F

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 9576
    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9577
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$StylusEventListener;->mDirLTR:Z

    .line 9578
    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mOldCursorPostion:I

    .line 9579
    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 9580
    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 9581
    iput-boolean v2, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 9582
    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 9583
    const/16 v0, 0xf

    iput v0, p0, Landroid/widget/TextView$StylusEventListener;->DELTA:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9576
    invoke-direct {p0, p1}, Landroid/widget/TextView$StylusEventListener;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;I)V
    .locals 11
    .parameter "event"
    .parameter "clipboardId"

    .prologue
    .line 9586
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 9587
    .local v0, action:I
    const/4 v6, 0x0

    .line 9588
    .local v6, startCurPosition:I
    const/4 v1, 0x0

    .line 9591
    .local v1, endCurPosition:I
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    .line 9712
    :cond_0
    :goto_0
    return-void

    .line 9595
    :cond_1
    const-string v8, "TextView"

    const-string v9, "onStylusButtonEvent start"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9597
    packed-switch v0, :pswitch_data_0

    .line 9711
    :cond_2
    :goto_1
    const-string v8, "TextView"

    const-string v9, "onStylusButtonEvent END"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9599
    :pswitch_0
    iget-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    if-eqz v8, :cond_2

    .line 9603
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_4

    .line 9604
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    const/high16 v10, 0x4170

    add-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    .line 9605
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mDirLTR:Z

    .line 9606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    goto :goto_1

    .line 9607
    :cond_3
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    const/high16 v10, 0x4170

    add-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 9608
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mDirLTR:Z

    .line 9609
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    goto :goto_1

    .line 9611
    :cond_4
    iget-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mDirLTR:Z

    if-eqz v8, :cond_6

    .line 9612
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_5

    .line 9613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    goto :goto_1

    .line 9614
    :cond_5
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    const/high16 v10, 0x4170

    add-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 9615
    const-string v8, "TextView"

    const-string v9, "TextSelection is canceled because of wrong X position, DirLTR"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9616
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_1

    .line 9618
    :cond_6
    iget-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mDirLTR:Z

    if-nez v8, :cond_2

    .line 9619
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_7

    .line 9620
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    goto/16 :goto_1

    .line 9621
    :cond_7
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    const/high16 v9, 0x4170

    add-float/2addr v8, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 9622
    const-string v8, "TextView"

    const-string v9, "TextSelection is canceled because of wrong X position, DirRTL"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9623
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_1

    .line 9630
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 9631
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 9632
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 9633
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    goto/16 :goto_1

    .line 9639
    :pswitch_2
    const/4 v2, 0x0

    .line 9640
    .local v2, endX:F
    const/4 v3, 0x0

    .line 9642
    .local v3, endY:F
    iget-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    if-eqz v8, :cond_0

    .line 9645
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 9646
    .local v5, rect:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 9647
    .local v4, offset:Landroid/graphics/Point;
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8, v5, v4}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 9648
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 9649
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 9650
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    iget v9, v5, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_8

    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_8

    iget v8, v5, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    cmpg-float v8, v3, v8

    if-ltz v8, :cond_8

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    cmpl-float v8, v3, v8

    if-lez v8, :cond_9

    .line 9651
    :cond_8
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_0

    .line 9655
    :cond_9
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSingleLine:Z
    invoke-static {v8}, Landroid/widget/TextView;->access$1200(Landroid/widget/TextView;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 9656
    iget v8, v4, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mScrollX:I
    invoke-static {v9}, Landroid/widget/TextView;->access$1300(Landroid/widget/TextView;)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Point;->x:I

    .line 9658
    :cond_a
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    iget v9, v4, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 9659
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    iget v9, v4, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 9660
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_b

    .line 9661
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 9663
    :cond_b
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_c

    .line 9664
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 9666
    :cond_c
    iget v8, v4, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    sub-float/2addr v2, v8

    .line 9667
    iget v8, v4, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    sub-float/2addr v3, v8

    .line 9668
    const/4 v8, 0x0

    cmpg-float v8, v2, v8

    if-gez v8, :cond_d

    .line 9669
    const/4 v2, 0x0

    .line 9671
    :cond_d
    const/4 v8, 0x0

    cmpg-float v8, v3, v8

    if-gez v8, :cond_e

    .line 9672
    const/4 v3, 0x0

    .line 9674
    :cond_e
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v8

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v9

    if-eq v8, v9, :cond_f

    .line 9675
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 9676
    const-string v8, "TextView"

    const-string v9, "TextSelection is canceled because the lines are different."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 9679
    :cond_f
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    iget v10, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v6

    .line 9680
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 9681
    if-ne v6, v1, :cond_10

    .line 9682
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 9683
    const-string v8, "TextView"

    const-string v9, "TextSelection is canceled because the positions are same."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 9686
    :cond_10
    if-le v6, v1, :cond_11

    .line 9687
    move v7, v1

    .line 9688
    .local v7, temp:I
    move v1, v6

    .line 9689
    move v6, v7

    .line 9691
    .end local v7           #temp:I
    :cond_11
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mOldCursorPostion:I

    .line 9692
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v8}, Landroid/widget/TextView;->access$300(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v8}, Landroid/widget/TextView;->access$300(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v8

    iget-boolean v8, v8, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v8, :cond_12

    .line 9693
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v8}, Landroid/widget/TextView;->access$300(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 9695
    :cond_12
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/16 v9, 0x16

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 9696
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/widget/TextView;->access$1400(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spannable;

    invoke-static {v8, v6, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 9697
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v8}, Landroid/widget/TextView;->access$300(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 9698
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v8}, Landroid/widget/TextView;->access$300(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v8

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 9700
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_1

    .line 9706
    .end local v2           #endX:F
    .end local v3           #endY:F
    .end local v4           #offset:Landroid/graphics/Point;
    .end local v5           #rect:Landroid/graphics/Rect;
    :pswitch_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_1

    .line 9597
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
