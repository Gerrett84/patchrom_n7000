.class Lcom/android/server/FMRadioService$7;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 9
    .parameter "focusChange"

    .prologue
    const/16 v8, 0x11

    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 522
    invoke-static {}, Lcom/android/server/FMRadioService;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnAudioFocusChangeListener switch off mAudioFocusListener :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stored freq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1400(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 523
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 637
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 526
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 527
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanProgress:Z
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$1500(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 528
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    iget-object v2, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanFreq:J
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    #setter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v1, v2, v3}, Lcom/android/server/FMRadioService;->access$1402(Lcom/android/server/FMRadioService;J)J

    .line 533
    :goto_1
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->volumeLock:Z
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$000(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 534
    const-string v1, "AUDIOFOCUS_LOSS - recoding O"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 542
    :goto_2
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #calls: Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z
    invoke-static {v1, v4, v7, v4}, Lcom/android/server/FMRadioService;->access$700(Lcom/android/server/FMRadioService;ZIZ)Z

    goto :goto_0

    .line 530
    :cond_2
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    iget-object v2, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v2

    #setter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v1, v2, v3}, Lcom/android/server/FMRadioService;->access$1402(Lcom/android/server/FMRadioService;J)J

    goto :goto_1

    .line 539
    :cond_3
    const-string v1, "AUDIOFOCUS_LOSS - recoding X"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 547
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanProgress:Z
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$1500(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 549
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    iget-object v2, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanFreq:J
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    #setter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v1, v2, v3}, Lcom/android/server/FMRadioService;->access$1402(Lcom/android/server/FMRadioService;J)J

    .line 554
    :goto_3
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->volumeLock:Z
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$000(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 555
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT - recoding O"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 562
    :goto_4
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #calls: Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z
    invoke-static {v1, v4, v7, v5}, Lcom/android/server/FMRadioService;->access$700(Lcom/android/server/FMRadioService;ZIZ)Z

    goto :goto_0

    .line 551
    :cond_4
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    iget-object v2, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v2

    #setter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v1, v2, v3}, Lcom/android/server/FMRadioService;->access$1402(Lcom/android/server/FMRadioService;J)J

    goto :goto_3

    .line 559
    :cond_5
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT - recoding X"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 567
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 568
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->volumeLock:Z
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$000(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 569
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK - recoding O"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 572
    :cond_6
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK - recoding X"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 573
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanProgress:Z
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$1500(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 574
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    iget-object v2, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanFreq:J
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    #setter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v1, v2, v3}, Lcom/android/server/FMRadioService;->access$1402(Lcom/android/server/FMRadioService;J)J

    .line 578
    :goto_5
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #calls: Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z
    invoke-static {v1, v4, v7, v5}, Lcom/android/server/FMRadioService;->access$700(Lcom/android/server/FMRadioService;ZIZ)Z

    goto/16 :goto_0

    .line 576
    :cond_7
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    iget-object v2, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v2

    #setter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v1, v2, v3}, Lcom/android/server/FMRadioService;->access$1402(Lcom/android/server/FMRadioService;J)J

    goto :goto_5

    .line 585
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$1400(Lcom/android/server/FMRadioService;)J

    move-result-wide v1

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mIsForcestop:Z
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$1700(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 586
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1}, Lcom/android/server/FMRadioService;->on()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnAudioFocusChangeListener switch on mNeedResumeToFreq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1400(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 595
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$500(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$500(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRadioSpeakerOn(Z)V

    .line 599
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mIsTransientPaused:Z
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$1800(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 600
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    iget-object v2, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$500(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    int-to-long v2, v2

    #setter for: Lcom/android/server/FMRadioService;->mResumeVol:J
    invoke-static {v1, v2, v3}, Lcom/android/server/FMRadioService;->access$1902(Lcom/android/server/FMRadioService;J)J

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slowly increase the volume till :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mResumeVol:J
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1900(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 602
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mResumeVol:J
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$1900(Lcom/android/server/FMRadioService;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    .line 603
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    iget-object v2, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mResumeVol:J
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1900(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    #setter for: Lcom/android/server/FMRadioService;->mCurrentResumeVol:J
    invoke-static {v1, v2, v3}, Lcom/android/server/FMRadioService;->access$2002(Lcom/android/server/FMRadioService;J)J

    .line 604
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/FMRadioService;->setVolume(J)V

    .line 605
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    iget-object v1, v1, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 606
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    iget-object v1, v1, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 611
    :goto_6
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #setter for: Lcom/android/server/FMRadioService;->mIsTransientPaused:Z
    invoke-static {v1, v5}, Lcom/android/server/FMRadioService;->access$1802(Lcom/android/server/FMRadioService;Z)Z

    .line 619
    :goto_7
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$1400(Lcom/android/server/FMRadioService;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_8

    .line 620
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    const-wide/32 v2, 0x155cc

    #setter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v1, v2, v3}, Lcom/android/server/FMRadioService;->access$1402(Lcom/android/server/FMRadioService;J)J

    .line 622
    :cond_8
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$2100(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1400(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/FMPlayerNative;->tune(J)V

    .line 623
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$1400(Lcom/android/server/FMRadioService;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 624
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.app.fm.auto.on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "freq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$1400(Lcom/android/server/FMRadioService;)J

    move-result-wide v3

    long-to-float v3, v3

    const/high16 v4, 0x447a

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$600(Lcom/android/server/FMRadioService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 627
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    const-wide/16 v2, -0x2

    #setter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v1, v2, v3}, Lcom/android/server/FMRadioService;->access$1402(Lcom/android/server/FMRadioService;J)J

    goto/16 :goto_0

    .line 608
    .end local v0           #intent:Landroid/content/Intent;
    :cond_9
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$500(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mResumeVol:J
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1900(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v6, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_6

    .line 614
    :cond_a
    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$500(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$500(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v6, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_7

    .line 630
    :cond_b
    const-string v1, "Not able to resume FM player"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 523
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
