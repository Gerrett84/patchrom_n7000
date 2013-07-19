.class public Lcom/sec/android/app/fm/RenameFileListPlayerActivity;
.super Landroid/app/Activity;
.source "RenameFileListPlayerActivity.java"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverFileDelete:Landroid/content/BroadcastReceiver;

.field private mCursor:Landroid/database/Cursor;

.field private mEventHandler:Landroid/os/Handler;

.field private mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

.field private mListType:I

.field mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

.field private mRootLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    .line 63
    iput-object v1, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mListType:I

    .line 67
    iput-object v1, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mActionBar:Landroid/app/ActionBar;

    .line 99
    new-instance v0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$1;-><init>(Lcom/sec/android/app/fm/RenameFileListPlayerActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;

    .line 340
    iput-object v1, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/RenameFileListPlayerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/RenameFileListPlayerActivity;J)Lcom/sec/android/app/fm/ui/RenameDialog;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->createRenameDialog(J)Lcom/sec/android/app/fm/ui/RenameDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/RenameFileListPlayerActivity;)Lcom/sec/android/app/fm/data/RecordedFileAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    return-object v0
.end method

.method private createRenameDialog(J)Lcom/sec/android/app/fm/ui/RenameDialog;
    .locals 11
    .parameter "id"

    .prologue
    .line 343
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 344
    const-string v0, "VoiceListOptionRenameActivity"

    const-string v1, "init() : id is -1"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    const-string v0, "_data"

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->getItemString(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 349
    .local v7, prevFilePath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    .local v3, prevFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 351
    .local v8, selelectedFileName:Ljava/lang/String;
    const/16 v0, 0x2e

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 353
    .local v6, dotIndex:I
    const/4 v0, -0x1

    if-eq v6, v0, :cond_1

    .line 354
    const/4 v0, 0x0

    invoke-virtual {v8, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 355
    :cond_1
    move-object v2, v8

    .line 359
    .local v2, prevFileName:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/RenameDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 363
    :cond_2
    new-instance v9, Lcom/sec/android/app/fm/ui/RenameDialog;

    const/4 v10, 0x1

    new-instance v0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$5;-><init>(Lcom/sec/android/app/fm/RenameFileListPlayerActivity;Ljava/lang/String;Ljava/io/File;J)V

    invoke-direct {v9, p0, v10, v0}, Lcom/sec/android/app/fm/ui/RenameDialog;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    iput-object v9, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/fm/ui/RenameDialog;->setText(Ljava/lang/String;)V

    .line 437
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    if-eqz v0, :cond_4

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/RenameDialog;->show()V

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    :goto_0
    return-object v0

    .line 440
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getviewIds()[I
    .locals 3

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 237
    .local v0, viewIds:[I
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 238
    const/4 v1, 0x0

    const v2, 0x7f070035

    aput v2, v0, v1

    .line 239
    const/4 v1, 0x1

    const v2, 0x7f070037

    aput v2, v0, v1

    .line 240
    const/4 v1, 0x2

    const v2, 0x7f070038

    aput v2, v0, v1

    .line 241
    return-object v0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 301
    iget-object v1, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mRootLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 303
    .local v0, list:Landroid/widget/ListView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 304
    iget-object v1, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 305
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 306
    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDrawingCacheQuality(I)V

    .line 308
    new-instance v1, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$4;-><init>(Lcom/sec/android/app/fm/RenameFileListPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 325
    return-void
.end method

.method private registerBroadcastReceiverFileDelete(Z)V
    .locals 2
    .parameter "register"

    .prologue
    .line 188
    if-eqz p1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mBroadcastReceiverFileDelete:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    new-instance v1, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$3;-><init>(Lcom/sec/android/app/fm/RenameFileListPlayerActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mBroadcastReceiverFileDelete:Landroid/content/BroadcastReceiver;

    .line 201
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.fm.listplayer.service.FILE_DELETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mBroadcastReceiverFileDelete:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 205
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mBroadcastReceiverFileDelete:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mBroadcastReceiverFileDelete:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mBroadcastReceiverFileDelete:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private registerBroadcastReceiverLowBattery(Z)V
    .locals 2
    .parameter "register"

    .prologue
    .line 125
    if-eqz p1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    new-instance v1, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$2;-><init>(Lcom/sec/android/app/fm/RenameFileListPlayerActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 151
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method


# virtual methods
.method public listBinding()V
    .locals 14

    .prologue
    const/4 v7, 0x0

    .line 245
    const-string v0, "VoiceListOptionRenameActivity"

    const-string v1, "listBinding"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->getviewIds()[I

    move-result-object v10

    .line 248
    .local v10, viewIds:[I
    const v6, 0x7f03000c

    .line 250
    .local v6, layoutId:I
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    const-string v0, "VoiceListOptionRenameActivity"

    const-string v1, "Closing previously opened cursor."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 253
    iput-object v7, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    .line 258
    :cond_0
    const/4 v3, 0x0

    .line 259
    .local v3, selection:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v11, builder:Ljava/lang/StringBuilder;
    const-string v0, "(_data LIKE \'%.m4a\')"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (mime_type LIKE \'audio/3gpp\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or mime_type LIKE \'audio/amr\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or mime_type LIKE \'audio/mp4\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (_size != \'0\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (recordingtype = 2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 267
    const/4 v0, 0x4

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v9, v0

    const/4 v0, 0x2

    const-string v1, "date_modified"

    aput-object v1, v9, v0

    const/4 v0, 0x3

    const-string v1, "duration"

    aput-object v1, v9, v0

    .line 273
    .local v9, cols:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mCursor:Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 289
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 290
    const-string v0, "VoiceListOptionRenameActivity"

    const-string v1, "listBinding cusor null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->finish()V

    .line 298
    :goto_1
    return-void

    .line 275
    :catch_0
    move-exception v12

    .line 276
    .local v12, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "VoiceListOptionRenameActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listBinding - SQLiteException :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 279
    iput-object v7, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 281
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v13

    .line 282
    .local v13, ex:Ljava/lang/UnsupportedOperationException;
    const-string v0, "VoiceListOptionRenameActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listBinding - UnsupportedOperationException :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 285
    iput-object v7, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 295
    .end local v13           #ex:Ljava/lang/UnsupportedOperationException;
    :cond_2
    const-string v0, "VoiceListOptionRenameActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listBinding - mCursor :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v4, Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    iget v7, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mListType:I

    iget-object v8, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;-><init>(Landroid/content/Context;IILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v4, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mListType:I

    .line 74
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->setContentView(I)V

    .line 76
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mRootLayout:Landroid/widget/LinearLayout;

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->listBinding()V

    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->initView()V

    .line 84
    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->registerBroadcastReceiverLowBattery(Z)V

    .line 85
    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->registerBroadcastReceiverFileDelete(Z)V

    .line 86
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    .line 220
    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->registerBroadcastReceiverLowBattery(Z)V

    .line 222
    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->registerBroadcastReceiverFileDelete(Z)V

    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 224
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 228
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 229
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 231
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 329
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 335
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 331
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->finish()V

    goto :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->notifyDataSetChanged()V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->finish()V

    .line 97
    :cond_0
    return-void
.end method
