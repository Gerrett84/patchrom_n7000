.class Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;
.super Ljava/lang/Thread;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungVolumeControlThread"
.end annotation


# instance fields
.field private final DURATION_LONG_PRESS:J

.field private final DURATION_REPEAT:J

.field private mKeyCode:I

.field private mNeedControlCallVolume:Z

.field private mNeedControlMusicVolume:Z

.field private mNeedControlRadioVolume:Z

.field private mNeedToRun:Z

.field private mSleepDuration:J

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 8517
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8523
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mNeedControlMusicVolume:Z

    .line 8524
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mNeedControlRadioVolume:Z

    .line 8525
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mNeedControlCallVolume:Z

    .line 8527
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->DURATION_LONG_PRESS:J

    .line 8528
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->DURATION_REPEAT:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8517
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method controlCallAndRingingVolume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 8606
    const/4 v2, 0x0

    .line 8607
    .local v2, needControlTelephonyVolume:Z
    const/4 v1, 0x0

    .line 8608
    .local v1, needControlTelephony2Volume:Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 8610
    .local v3, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_1

    .line 8623
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->isVoipCallActive()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v4

    if-nez v4, :cond_3

    .line 8625
    const-string v4, "SamsungVolumeControl"

    const-string v5, "in run(), now adjust call volume."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8626
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8627
    const/4 v2, 0x1

    .line 8659
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    if-eqz v1, :cond_4

    .line 8660
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mNeedControlCallVolume:Z

    .line 8664
    :goto_1
    return-void

    .line 8629
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 8632
    :catch_0
    move-exception v0

    .line 8633
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "SamsungVolumeControl"

    const-string v5, "ITelephony threw RemoteException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8634
    const/4 v2, 0x0

    goto :goto_0

    .line 8662
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_4
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mNeedControlCallVolume:Z

    goto :goto_1
.end method

.method controlFMRadioVolume()V
    .locals 3

    .prologue
    .line 8596
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isFMActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8597
    :cond_0
    const-string v0, "SamsungVolumeControl"

    const-string v1, "in run(), now adjust FM radio volume."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8598
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/16 v1, 0xa

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V

    .line 8599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mNeedControlRadioVolume:Z

    .line 8603
    :goto_0
    return-void

    .line 8601
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mNeedControlRadioVolume:Z

    goto :goto_0
.end method

.method controlMusicVolume()V
    .locals 3

    .prologue
    .line 8586
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8587
    const-string v0, "SamsungVolumeControl"

    const-string v1, "in run(), now adjust music volume."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8588
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V

    .line 8589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mNeedControlMusicVolume:Z

    .line 8593
    :goto_0
    return-void

    .line 8591
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mNeedControlMusicVolume:Z

    goto :goto_0
.end method

.method isVoipCallActive()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 8667
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 8668
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_1

    .line 8669
    const-string v2, "WindowManager"

    const-string v3, "isVoipCallActive: couldn\'t get AudioManager reference"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8674
    :cond_0
    :goto_0
    return v1

    .line 8672
    :cond_1
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voice stream active = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/media/AudioManager;->isVoiceCallActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", record thread active = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8674
    invoke-virtual {v0}, Landroid/media/AudioManager;->isVoiceCallActive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 8547
    const-string v0, "SamsungVolumeControl"

    const-string v1, "run() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8548
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 8551
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->controlMusicVolume()V

    .line 8554
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->controlFMRadioVolume()V

    .line 8557
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->controlCallAndRingingVolume()V

    .line 8560
    :try_start_0
    const-string v0, "SamsungVolumeControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in run(), sleep mSleepDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mSleepDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8561
    iget-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mSleepDuration:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8565
    :goto_1
    monitor-enter p0

    .line 8566
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mNeedControlMusicVolume:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mNeedControlRadioVolume:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mNeedControlCallVolume:Z

    if-nez v0, :cond_0

    .line 8569
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8581
    :goto_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 8582
    const-string v0, "SamsungVolumeControl"

    const-string v1, "in run(), Now finish thread."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8583
    return-void

    .line 8572
    :cond_0
    :try_start_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mNeedToRun:Z

    if-nez v0, :cond_1

    .line 8573
    monitor-exit p0

    goto :goto_2

    .line 8579
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 8576
    :cond_1
    :try_start_3
    iget-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mSleepDuration:J

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->DURATION_LONG_PRESS:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 8577
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mSleepDuration:J

    .line 8579
    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 8562
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public updateInfo(IZZ)V
    .locals 2
    .parameter "keyCode"
    .parameter "down"
    .parameter "canceled"

    .prologue
    .line 8531
    monitor-enter p0

    .line 8532
    :try_start_0
    const-string v0, "SamsungVolumeControl"

    const-string v1, "in updateInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8534
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    .line 8535
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mNeedToRun:Z

    .line 8536
    iget-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->DURATION_LONG_PRESS:J

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mSleepDuration:J

    .line 8538
    if-nez p3, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_1

    .line 8541
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mNeedToRun:Z

    .line 8543
    :cond_1
    monitor-exit p0

    .line 8544
    return-void

    .line 8543
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
