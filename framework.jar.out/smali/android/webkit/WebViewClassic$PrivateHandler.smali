.class Landroid/webkit/WebViewClassic$PrivateHandler;
.super Landroid/os/Handler;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/webkit/WebViewInputDispatcher$UiCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter

    .prologue
    .line 11051
    iput-object p1, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public canZoomOutOrZoomIn()Z
    .locals 1

    .prologue
    .line 11636
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->canZoomIn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->canZoomOut()Z

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

.method public clearPreviousHitTest()V
    .locals 2

    .prologue
    .line 11685
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x0

    #calls: Landroid/webkit/WebViewClassic;->setHitTestResult(Landroid/webkit/WebViewCore$WebKitHitTest;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->access$9200(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)V

    .line 11686
    return-void
.end method

.method public dispatchUiEvent(Landroid/view/MotionEvent;II)V
    .locals 1
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"

    .prologue
    .line 11647
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->onHandleUiEvent(Landroid/view/MotionEvent;II)V
    invoke-static {v0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->access$11100(Landroid/webkit/WebViewClassic;Landroid/view/MotionEvent;II)V

    .line 11648
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 11652
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getUiLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 11642
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$PrivateHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 49
    .parameter "msg"

    .prologue
    .line 11068
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v3

    if-nez v3, :cond_1

    .line 11631
    :cond_0
    :goto_0
    return-void

    .line 11072
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$4800(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v8, 0x6b

    if-ne v3, v8, :cond_0

    .line 11077
    :cond_2
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 11628
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 11079
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$4300(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewDatabaseClassic;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v46, "host"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v46

    const-string/jumbo v47, "username"

    invoke-virtual/range {v46 .. v47}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v47

    const-string/jumbo v48, "password"

    invoke-virtual/range {v47 .. v48}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v3, v8, v0, v1}, Landroid/webkit/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11083
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 11087
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$4300(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewDatabaseClassic;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v46, "host"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v3, v8, v0, v1}, Landroid/webkit/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11088
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 11092
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollX:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$4900(Landroid/webkit/WebViewClassic;)I

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollY:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$5000(Landroid/webkit/WebViewClassic;)I

    move-result v3

    if-nez v3, :cond_3

    .line 11093
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSentAutoScrollMessage:Z
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$5102(Landroid/webkit/WebViewClassic;Z)Z

    goto/16 :goto_0

    .line 11096
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$5200(Landroid/webkit/WebViewClassic;)I

    move-result v3

    if-nez v3, :cond_4

    .line 11097
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollX:I
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$4900(Landroid/webkit/WebViewClassic;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v46, v0

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollY:I
    invoke-static/range {v46 .. v46}, Landroid/webkit/WebViewClassic;->access$5000(Landroid/webkit/WebViewClassic;)I

    move-result v46

    const/16 v47, 0x1

    const/16 v48, 0x0

    move/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v48

    #calls: Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z
    invoke-static {v3, v8, v0, v1, v2}, Landroid/webkit/WebViewClassic;->access$5300(Landroid/webkit/WebViewClassic;IIZI)Z

    .line 11102
    :goto_1
    const/16 v3, 0xb

    const-wide/16 v46, 0x10

    move-object/from16 v0, p0

    move-wide/from16 v1, v46

    invoke-virtual {v0, v3, v1, v2}, Landroid/webkit/WebViewClassic$PrivateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 11099
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$5400(Landroid/webkit/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v46, v0

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollX:I
    invoke-static/range {v46 .. v46}, Landroid/webkit/WebViewClassic;->access$4900(Landroid/webkit/WebViewClassic;)I

    move-result v46

    add-int v8, v8, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v46, v0

    #getter for: Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;
    invoke-static/range {v46 .. v46}, Landroid/webkit/WebViewClassic;->access$5400(Landroid/webkit/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v46

    move-object/from16 v0, v46

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v47, v0

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollY:I
    invoke-static/range {v47 .. v47}, Landroid/webkit/WebViewClassic;->access$5000(Landroid/webkit/WebViewClassic;)I

    move-result v47

    add-int v46, v46, v47

    move/from16 v0, v46

    #calls: Landroid/webkit/WebViewClassic;->scrollLayerTo(II)V
    invoke-static {v3, v8, v0}, Landroid/webkit/WebViewClassic;->access$5500(Landroid/webkit/WebViewClassic;II)V

    goto :goto_1

    .line 11108
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    instance-of v3, v3, Landroid/webkit/HtmlComposerView;

    if-nez v3, :cond_0

    .line 11112
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_5

    .line 11115
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v20

    .line 11116
    .local v20, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11121
    .end local v20           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/graphics/Point;

    .line 11127
    .local v30, p:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v46, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v47, v0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/16 v48, 0x1

    move/from16 v0, v48

    if-ne v3, v0, :cond_6

    const/4 v3, 0x1

    :goto_2
    move/from16 v0, v46

    move/from16 v1, v47

    #calls: Landroid/webkit/WebViewClassic;->contentScrollTo(IIZ)V
    invoke-static {v8, v0, v1, v3}, Landroid/webkit/WebViewClassic;->access$5600(Landroid/webkit/WebViewClassic;IIZ)V

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 11132
    .end local v30           #p:Landroid/graphics/Point;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->playTouchSound()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$5700(Landroid/webkit/WebViewClassic;)V

    .line 11134
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->notifySingleTapReleased()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$5800(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 11140
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Landroid/webkit/WebViewCore$ViewState;

    .line 11142
    .local v40, viewState:Landroid/webkit/WebViewCore$ViewState;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$5900(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v8

    move-object/from16 v0, v40

    iget v0, v0, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    move/from16 v46, v0

    move-object/from16 v0, v40

    move/from16 v1, v46

    invoke-virtual {v3, v0, v8, v1}, Landroid/webkit/ZoomManager;->updateZoomRange(Landroid/webkit/WebViewCore$ViewState;II)V

    goto/16 :goto_0

    .line 11146
    .end local v40           #viewState:Landroid/webkit/WebViewCore$ViewState;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 11147
    .local v11, density:F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$5900(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/webkit/ZoomManager;->updateDefaultZoomDensity(F)V

    goto/16 :goto_0

    .line 11152
    .end local v11           #density:F
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/webkit/WebViewCore$DrawData;

    .line 11153
    .local v14, draw:Landroid/webkit/WebViewCore$DrawData;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x1

    invoke-virtual {v3, v14, v8}, Landroid/webkit/WebViewClassic;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    goto/16 :goto_0

    .line 11158
    .end local v14           #draw:Landroid/webkit/WebViewCore$DrawData;
    :sswitch_8
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$1400(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/webkit/BrowserFrame;->getRawResFilename(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 11160
    .local v15, drawableDir:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$1400(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v8, "window"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/view/WindowManager;

    .line 11162
    .local v43, windowManager:Landroid/view/WindowManager;
    invoke-interface/range {v43 .. v43}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    .line 11163
    .local v13, display:Landroid/view/Display;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v46

    move/from16 v0, v46

    #calls: Landroid/webkit/WebViewClassic;->nativeCreate(ILjava/lang/String;Z)V
    invoke-static {v3, v8, v15, v0}, Landroid/webkit/WebViewClassic;->access$6000(Landroid/webkit/WebViewClassic;ILjava/lang/String;Z)V

    .line 11165
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$6100(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$DrawData;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 11166
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$6100(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$DrawData;

    move-result-object v8

    const/16 v46, 0x1

    move/from16 v0, v46

    invoke-virtual {v3, v8, v0}, Landroid/webkit/WebViewClassic;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    .line 11167
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$6102(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$DrawData;)Landroid/webkit/WebViewCore$DrawData;

    .line 11169
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsPaused:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$6200(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 11170
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mNativeClass:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$6300(Landroid/webkit/WebViewClassic;)I

    move-result v3

    const/4 v8, 0x1

    #calls: Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$6400(IZ)V

    .line 11172
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v8, Landroid/webkit/WebViewInputDispatcher;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v46, v0

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static/range {v46 .. v46}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/webkit/WebViewCore;->getInputDispatcherCallbacks()Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v8, v0, v1}, Landroid/webkit/WebViewInputDispatcher;-><init>(Landroid/webkit/WebViewInputDispatcher$UiCallbacks;Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;)V

    #setter for: Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$6502(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewInputDispatcher;)Landroid/webkit/WebViewInputDispatcher;

    .line 11174
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->setAppType()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$6600(Landroid/webkit/WebViewClassic;)V

    .line 11175
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x1

    #calls: Landroid/webkit/WebViewClassic;->enabledTouchPerformancePatch(Z)V
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$6700(Landroid/webkit/WebViewClassic;Z)V

    goto/16 :goto_0

    .line 11180
    .end local v13           #display:Landroid/view/Display;
    .end local v15           #drawableDir:Ljava/lang/String;
    .end local v43           #windowManager:Landroid/view/WindowManager;
    :sswitch_9
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mTextGeneration:I
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$6800(Landroid/webkit/WebViewClassic;)I

    move-result v8

    if-ne v3, v8, :cond_0

    .line 11181
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 11182
    .local v6, text:Ljava/lang/String;
    if-nez v6, :cond_9

    .line 11183
    const-string v6, ""

    .line 11185
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v3

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    if-ne v3, v8, :cond_0

    .line 11187
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    const/4 v8, 0x1

    iput-boolean v8, v3, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsUpdatingText:Z

    .line 11188
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v3, v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setTextAndKeepSelection(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 11193
    .end local v6           #text:Ljava/lang/String;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v47, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/webkit/WebViewCore$TextSelectionData;

    move/from16 v0, v46

    move/from16 v1, v47

    #calls: Landroid/webkit/WebViewClassic;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    invoke-static {v8, v0, v1, v3}, Landroid/webkit/WebViewClassic;->access$6900(Landroid/webkit/WebViewClassic;IILandroid/webkit/WebViewCore$TextSelectionData;)V

    goto/16 :goto_0

    .line 11198
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v47, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/webkit/WebViewCore$TextInputData;

    move/from16 v0, v46

    move/from16 v1, v47

    #calls: Landroid/webkit/WebViewClassic;->updateTextSelectionStartEndFromMessage(IILandroid/webkit/WebViewCore$TextInputData;)V
    invoke-static {v8, v0, v1, v3}, Landroid/webkit/WebViewClassic;->access$7000(Landroid/webkit/WebViewClassic;IILandroid/webkit/WebViewCore$TextInputData;)V

    goto/16 :goto_0

    .line 11203
    :sswitch_c
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 11204
    .local v12, direction:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/webkit/WebView;->focusSearch(I)Landroid/view/View;

    move-result-object v16

    .line 11205
    .local v16, focusSearch:Landroid/view/View;
    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_0

    .line 11206
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 11210
    .end local v12           #direction:I
    .end local v16           #focusSearch:Landroid/view/View;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$800(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 11213
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/graphics/Rect;

    .line 11214
    .local v32, r:Landroid/graphics/Rect;
    if-nez v32, :cond_a

    .line 11215
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    .line 11219
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v32

    iget v8, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v46, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v47, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v48, v0

    move/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v48

    #calls: Landroid/webkit/WebViewClassic;->viewInvalidate(IIII)V
    invoke-static {v3, v8, v0, v1, v2}, Landroid/webkit/WebViewClassic;->access$7100(Landroid/webkit/WebViewClassic;IIII)V

    goto/16 :goto_0

    .line 11224
    .end local v32           #r:Landroid/graphics/Rect;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v3

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    if-ne v3, v8, :cond_0

    .line 11225
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/widget/ArrayAdapter;

    .line 11226
    .local v9, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/webkit/AutoCompletePopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 11233
    .end local v9           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mGotCenterDown:Z
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$7202(Landroid/webkit/WebViewClassic;Z)Z

    .line 11234
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mTrackballDown:Z
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$7302(Landroid/webkit/WebViewClassic;Z)Z

    .line 11236
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v8, 0x72

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 11238
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->performLongClick()Z

    goto/16 :goto_0

    .line 11242
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$6500(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewInputDispatcher;

    move-result-object v8

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v8, v3}, Landroid/webkit/WebViewInputDispatcher;->setWebKitWantsTouchEvents(Z)V

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x0

    goto :goto_3

    .line 11246
    :sswitch_12
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_c

    .line 11247
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$800(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 11250
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    instance-of v3, v3, Landroid/webkit/HtmlComposerView;

    if-eqz v3, :cond_d

    .line 11251
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v19

    check-cast v19, Landroid/webkit/HtmlComposerView;

    .line 11252
    .local v19, htmlcomposer:Landroid/webkit/HtmlComposerView;
    move-object/from16 v0, v19

    iget-boolean v3, v0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-nez v3, :cond_0

    .line 11253
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x0

    #calls: Landroid/webkit/WebViewClassic;->displaySoftKeyboard(Z)V
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$7400(Landroid/webkit/WebViewClassic;Z)V

    goto/16 :goto_0

    .line 11255
    .end local v19           #htmlcomposer:Landroid/webkit/HtmlComposerView;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mBlockShowSoftInput:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$7500(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 11256
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x0

    #calls: Landroid/webkit/WebViewClassic;->displaySoftKeyboard(Z)V
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$7400(Landroid/webkit/WebViewClassic;Z)V

    goto/16 :goto_0

    .line 11263
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x2

    #setter for: Landroid/webkit/WebViewClassic;->mHeldMotionless:I
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$7602(Landroid/webkit/WebViewClassic;I)I

    .line 11264
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    .line 11268
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v8

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/16 v46, 0x1

    move/from16 v0, v46

    if-ne v3, v0, :cond_e

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v8, v3}, Landroid/webkit/WebView;->setKeepScreenOn(Z)V

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x0

    goto :goto_4

    .line 11272
    :sswitch_15
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    .line 11274
    .local v22, layerId:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/lang/String;

    .line 11275
    .local v37, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$7700(Landroid/webkit/WebViewClassic;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 11276
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$7700(Landroid/webkit/WebViewClassic;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v3

    move/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v3, v0, v1}, Landroid/webkit/HTML5VideoViewProxy;->enterFullScreenVideo(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 11281
    .end local v22           #layerId:I
    .end local v37           #url:Ljava/lang/String;
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$7700(Landroid/webkit/WebViewClassic;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 11282
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$7700(Landroid/webkit/WebViewClassic;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoViewProxy;->exitFullScreenVideo()V

    goto/16 :goto_0

    .line 11287
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/view/View;

    .line 11288
    .local v38, view:Landroid/view/View;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    .line 11289
    .local v29, orientation:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    .line 11291
    .local v28, npp:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->inFullScreenMode()Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$7800(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 11292
    const-string/jumbo v3, "webview"

    const-string v8, "Should not have another full screen."

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11293
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->dismissFullScreenMode()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$7900(Landroid/webkit/WebViewClassic;)V

    .line 11295
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v8, Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-direct {v8, v0, v1, v2}, Landroid/webkit/PluginFullScreenHolder;-><init>(Landroid/webkit/WebViewClassic;II)V

    iput-object v8, v3, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    .line 11296
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Landroid/webkit/PluginFullScreenHolder;->setContentView(Landroid/view/View;)V

    .line 11297
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v3}, Landroid/webkit/PluginFullScreenHolder;->show()V

    .line 11298
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    .line 11303
    .end local v28           #npp:I
    .end local v29           #orientation:I
    .end local v38           #view:Landroid/view/View;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->dismissFullScreenMode()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$7900(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 11307
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/webkit/WebViewCore$ShowRectData;

    .line 11308
    .local v10, data:Landroid/webkit/WebViewCore$ShowRectData;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v8, v10, Landroid/webkit/WebViewCore$ShowRectData;->mLeft:I

    invoke-virtual {v3, v8}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v23

    .line 11309
    .local v23, left:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v8, v10, Landroid/webkit/WebViewCore$ShowRectData;->mWidth:I

    invoke-virtual {v3, v8}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v42

    .line 11310
    .local v42, width:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v8, v10, Landroid/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    invoke-virtual {v3, v8}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v27

    .line 11311
    .local v27, maxWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v41

    .line 11312
    .local v41, viewWidth:I
    move/from16 v0, v23

    int-to-float v3, v0

    iget v8, v10, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v46, v0

    mul-float v8, v8, v46

    add-float/2addr v3, v8

    iget v8, v10, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v46, v0

    mul-float v8, v8, v46

    sub-float/2addr v3, v8

    float-to-int v0, v3

    move/from16 v44, v0

    .line 11323
    .local v44, x:I
    const/4 v3, 0x0

    add-int v8, v44, v41

    move/from16 v0, v27

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int v8, v8, v41

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v44

    .line 11325
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v8, v10, Landroid/webkit/WebViewCore$ShowRectData;->mTop:I

    invoke-virtual {v3, v8}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v35

    .line 11326
    .local v35, top:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v8, v10, Landroid/webkit/WebViewCore$ShowRectData;->mHeight:I

    invoke-virtual {v3, v8}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v17

    .line 11327
    .local v17, height:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v8, v10, Landroid/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    invoke-virtual {v3, v8}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v26

    .line 11328
    .local v26, maxHeight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v39

    .line 11329
    .local v39, viewHeight:I
    move/from16 v0, v35

    int-to-float v3, v0

    iget v8, v10, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v46, v0

    mul-float v8, v8, v46

    add-float/2addr v3, v8

    iget v8, v10, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v46, v0

    mul-float v8, v8, v46

    sub-float/2addr v3, v8

    float-to-int v0, v3

    move/from16 v45, v0

    .line 11340
    .local v45, y:I
    const/4 v3, 0x0

    add-int v8, v45, v39

    move/from16 v0, v26

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int v8, v8, v39

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v45

    .line 11344
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$8000(Landroid/webkit/WebViewClassic;)I

    move-result v8

    sub-int v8, v45, v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v45

    .line 11345
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    move/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v3, v0, v1}, Landroid/webkit/WebView;->scrollTo(II)V

    goto/16 :goto_0

    .line 11350
    .end local v10           #data:Landroid/webkit/WebViewCore$ShowRectData;
    .end local v17           #height:I
    .end local v23           #left:I
    .end local v26           #maxHeight:I
    .end local v27           #maxWidth:I
    .end local v35           #top:I
    .end local v39           #viewHeight:I
    .end local v41           #viewWidth:I
    .end local v42           #width:I
    .end local v44           #x:I
    .end local v45           #y:I
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v8, v3}, Landroid/webkit/WebViewClassic;->centerFitRect(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 11354
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    #setter for: Landroid/webkit/WebViewClassic;->mHorizontalScrollBarMode:I
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$8102(Landroid/webkit/WebViewClassic;I)I

    .line 11355
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    #setter for: Landroid/webkit/WebViewClassic;->mVerticalScrollBarMode:I
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$8202(Landroid/webkit/WebViewClassic;I)I

    goto/16 :goto_0

    .line 11359
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8300(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11360
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8400(Landroid/webkit/WebViewClassic;)Landroid/webkit/AccessibilityInjector;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Landroid/webkit/AccessibilityInjector;->handleSelectionChangedIfNecessary(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11367
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v3, v3, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v3, :cond_10

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_10

    .line 11368
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$800(Landroid/webkit/WebViewClassic;)V

    .line 11371
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8500(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 11372
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x1

    #setter for: Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$8502(Landroid/webkit/WebViewClassic;Z)Z

    .line 11375
    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v46, v0

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static/range {v46 .. v46}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v46

    move/from16 v0, v46

    if-ne v3, v0, :cond_15

    const/4 v3, 0x1

    :goto_5
    iput-boolean v3, v8, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    .line 11377
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v3, v3, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-nez v3, :cond_12

    .line 11378
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$102(Landroid/webkit/WebViewClassic;I)I

    .line 11380
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v3

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v3, v3, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-nez v3, :cond_13

    .line 11381
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/AutoCompletePopup;->clearAdapter()V

    .line 11384
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->bWebSelectDialogIsUp:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8600(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebSelectDialog;

    move-result-object v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectFocusMoved:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8800(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    const/4 v8, 0x1

    if-eq v3, v8, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectFieldPointer:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8900(Landroid/webkit/WebViewClassic;)I

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectFieldPointer:I
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$8900(Landroid/webkit/WebViewClassic;)I

    move-result v8

    if-eq v3, v8, :cond_14

    .line 11387
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebSelectDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSelectDialog;->dismiss()V

    .line 11388
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->bWebSelectDialogIsUp:Z
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$8602(Landroid/webkit/WebViewClassic;Z)Z

    .line 11389
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSelectFieldPointer:I
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$8902(Landroid/webkit/WebViewClassic;I)I

    .line 11394
    :cond_14
    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/webkit/WebViewCore$WebKitHitTest;

    .line 11395
    .local v18, hit:Landroid/webkit/WebViewCore$WebKitHitTest;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v18

    #setter for: Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;
    invoke-static {v3, v0}, Landroid/webkit/WebViewClassic;->access$9002(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)Landroid/webkit/WebViewCore$WebKitHitTest;

    .line 11396
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v18

    #calls: Landroid/webkit/WebViewClassic;->setTouchHighlightRects(Landroid/webkit/WebViewCore$WebKitHitTest;)V
    invoke-static {v3, v0}, Landroid/webkit/WebViewClassic;->access$9100(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)V

    .line 11397
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v18

    #calls: Landroid/webkit/WebViewClassic;->setHitTestResult(Landroid/webkit/WebViewCore$WebKitHitTest;)V
    invoke-static {v3, v0}, Landroid/webkit/WebViewClassic;->access$9200(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)V

    goto/16 :goto_0

    .line 11375
    .end local v18           #hit:Landroid/webkit/WebViewCore$WebKitHitTest;
    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 11405
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;

    .line 11406
    .local v34, saveMessage:Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mCallback:Landroid/webkit/ValueCallback;

    if-eqz v3, :cond_0

    .line 11407
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mCallback:Landroid/webkit/ValueCallback;

    move-object/from16 v0, v34

    iget-object v8, v0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mResultFile:Ljava/lang/String;

    invoke-interface {v3, v8}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 11412
    .end local v34           #saveMessage:Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/webkit/WebViewCore$AutoFillData;

    #setter for: Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v8, v3}, Landroid/webkit/WebViewClassic;->access$4202(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$AutoFillData;)Landroid/webkit/WebViewCore$AutoFillData;

    .line 11413
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v3, :cond_0

    .line 11414
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$4200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$AutoFillData;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/WebViewCore$AutoFillData;->getQueryId()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setAutoFillable(I)V

    .line 11415
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$4200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$AutoFillData;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/WebViewCore$AutoFillData;->getQueryId()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/webkit/AutoCompletePopup;->setAutoFillQueryId(I)V

    goto/16 :goto_0

    .line 11420
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 11421
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 11422
    .local v31, pastEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v3

    new-instance v8, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v46, v0

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {v46 .. v46}, Landroid/webkit/WebViewClassic;->access$1400(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v46

    const v47, 0x1090141

    move-object/from16 v0, v46

    move/from16 v1, v47

    move-object/from16 v2, v31

    invoke-direct {v8, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v8}, Landroid/webkit/AutoCompletePopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 11430
    .end local v31           #pastEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/webkit/WebViewClassic;->copyToClipboard(Ljava/lang/String;)V
    invoke-static {v8, v3}, Landroid/webkit/WebViewClassic;->access$9300(Landroid/webkit/WebViewClassic;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11434
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v3, :cond_0

    .line 11439
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/webkit/WebViewCore$TextFieldInitData;

    .line 11440
    .local v21, initData:Landroid/webkit/WebViewCore$TextFieldInitData;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mTextGeneration:I
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$6802(Landroid/webkit/WebViewClassic;I)I

    .line 11443
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v3

    move-object/from16 v0, v21

    iget v8, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mFieldPointer:I

    if-eq v3, v8, :cond_16

    .line 11444
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x1

    #setter for: Landroid/webkit/WebViewClassic;->mIsNewInputField:Z
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$1202(Landroid/webkit/WebViewClassic;Z)Z

    .line 11450
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v21

    iget v8, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mFieldPointer:I

    #setter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$102(Landroid/webkit/WebViewClassic;I)I

    .line 11452
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v21

    iget-boolean v8, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsTextFieldNext:Z

    iput-boolean v8, v3, Landroid/webkit/WebViewClassic;->mIsTextFieldNext:Z

    .line 11453
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v21

    iget-boolean v8, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsSelectFieldNext:Z

    iput-boolean v8, v3, Landroid/webkit/WebViewClassic;->mIsSelectFieldNext:Z

    .line 11454
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v21

    iget-boolean v8, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsTextFieldPrev:Z

    iput-boolean v8, v3, Landroid/webkit/WebViewClassic;->mIsTextFieldPrev:Z

    .line 11455
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v21

    iget-boolean v8, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsSelectFieldPrev:Z

    iput-boolean v8, v3, Landroid/webkit/WebViewClassic;->mIsSelectFieldPrev:Z

    .line 11457
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->initEditorInfo(Landroid/webkit/WebViewCore$TextFieldInitData;)V

    .line 11458
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mText:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setTextAndKeepSelection(Ljava/lang/CharSequence;)V

    .line 11459
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11460
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v21

    iget v8, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mNodeLayerId:I

    iput v8, v3, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    .line 11461
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mNativeClass:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$6300(Landroid/webkit/WebViewClassic;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v8, v8, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    #calls: Landroid/webkit/WebViewClassic;->nativeMapLayerRect(IILandroid/graphics/Rect;)V
    invoke-static {v3, v8, v0}, Landroid/webkit/WebViewClassic;->access$9400(IILandroid/graphics/Rect;)V

    .line 11463
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11464
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->relocateAutoCompletePopup()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$9500(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 11470
    .end local v21           #initData:Landroid/webkit/WebViewCore$TextFieldInitData;
    :sswitch_24
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/webkit/WebViewCore$TextFieldInitData;

    .line 11471
    .restart local v21       #initData:Landroid/webkit/WebViewCore$TextFieldInitData;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v21

    iget v8, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mFieldPointer:I

    #setter for: Landroid/webkit/WebViewClassic;->mSelectFieldPointer:I
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$8902(Landroid/webkit/WebViewClassic;I)I

    .line 11472
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v21

    iget-boolean v8, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsTextFieldNext:Z

    iput-boolean v8, v3, Landroid/webkit/WebViewClassic;->mIsTextFieldNext:Z

    .line 11473
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v21

    iget-boolean v8, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsSelectFieldNext:Z

    iput-boolean v8, v3, Landroid/webkit/WebViewClassic;->mIsSelectFieldNext:Z

    .line 11474
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v21

    iget-boolean v8, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsTextFieldPrev:Z

    iput-boolean v8, v3, Landroid/webkit/WebViewClassic;->mIsTextFieldPrev:Z

    .line 11475
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v21

    iget-boolean v8, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsSelectFieldPrev:Z

    iput-boolean v8, v3, Landroid/webkit/WebViewClassic;->mIsSelectFieldPrev:Z

    .line 11476
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mSelectContentBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 11481
    .end local v21           #initData:Landroid/webkit/WebViewCore$TextFieldInitData;
    :sswitch_25
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 11482
    .restart local v6       #text:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 11483
    .local v4, start:I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    .line 11484
    .local v5, end:I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    add-int v7, v4, v3

    .line 11485
    .local v7, cursorPosition:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move v8, v7

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebViewClassic;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 11487
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto/16 :goto_0

    .line 11492
    .end local v4           #start:I
    .end local v5           #end:I
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #cursorPosition:I
    :sswitch_26
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/webkit/WebViewCore$FindAllRequest;

    .line 11493
    .local v33, request:Landroid/webkit/WebViewCore$FindAllRequest;
    if-nez v33, :cond_17

    .line 11494
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$9600(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindActionModeCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 11495
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$9600(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindActionModeCallback;

    move-result-object v3

    const/4 v8, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v3, v8, v0, v1}, Landroid/webkit/FindActionModeCallback;->updateMatchCount(IIZ)V

    goto/16 :goto_0

    .line 11497
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$9700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$FindAllRequest;

    move-result-object v3

    move-object/from16 v0, v33

    if-ne v0, v3, :cond_0

    .line 11499
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$9700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$FindAllRequest;

    move-result-object v8

    monitor-enter v8

    .line 11500
    :try_start_0
    move-object/from16 v0, v33

    iget v0, v0, Landroid/webkit/WebViewCore$FindAllRequest;->mMatchCount:I

    move/from16 v24, v0

    .line 11501
    .local v24, matchCount:I
    move-object/from16 v0, v33

    iget v0, v0, Landroid/webkit/WebViewCore$FindAllRequest;->mMatchIndex:I

    move/from16 v25, v0

    .line 11502
    .local v25, matchIndex:I
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11503
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$9600(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindActionModeCallback;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 11504
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$9600(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindActionModeCallback;

    move-result-object v3

    const/4 v8, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v3, v0, v1, v8}, Landroid/webkit/FindActionModeCallback;->updateMatchCount(IIZ)V

    .line 11506
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindListener:Landroid/webkit/WebView$FindListener;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$9800(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView$FindListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 11507
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindListener:Landroid/webkit/WebView$FindListener;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$9800(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView$FindListener;

    move-result-object v3

    const/4 v8, 0x1

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-interface {v3, v0, v1, v8}, Landroid/webkit/WebView$FindListener;->onFindResultReceived(IIZ)V

    goto/16 :goto_0

    .line 11502
    .end local v24           #matchCount:I
    .end local v25           #matchIndex:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 11514
    .end local v33           #request:Landroid/webkit/WebViewCore$FindAllRequest;
    :sswitch_27
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/graphics/Rect;

    .line 11518
    .restart local v32       #r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mNativeClass:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$6300(Landroid/webkit/WebViewClassic;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 11519
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mNativeClass:I
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$6300(Landroid/webkit/WebViewClassic;)I

    move-result v8

    move-object/from16 v0, v32

    #calls: Landroid/webkit/WebViewClassic;->nativeScrollRectOnScreen(ILandroid/graphics/Rect;)V
    invoke-static {v3, v8, v0}, Landroid/webkit/WebViewClassic;->access$9900(Landroid/webkit/WebViewClassic;ILandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 11524
    .end local v32           #r:Landroid/graphics/Rect;
    :sswitch_28
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$10000(Landroid/webkit/WebViewClassic;)I

    move-result v3

    if-nez v3, :cond_19

    .line 11525
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    const/16 v8, 0x16

    invoke-virtual {v3, v8}, Landroid/webkit/WebView;->performHapticFeedback(I)Z

    .line 11526
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x2

    #setter for: Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$10002(Landroid/webkit/WebViewClassic;I)I

    .line 11527
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v3

    if-nez v3, :cond_0

    .line 11528
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->setupWebkitSelect()Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$10100(Landroid/webkit/WebViewClassic;)Z

    goto/16 :goto_0

    .line 11531
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto/16 :goto_0

    .line 11536
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$10200(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11537
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto/16 :goto_0

    .line 11542
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/16 v8, 0xdf

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    const/16 v47, 0x0

    const/16 v48, 0x0

    move/from16 v0, v46

    move/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v3, v8, v0, v1, v2}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 11546
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->relocateAutoCompletePopup()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$9500(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 11550
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v8, 0xc0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    const/16 v47, 0x0

    move/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v3, v8, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto/16 :goto_0

    .line 11555
    :sswitch_2d
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v8

    if-ne v3, v8, :cond_0

    .line 11556
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v8, v3, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v8, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 11561
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v3, v3, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$10200(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11562
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->setupWebkitSelect()Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$10100(Landroid/webkit/WebViewClassic;)Z

    .line 11563
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->resetCaretTimer()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$10300(Landroid/webkit/WebViewClassic;)V

    .line 11564
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->showPasteWindow()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$10400(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 11569
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v8, v3, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v8, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11570
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mNativeClass:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$6300(Landroid/webkit/WebViewClassic;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v8, v8, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    #calls: Landroid/webkit/WebViewClassic;->nativeMapLayerRect(IILandroid/graphics/Rect;)V
    invoke-static {v3, v8, v0}, Landroid/webkit/WebViewClassic;->access$9400(IILandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 11575
    :sswitch_30
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->scrollEditWithCursor()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$10500(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 11582
    :sswitch_31
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/webkit/WebViewCore$SelectionCopiedData;

    #calls: Landroid/webkit/WebViewClassic;->updateSelectionInfo(Landroid/webkit/WebViewCore$SelectionCopiedData;)V
    invoke-static {v8, v3}, Landroid/webkit/WebViewClassic;->access$10600(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$SelectionCopiedData;)V

    .line 11584
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->notifySelectionChanged()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$10700(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 11589
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/webkit/WebViewCore$SelectionCopiedData;

    #calls: Landroid/webkit/WebViewClassic;->updateSelectionInfo(Landroid/webkit/WebViewCore$SelectionCopiedData;)V
    invoke-static {v8, v3}, Landroid/webkit/WebViewClassic;->access$10600(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$SelectionCopiedData;)V

    .line 11590
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->cutSelectionSec()V

    goto/16 :goto_0

    .line 11596
    :sswitch_33
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->updateImageSelectedRect()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$10800(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 11601
    :sswitch_34
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->displayColorPicker()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$10900(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 11607
    :sswitch_35
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v36, v3

    check-cast v36, [Ljava/lang/String;

    .line 11608
    .local v36, type:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x0

    aget-object v8, v36, v8

    const/16 v46, 0x1

    aget-object v46, v36, v46

    move-object/from16 v0, v46

    #calls: Landroid/webkit/WebViewClassic;->displayDateTimePickers(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v8, v0}, Landroid/webkit/WebViewClassic;->access$11000(Landroid/webkit/WebViewClassic;Ljava/lang/String;Ljava/lang/String;)V

    .line 11611
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v3, :cond_0

    .line 11612
    const/4 v3, 0x1

    aget-object v6, v36, v3

    .line 11613
    .restart local v6       #text:Ljava/lang/String;
    if-nez v6, :cond_1a

    .line 11614
    const-string v6, ""

    .line 11616
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v3, v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setTextAndKeepSelection(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 11624
    .end local v6           #text:Ljava/lang/String;
    .end local v36           #type:[Ljava/lang/String;
    :sswitch_36
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v3}, Landroid/webkit/WebMagnifier;->move()V

    goto/16 :goto_0

    .line 11077
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_4
        0x6 -> :sswitch_f
        0x8 -> :sswitch_13
        0xb -> :sswitch_2
        0x65 -> :sswitch_3
        0x69 -> :sswitch_7
        0x6b -> :sswitch_8
        0x6c -> :sswitch_9
        0x6d -> :sswitch_5
        0x6e -> :sswitch_c
        0x6f -> :sswitch_d
        0x70 -> :sswitch_a
        0x71 -> :sswitch_19
        0x72 -> :sswitch_10
        0x74 -> :sswitch_11
        0x75 -> :sswitch_e
        0x76 -> :sswitch_12
        0x78 -> :sswitch_17
        0x79 -> :sswitch_18
        0x7e -> :sswitch_26
        0x7f -> :sswitch_1a
        0x81 -> :sswitch_1b
        0x82 -> :sswitch_1c
        0x83 -> :sswitch_1e
        0x84 -> :sswitch_1f
        0x85 -> :sswitch_20
        0x86 -> :sswitch_21
        0x88 -> :sswitch_14
        0x89 -> :sswitch_15
        0x8b -> :sswitch_6
        0x8c -> :sswitch_16
        0x8d -> :sswitch_22
        0x8e -> :sswitch_23
        0x8f -> :sswitch_25
        0x90 -> :sswitch_29
        0x91 -> :sswitch_2a
        0x92 -> :sswitch_2b
        0x93 -> :sswitch_1d
        0x94 -> :sswitch_2c
        0x95 -> :sswitch_30
        0x96 -> :sswitch_2d
        0x97 -> :sswitch_2e
        0x98 -> :sswitch_2f
        0x9b -> :sswitch_31
        0x9c -> :sswitch_34
        0x9d -> :sswitch_32
        0x9e -> :sswitch_35
        0xa0 -> :sswitch_33
        0xa2 -> :sswitch_28
        0xa5 -> :sswitch_36
        0xaa -> :sswitch_24
        0xb4 -> :sswitch_27
        0xb5 -> :sswitch_b
    .end sparse-switch
.end method

.method public hideKeyboradIfUneditable()V
    .locals 1

    .prologue
    .line 11703
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11704
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$800(Landroid/webkit/WebViewClassic;)V

    .line 11706
    :cond_0
    return-void
.end method

.method public isSelectingText()Z
    .locals 1

    .prologue
    .line 11710
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Z

    move-result v0

    return v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 11657
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 11672
    :goto_0
    return v0

    .line 11660
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->ensureSelectionHandles()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$1600(Landroid/webkit/WebViewClassic;)V

    .line 11661
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 11662
    .local v2, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 11664
    .local v1, x:I
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$10200(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11665
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$1700(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .local v0, isPressingHandle:Z
    goto :goto_0

    .line 11668
    .end local v0           #isPressingHandle:Z
    :cond_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$3000(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$3100(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    .restart local v0       #isPressingHandle:Z
    :cond_3
    goto :goto_0
.end method

.method public showTapHighlight(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 11677
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mShowTapHighlight:Z
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$11200(Landroid/webkit/WebViewClassic;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 11678
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #setter for: Landroid/webkit/WebViewClassic;->mShowTapHighlight:Z
    invoke-static {v0, p1}, Landroid/webkit/WebViewClassic;->access$11202(Landroid/webkit/WebViewClassic;Z)Z

    .line 11679
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 11681
    :cond_0
    return-void
.end method
