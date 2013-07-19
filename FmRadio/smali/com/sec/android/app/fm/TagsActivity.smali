.class public Lcom/sec/android/app/fm/TagsActivity;
.super Landroid/app/Activity;
.source "TagsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/TagsActivity$TagHolder;,
        Lcom/sec/android/app/fm/TagsActivity$TagAdapter;,
        Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;
    }
.end annotation


# instance fields
.field private final SCROLL_DELAY:I

.field private fadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private fadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private hasMusicHub:Z

.field private mFMListener:Lcom/samsung/media/fmradio/FMEventListener;

.field private mFMPlayer:Lcom/samsung/media/fmradio/FMPlayer;

.field private musicAdapter:Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;

.field private musicHistoryLayout:Landroid/widget/LinearLayout;

.field private musicLayout:Landroid/widget/LinearLayout;

.field private musicList:Landroid/widget/ListView;

.field private noInformationView:Landroid/widget/TextView;

.field private nowAdapter:Lcom/sec/android/app/fm/TagsActivity$TagAdapter;

.field private nowInfoView:Landroid/widget/TextView;

.field private nowLink:Landroid/widget/ImageButton;

.field private nowList:Landroid/widget/ListView;

.field private nowListLayout:Landroid/widget/LinearLayout;

.field private nowMusicLayout:Landroid/widget/LinearLayout;

.field private nowTitleView:Landroid/widget/TextView;

.field private screenWidth:I

.field private scrollRunnable:Ljava/lang/Runnable;

.field private scrollView:Landroid/widget/ScrollView;

.field private tagListMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 401
    new-instance v0, Lcom/sec/android/app/fm/TagsActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/TagsActivity$1;-><init>(Lcom/sec/android/app/fm/TagsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/TagsActivity;->mFMListener:Lcom/samsung/media/fmradio/FMEventListener;

    .line 452
    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->mFMPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 488
    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->tagListMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;

    .line 490
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/fm/TagsActivity;->screenWidth:I

    .line 502
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/fm/TagsActivity;->SCROLL_DELAY:I

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/TagsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sec/android/app/fm/TagsActivity;->hasMusicHub:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/TagsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/app/fm/TagsActivity;->screenWidth:I

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/sec/android/app/fm/TagsActivity;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/fm/TagsActivity;)Lcom/sec/android/app/fm/ui/RTPTagListManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/fm/TagsActivity;->tagListMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/fm/TagsActivity;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/fm/TagsActivity;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/fm/TagsActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/fm/TagsActivity;->scrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 386
    const-string v0, "TagsActivity"

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void
.end method

.method private updateLayoutHeight(Landroid/widget/LinearLayout;Landroid/widget/BaseAdapter;Landroid/widget/ListView;)V
    .locals 7
    .parameter "layout"
    .parameter "adapter"
    .parameter "lv"

    .prologue
    const/4 v6, 0x0

    .line 769
    const/4 v2, 0x0

    .line 770
    .local v2, i:I
    const/4 v1, 0x0

    .line 771
    .local v1, height:I
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 773
    .local v0, count:I
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 775
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 776
    const/4 v5, 0x0

    invoke-virtual {p2, v2, v5, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 777
    .local v3, listItem:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 778
    invoke-virtual {v3, v6, v6}, Landroid/view/View;->measure(II)V

    .line 779
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v1, v5

    .line 775
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 783
    .end local v3           #listItem:Landroid/view/View;
    :cond_1
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p3}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v5, v1

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 786
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 703
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configuration changed :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/fm/TagsActivity;->log(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0}, Lcom/sec/android/app/fm/TagsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/sec/android/app/fm/TagsActivity;->screenWidth:I

    .line 706
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/TagsActivity;->updateTags(Z)V

    .line 708
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0700d8

    const v7, 0x7f0700d7

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 507
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 509
    const v1, 0x7f030022

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/TagsActivity;->setContentView(I)V

    .line 511
    const-string v1, "onCreate..."

    invoke-static {v1}, Lcom/sec/android/app/fm/TagsActivity;->log(Ljava/lang/String;)V

    .line 513
    const-string v1, "FMPlayer"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/TagsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->mFMPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 515
    iget-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->mFMPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v1, :cond_0

    .line 516
    const-string v1, "FMRadio Service Is NULL. Exit FMRadio"

    invoke-static {v1}, Lcom/sec/android/app/fm/TagsActivity;->log(Ljava/lang/String;)V

    .line 653
    :goto_0
    return-void

    .line 520
    :cond_0
    const-string v1, "Setting the listner"

    invoke-static {v1}, Lcom/sec/android/app/fm/TagsActivity;->log(Ljava/lang/String;)V

    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->mFMPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v2, p0, Lcom/sec/android/app/fm/TagsActivity;->mFMListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_1
    invoke-static {p0}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/ui/RTPTagListManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->tagListMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;

    .line 536
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/fm/TagsActivity;->hasMusicHub:Z

    .line 546
    const v1, 0x7f0700d2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/TagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->scrollView:Landroid/widget/ScrollView;

    .line 551
    const v1, 0x7f0700d5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/TagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->noInformationView:Landroid/widget/TextView;

    .line 553
    const v1, 0x7f0700d6

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/TagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->nowMusicLayout:Landroid/widget/LinearLayout;

    .line 555
    invoke-virtual {p0, v7}, Lcom/sec/android/app/fm/TagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->nowTitleView:Landroid/widget/TextView;

    .line 556
    invoke-virtual {p0, v8}, Lcom/sec/android/app/fm/TagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->nowInfoView:Landroid/widget/TextView;

    .line 557
    const v1, 0x7f0700d9

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/TagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->nowLink:Landroid/widget/ImageButton;

    .line 559
    const v1, 0x7f0700da

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/TagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->nowListLayout:Landroid/widget/LinearLayout;

    .line 560
    const v1, 0x7f0700db

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/TagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->nowList:Landroid/widget/ListView;

    .line 561
    new-instance v1, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;-><init>(Lcom/sec/android/app/fm/TagsActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->nowAdapter:Lcom/sec/android/app/fm/TagsActivity$TagAdapter;

    .line 562
    iget-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->nowAdapter:Lcom/sec/android/app/fm/TagsActivity$TagAdapter;

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/sec/android/app/fm/TagsActivity;->tagListMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;

    invoke-virtual {v3}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getCurTagList()Lcom/sec/android/app/fm/ui/RTPTagList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->setTagAdapter(ILcom/sec/android/app/fm/ui/RTPTagList;)V

    .line 565
    iget-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->nowList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/fm/TagsActivity;->nowAdapter:Lcom/sec/android/app/fm/TagsActivity$TagAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 567
    invoke-virtual {p0, v7}, Lcom/sec/android/app/fm/TagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->nowTitleView:Landroid/widget/TextView;

    .line 568
    invoke-virtual {p0, v8}, Lcom/sec/android/app/fm/TagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->nowInfoView:Landroid/widget/TextView;

    .line 569
    const v1, 0x7f0700d9

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/TagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->nowLink:Landroid/widget/ImageButton;

    .line 574
    const v1, 0x7f0700dc

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/TagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->musicLayout:Landroid/widget/LinearLayout;

    .line 575
    const v1, 0x7f0700de

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/TagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->musicHistoryLayout:Landroid/widget/LinearLayout;

    .line 576
    const v1, 0x7f0700df

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/TagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->musicList:Landroid/widget/ListView;

    .line 577
    new-instance v1, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;-><init>(Lcom/sec/android/app/fm/TagsActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->musicAdapter:Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;

    .line 578
    iget-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->musicAdapter:Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;

    iget-object v2, p0, Lcom/sec/android/app/fm/TagsActivity;->tagListMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getTagListArray()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->setTagListArray(Ljava/util/ArrayList;)V

    .line 579
    iget-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->musicList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/fm/TagsActivity;->musicAdapter:Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 610
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->fadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 611
    iget-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->fadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 612
    iget-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->fadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 614
    iget-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->fadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 616
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->fadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 618
    iget-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->fadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 620
    iget-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->fadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 621
    new-instance v1, Lcom/sec/android/app/fm/TagsActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/TagsActivity$2;-><init>(Lcom/sec/android/app/fm/TagsActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->scrollRunnable:Ljava/lang/Runnable;

    .line 649
    invoke-virtual {p0}, Lcom/sec/android/app/fm/TagsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 651
    invoke-virtual {p0}, Lcom/sec/android/app/fm/TagsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto/16 :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 526
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMPlayerException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/fm/TagsActivity;->log(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 528
    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 658
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 661
    :try_start_0
    const-string v1, "we are removing the listner"

    invoke-static {v1}, Lcom/sec/android/app/fm/TagsActivity;->log(Ljava/lang/String;)V

    .line 662
    iget-object v1, p0, Lcom/sec/android/app/fm/TagsActivity;->mFMPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v2, p0, Lcom/sec/android/app/fm/TagsActivity;->mFMListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->removeListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v0

    .line 665
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMPlayerException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/fm/TagsActivity;->log(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 667
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 713
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 721
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 715
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/TagsActivity;->finish()V

    goto :goto_0

    .line 713
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 676
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 677
    const-string v0, "onResume"

    invoke-static {v0}, Lcom/sec/android/app/fm/TagsActivity;->log(Ljava/lang/String;)V

    .line 678
    invoke-static {p0}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->setActiveContext(Landroid/content/Context;)V

    .line 679
    invoke-virtual {p0}, Lcom/sec/android/app/fm/TagsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/sec/android/app/fm/TagsActivity;->screenWidth:I

    .line 697
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/TagsActivity;->updateTags(Z)V

    .line 698
    return-void
.end method

.method public updateTags(Z)V
    .locals 12
    .parameter "animation"

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 790
    const/4 v3, 0x0

    .line 791
    .local v3, nowMusicVisible:Z
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->tagListMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;

    invoke-virtual {v7}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getCurTagList()Lcom/sec/android/app/fm/ui/RTPTagList;

    move-result-object v0

    .line 795
    .local v0, curTagList:Lcom/sec/android/app/fm/ui/RTPTagList;
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->noInformationView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->clearAnimation()V

    .line 796
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowMusicLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 797
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 800
    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/RTPTagList;->size()I

    move-result v7

    if-lez v7, :cond_f

    .line 802
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->noInformationView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 804
    if-eqz p1, :cond_0

    .line 805
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->noInformationView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity;->fadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 807
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->noInformationView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 810
    :cond_1
    invoke-virtual {v0, v9}, Lcom/sec/android/app/fm/ui/RTPTagList;->haveTag(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 812
    const-string v5, ""

    .line 813
    .local v5, title:Ljava/lang/String;
    const-string v1, ""

    .line 814
    .local v1, info:Ljava/lang/String;
    const/4 v6, 0x0

    .line 816
    .local v6, tmp:Ljava/lang/String;
    const/4 v3, 0x1

    .line 818
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v4

    .local v4, tag:Lcom/sec/android/app/fm/ui/RTPTag;
    if-eqz v4, :cond_2

    .line 820
    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v6

    .line 821
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 822
    move-object v1, v6

    .line 824
    :cond_2
    const/16 v7, 0x9

    invoke-virtual {v0, v7}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 826
    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v6

    .line 827
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 828
    move-object v1, v6

    .line 830
    :cond_3
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 832
    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v6

    .line 833
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 834
    move-object v1, v6

    .line 837
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowInfoView:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowLink:Landroid/widget/ImageButton;

    invoke-virtual {v7, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 840
    invoke-virtual {v0, v9}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 842
    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v6

    .line 843
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 844
    move-object v5, v6

    .line 845
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowLink:Landroid/widget/ImageButton;

    invoke-virtual {v7, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 849
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    iget-boolean v7, p0, Lcom/sec/android/app/fm/TagsActivity;->hasMusicHub:Z

    if-eqz v7, :cond_a

    .line 852
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowLink:Landroid/widget/ImageButton;

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 853
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowLink:Landroid/widget/ImageButton;

    const v8, 0x7f0200b1

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 854
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowLink:Landroid/widget/ImageButton;

    const v8, 0x7f0200fa

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 855
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowLink:Landroid/widget/ImageButton;

    new-instance v8, Lcom/sec/android/app/fm/TagsActivity$3;

    invoke-direct {v8, p0}, Lcom/sec/android/app/fm/TagsActivity$3;-><init>(Lcom/sec/android/app/fm/TagsActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 892
    .end local v1           #info:Ljava/lang/String;
    .end local v4           #tag:Lcom/sec/android/app/fm/ui/RTPTag;
    .end local v5           #title:Ljava/lang/String;
    .end local v6           #tmp:Ljava/lang/String;
    :cond_6
    :goto_0
    const/16 v2, 0xe

    .line 895
    .local v2, newCategory:I
    invoke-virtual {v0, v2}, Lcom/sec/android/app/fm/ui/RTPTagList;->haveTag(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 897
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 898
    if-eqz p1, :cond_7

    .line 899
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowListLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity;->fadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 901
    :cond_7
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowAdapter:Lcom/sec/android/app/fm/TagsActivity$TagAdapter;

    invoke-virtual {v7, v2, v0}, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->setTagAdapter(ILcom/sec/android/app/fm/ui/RTPTagList;)V

    .line 902
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowListLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity;->nowAdapter:Lcom/sec/android/app/fm/TagsActivity$TagAdapter;

    iget-object v9, p0, Lcom/sec/android/app/fm/TagsActivity;->nowList:Landroid/widget/ListView;

    invoke-direct {p0, v7, v8, v9}, Lcom/sec/android/app/fm/TagsActivity;->updateLayoutHeight(Landroid/widget/LinearLayout;Landroid/widget/BaseAdapter;Landroid/widget/ListView;)V

    .line 903
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowAdapter:Lcom/sec/android/app/fm/TagsActivity$TagAdapter;

    invoke-virtual {v7}, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->notifyDataSetChanged()V

    .line 914
    :cond_8
    :goto_1
    if-eqz v3, :cond_9

    .line 916
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowMusicLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 917
    if-eqz p1, :cond_9

    .line 918
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowMusicLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity;->fadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 949
    .end local v2           #newCategory:I
    :cond_9
    :goto_2
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->tagListMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;

    invoke-virtual {v7}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getTagListArray()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_14

    .line 951
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->musicLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 952
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->musicHistoryLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity;->musicAdapter:Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;

    iget-object v9, p0, Lcom/sec/android/app/fm/TagsActivity;->musicList:Landroid/widget/ListView;

    invoke-direct {p0, v7, v8, v9}, Lcom/sec/android/app/fm/TagsActivity;->updateLayoutHeight(Landroid/widget/LinearLayout;Landroid/widget/BaseAdapter;Landroid/widget/ListView;)V

    .line 953
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->musicAdapter:Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;

    invoke-virtual {v7}, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->notifyDataSetChanged()V

    .line 990
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scrollView:ScrollX:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v8}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ScrollY:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v8}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/fm/TagsActivity;->log(Ljava/lang/String;)V

    .line 991
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->scrollView:Landroid/widget/ScrollView;

    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity;->scrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v9, 0x5

    invoke-virtual {v7, v8, v9, v10}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 992
    return-void

    .line 880
    .restart local v1       #info:Ljava/lang/String;
    .restart local v4       #tag:Lcom/sec/android/app/fm/ui/RTPTag;
    .restart local v5       #title:Ljava/lang/String;
    .restart local v6       #tmp:Ljava/lang/String;
    :cond_a
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowLink:Landroid/widget/ImageButton;

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 883
    .end local v1           #info:Ljava/lang/String;
    .end local v4           #tag:Lcom/sec/android/app/fm/ui/RTPTag;
    .end local v5           #title:Ljava/lang/String;
    .end local v6           #tmp:Ljava/lang/String;
    :cond_b
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowMusicLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_6

    .line 885
    if-eqz p1, :cond_c

    .line 886
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowMusicLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity;->fadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 888
    :cond_c
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowMusicLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 905
    .restart local v2       #newCategory:I
    :cond_d
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_8

    .line 907
    if-eqz p1, :cond_e

    .line 908
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowListLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity;->fadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 910
    :cond_e
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 923
    .end local v2           #newCategory:I
    :cond_f
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->noInformationView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-ne v7, v10, :cond_9

    .line 924
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowMusicLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_11

    .line 926
    if-eqz p1, :cond_10

    .line 927
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowMusicLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity;->fadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 929
    :cond_10
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowMusicLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 932
    :cond_11
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_13

    .line 934
    if-eqz p1, :cond_12

    .line 935
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowListLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity;->fadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 937
    :cond_12
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->nowListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 941
    :cond_13
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->noInformationView:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 942
    if-eqz p1, :cond_9

    .line 943
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->noInformationView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/fm/TagsActivity;->fadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_2

    .line 955
    :cond_14
    iget-object v7, p0, Lcom/sec/android/app/fm/TagsActivity;->musicLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3
.end method
