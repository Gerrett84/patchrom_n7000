.class public final enum Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;
.super Ljava/lang/Enum;
.source "NoteStore.java"

# interfaces
.implements Lorg/apache/thrift/TFieldIdEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "_Fields"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;",
        ">;",
        "Lorg/apache/thrift/TFieldIdEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

.field public static final enum AUTHENTICATION_TOKEN:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

.field public static final enum NOTE_GUID:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

.field public static final enum UPDATE_SEQUENCE_NUM:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

.field public static final enum WITH_RESOURCES_ALTERNATE_DATA:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

.field public static final enum WITH_RESOURCES_DATA:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

.field public static final enum WITH_RESOURCES_RECOGNITION:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

.field private static final byName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _fieldName:Ljava/lang/String;

.field private final _thriftId:S


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 49589
    new-instance v2, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    const-string v3, "AUTHENTICATION_TOKEN"

    const/4 v4, 0x0

    const-string v5, "authenticationToken"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v2, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->AUTHENTICATION_TOKEN:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    .line 49590
    new-instance v2, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    const-string v3, "NOTE_GUID"

    const-string v4, "noteGuid"

    invoke-direct {v2, v3, v6, v7, v4}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v2, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->NOTE_GUID:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    .line 49591
    new-instance v2, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    const-string v3, "UPDATE_SEQUENCE_NUM"

    const-string v4, "updateSequenceNum"

    invoke-direct {v2, v3, v7, v8, v4}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v2, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->UPDATE_SEQUENCE_NUM:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    .line 49592
    new-instance v2, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    const-string v3, "WITH_RESOURCES_DATA"

    const-string v4, "withResourcesData"

    invoke-direct {v2, v3, v8, v9, v4}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v2, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->WITH_RESOURCES_DATA:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    .line 49593
    new-instance v2, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    const-string v3, "WITH_RESOURCES_RECOGNITION"

    const-string v4, "withResourcesRecognition"

    invoke-direct {v2, v3, v9, v10, v4}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v2, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->WITH_RESOURCES_RECOGNITION:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    .line 49594
    new-instance v2, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    const-string v3, "WITH_RESOURCES_ALTERNATE_DATA"

    const/4 v4, 0x6

    const-string v5, "withResourcesAlternateData"

    invoke-direct {v2, v3, v10, v4, v5}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v2, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->WITH_RESOURCES_ALTERNATE_DATA:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    .line 49588
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    const/4 v3, 0x0

    sget-object v4, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->AUTHENTICATION_TOKEN:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    aput-object v4, v2, v3

    sget-object v3, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->NOTE_GUID:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    aput-object v3, v2, v6

    sget-object v3, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->UPDATE_SEQUENCE_NUM:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    aput-object v3, v2, v7

    sget-object v3, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->WITH_RESOURCES_DATA:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    aput-object v3, v2, v8

    sget-object v3, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->WITH_RESOURCES_RECOGNITION:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    aput-object v3, v2, v9

    sget-object v3, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->WITH_RESOURCES_ALTERNATE_DATA:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    aput-object v3, v2, v10

    sput-object v2, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->$VALUES:[Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    .line 49596
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->byName:Ljava/util/Map;

    .line 49599
    const-class v2, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    .line 49600
    .local v0, field:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;
    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->byName:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49602
    .end local v0           #field:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "thriftId"
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49646
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49647
    iput-short p3, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->_thriftId:S

    .line 49648
    iput-object p4, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->_fieldName:Ljava/lang/String;

    .line 49649
    return-void
.end method

.method public static findByName(Ljava/lang/String;)Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;
    .locals 1
    .parameter "name"

    .prologue
    .line 49640
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->byName:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    return-object v0
.end method

.method public static findByThriftId(I)Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;
    .locals 1
    .parameter "fieldId"

    .prologue
    .line 49608
    packed-switch p0, :pswitch_data_0

    .line 49622
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 49610
    :pswitch_0
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->AUTHENTICATION_TOKEN:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    goto :goto_0

    .line 49612
    :pswitch_1
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->NOTE_GUID:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    goto :goto_0

    .line 49614
    :pswitch_2
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->UPDATE_SEQUENCE_NUM:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    goto :goto_0

    .line 49616
    :pswitch_3
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->WITH_RESOURCES_DATA:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    goto :goto_0

    .line 49618
    :pswitch_4
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->WITH_RESOURCES_RECOGNITION:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    goto :goto_0

    .line 49620
    :pswitch_5
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->WITH_RESOURCES_ALTERNATE_DATA:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    goto :goto_0

    .line 49608
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static findByThriftIdOrThrow(I)Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;
    .locals 4
    .parameter "fieldId"

    .prologue
    .line 49631
    invoke-static {p0}, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->findByThriftId(I)Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    move-result-object v0

    .line 49632
    .local v0, fields:Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t exist!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49633
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;
    .locals 1
    .parameter "name"

    .prologue
    .line 49588
    const-class v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    return-object v0
.end method

.method public static values()[Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;
    .locals 1

    .prologue
    .line 49588
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->$VALUES:[Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    invoke-virtual {v0}, [Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49656
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->_fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getThriftFieldId()S
    .locals 1

    .prologue
    .line 49652
    iget-short v0, p0, Lcom/evernote/edam/notestore/NoteStore$getNoteVersion_args$_Fields;->_thriftId:S

    return v0
.end method
