.class public Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;
.super Ljava/lang/Object;
.source "NoteStore.java"

# interfaces
.implements Lorg/apache/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/edam/notestore/NoteStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "findNotesMetadata_result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;",
        "Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final NOT_FOUND_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final SUCCESS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final SYSTEM_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final USER_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field public static final metaDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;",
            "Lorg/apache/thrift/meta_data/FieldMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

.field private success:Lcom/evernote/edam/notestore/NotesMetadataList;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0xc

    .line 32007
    new-instance v1, Lorg/apache/thrift/protocol/TStruct;

    const-string v2, "findNotesMetadata_result"

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 32009
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "success"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v6, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->SUCCESS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 32010
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "userException"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v6, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->USER_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 32011
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "systemException"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v6, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 32012
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "notFoundException"

    invoke-direct {v1, v2, v6, v7}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 32090
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 32091
    .local v0, tmpMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;Lorg/apache/thrift/meta_data/FieldMetaData;>;"
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;->SUCCESS:Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "success"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/evernote/edam/notestore/NotesMetadataList;

    invoke-direct {v4, v6, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32093
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;->USER_EXCEPTION:Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "userException"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32095
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;->SYSTEM_EXCEPTION:Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "systemException"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32097
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;->NOT_FOUND_EXCEPTION:Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "notFoundException"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32099
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->metaDataMap:Ljava/util/Map;

    .line 32100
    const-class v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;

    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->metaDataMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lorg/apache/thrift/meta_data/FieldMetaData;->addStructMetaDataMap(Ljava/lang/Class;Ljava/util/Map;)V

    .line 32101
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32104
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 32122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32123
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32124
    new-instance v0, Lcom/evernote/edam/notestore/NotesMetadataList;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    invoke-direct {v0, v1}, Lcom/evernote/edam/notestore/NotesMetadataList;-><init>(Lcom/evernote/edam/notestore/NotesMetadataList;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    .line 32126
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32127
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 32129
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32130
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 32132
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32133
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 32135
    :cond_3
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NotesMetadataList;Lcom/evernote/edam/error/EDAMUserException;Lcom/evernote/edam/error/EDAMSystemException;Lcom/evernote/edam/error/EDAMNotFoundException;)V
    .locals 0
    .parameter "success"
    .parameter "userException"
    .parameter "systemException"
    .parameter "notFoundException"

    .prologue
    .line 32112
    invoke-direct {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;-><init>()V

    .line 32113
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    .line 32114
    iput-object p2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 32115
    iput-object p3, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 32116
    iput-object p4, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 32117
    return-void
.end method

.method static synthetic access$9000(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Lcom/evernote/edam/notestore/NotesMetadataList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32006
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    return-object v0
.end method

.method static synthetic access$9002(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;Lcom/evernote/edam/notestore/NotesMetadataList;)Lcom/evernote/edam/notestore/NotesMetadataList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32006
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    return-object p1
.end method

.method static synthetic access$9100(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32006
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$9102(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;Lcom/evernote/edam/error/EDAMUserException;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32006
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object p1
.end method

.method static synthetic access$9200(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32006
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method static synthetic access$9202(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;Lcom/evernote/edam/error/EDAMSystemException;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32006
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object p1
.end method

.method static synthetic access$9300(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32006
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method

.method static synthetic access$9302(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;Lcom/evernote/edam/error/EDAMNotFoundException;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32006
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32142
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    .line 32143
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 32144
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 32145
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 32146
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)I
    .locals 4
    .parameter "other"

    .prologue
    .line 32370
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 32371
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 32413
    :cond_0
    :goto_0
    return v0

    .line 32374
    :cond_1
    const/4 v0, 0x0

    .line 32375
    .local v0, lastComparison:I
    move-object v1, p1

    .line 32377
    .local v1, typedOther:Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 32378
    if-nez v0, :cond_0

    .line 32381
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 32382
    if-nez v0, :cond_0

    .line 32386
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 32387
    if-nez v0, :cond_0

    .line 32390
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 32391
    if-nez v0, :cond_0

    .line 32395
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 32396
    if-nez v0, :cond_0

    .line 32399
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 32400
    if-nez v0, :cond_0

    .line 32404
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 32405
    if-nez v0, :cond_0

    .line 32408
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 32409
    if-nez v0, :cond_0

    .line 32413
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32006
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;
    .locals 1

    .prologue
    .line 32138
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/apache/thrift/TBase;
    .locals 1

    .prologue
    .line 32006
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Z
    .locals 11
    .parameter "that"

    .prologue
    const/4 v8, 0x0

    .line 32323
    if-nez p1, :cond_1

    .line 32362
    :cond_0
    :goto_0
    return v8

    .line 32326
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSuccess()Z

    move-result v5

    .line 32327
    .local v5, this_present_success:Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSuccess()Z

    move-result v1

    .line 32328
    .local v1, that_present_success:Z
    if-nez v5, :cond_2

    if-eqz v1, :cond_3

    .line 32329
    :cond_2
    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 32331
    iget-object v9, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    iget-object v10, p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    invoke-virtual {v9, v10}, Lcom/evernote/edam/notestore/NotesMetadataList;->equals(Lcom/evernote/edam/notestore/NotesMetadataList;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 32335
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetUserException()Z

    move-result v7

    .line 32336
    .local v7, this_present_userException:Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetUserException()Z

    move-result v3

    .line 32337
    .local v3, that_present_userException:Z
    if-nez v7, :cond_4

    if-eqz v3, :cond_5

    .line 32338
    :cond_4
    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    .line 32340
    iget-object v9, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v10, p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v9, v10}, Lcom/evernote/edam/error/EDAMUserException;->equals(Lcom/evernote/edam/error/EDAMUserException;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 32344
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSystemException()Z

    move-result v6

    .line 32345
    .local v6, this_present_systemException:Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSystemException()Z

    move-result v2

    .line 32346
    .local v2, that_present_systemException:Z
    if-nez v6, :cond_6

    if-eqz v2, :cond_7

    .line 32347
    :cond_6
    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 32349
    iget-object v9, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v10, p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v9, v10}, Lcom/evernote/edam/error/EDAMSystemException;->equals(Lcom/evernote/edam/error/EDAMSystemException;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 32353
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetNotFoundException()Z

    move-result v4

    .line 32354
    .local v4, this_present_notFoundException:Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetNotFoundException()Z

    move-result v0

    .line 32355
    .local v0, that_present_notFoundException:Z
    if-nez v4, :cond_8

    if-eqz v0, :cond_9

    .line 32356
    :cond_8
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 32358
    iget-object v9, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v10, p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v9, v10}, Lcom/evernote/edam/error/EDAMNotFoundException;->equals(Lcom/evernote/edam/error/EDAMNotFoundException;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 32362
    :cond_9
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "that"

    .prologue
    const/4 v0, 0x0

    .line 32315
    if-nez p1, :cond_1

    .line 32319
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 32317
    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;

    if-eqz v1, :cond_0

    .line 32318
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->equals(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;)Z

    move-result v0

    goto :goto_0
.end method

.method public fieldForId(I)Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;
    .locals 1
    .parameter "fieldId"

    .prologue
    .line 32417
    invoke-static {p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;->findByThriftId(I)Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fieldForId(I)Lorg/apache/thrift/TFieldIdEnum;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32006
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->fieldForId(I)Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;

    move-result-object v0

    return-object v0
.end method

.method public getFieldValue(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;)Ljava/lang/Object;
    .locals 2
    .parameter "field"

    .prologue
    .line 32278
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$findNotesMetadata_result$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 32292
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 32280
    :pswitch_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->getSuccess()Lcom/evernote/edam/notestore/NotesMetadataList;

    move-result-object v0

    .line 32289
    :goto_0
    return-object v0

    .line 32283
    :pswitch_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->getUserException()Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v0

    goto :goto_0

    .line 32286
    :pswitch_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->getSystemException()Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v0

    goto :goto_0

    .line 32289
    :pswitch_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->getNotFoundException()Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v0

    goto :goto_0

    .line 32278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic getFieldValue(Lorg/apache/thrift/TFieldIdEnum;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32006
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->getFieldValue(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNotFoundException()Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1

    .prologue
    .line 32218
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method

.method public getSuccess()Lcom/evernote/edam/notestore/NotesMetadataList;
    .locals 1

    .prologue
    .line 32149
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    return-object v0
.end method

.method public getSystemException()Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1

    .prologue
    .line 32195
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method public getUserException()Lcom/evernote/edam/error/EDAMUserException;
    .locals 1

    .prologue
    .line 32172
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 32366
    const/4 v0, 0x0

    return v0
.end method

.method public isSet(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;)Z
    .locals 2
    .parameter "field"

    .prologue
    .line 32297
    if-nez p1, :cond_0

    .line 32298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 32301
    :cond_0
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$findNotesMetadata_result$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 32311
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 32303
    :pswitch_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSuccess()Z

    move-result v0

    .line 32309
    :goto_0
    return v0

    .line 32305
    :pswitch_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetUserException()Z

    move-result v0

    goto :goto_0

    .line 32307
    :pswitch_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSystemException()Z

    move-result v0

    goto :goto_0

    .line 32309
    :pswitch_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetNotFoundException()Z

    move-result v0

    goto :goto_0

    .line 32301
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic isSet(Lorg/apache/thrift/TFieldIdEnum;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32006
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSet(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;)Z

    move-result v0

    return v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 32231
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSuccess()Z
    .locals 1

    .prologue
    .line 32162
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSystemException()Z
    .locals 1

    .prologue
    .line 32208
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetUserException()Z
    .locals 1

    .prologue
    .line 32185
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 3
    .parameter "iprot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xc

    .line 32422
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 32425
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 32426
    .local v0, field:Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 32467
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 32468
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->validate()V

    .line 32469
    return-void

    .line 32429
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 32463
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 32465
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 32431
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 32432
    new-instance v1, Lcom/evernote/edam/notestore/NotesMetadataList;

    invoke-direct {v1}, Lcom/evernote/edam/notestore/NotesMetadataList;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    .line 32433
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/notestore/NotesMetadataList;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 32435
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 32439
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 32440
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 32441
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 32443
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 32447
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 32448
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 32449
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 32451
    :cond_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 32455
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_4

    .line 32456
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 32457
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 32459
    :cond_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 32429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setFieldValue(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;Ljava/lang/Object;)V
    .locals 2
    .parameter "field"
    .parameter "value"

    .prologue
    .line 32241
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$findNotesMetadata_result$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 32275
    .end local p2
    :goto_0
    return-void

    .line 32243
    .restart local p2
    :pswitch_0
    if-nez p2, :cond_0

    .line 32244
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->unsetSuccess()V

    goto :goto_0

    .line 32246
    :cond_0
    check-cast p2, Lcom/evernote/edam/notestore/NotesMetadataList;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->setSuccess(Lcom/evernote/edam/notestore/NotesMetadataList;)V

    goto :goto_0

    .line 32251
    .restart local p2
    :pswitch_1
    if-nez p2, :cond_1

    .line 32252
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->unsetUserException()V

    goto :goto_0

    .line 32254
    :cond_1
    check-cast p2, Lcom/evernote/edam/error/EDAMUserException;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->setUserException(Lcom/evernote/edam/error/EDAMUserException;)V

    goto :goto_0

    .line 32259
    .restart local p2
    :pswitch_2
    if-nez p2, :cond_2

    .line 32260
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->unsetSystemException()V

    goto :goto_0

    .line 32262
    :cond_2
    check-cast p2, Lcom/evernote/edam/error/EDAMSystemException;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->setSystemException(Lcom/evernote/edam/error/EDAMSystemException;)V

    goto :goto_0

    .line 32267
    .restart local p2
    :pswitch_3
    if-nez p2, :cond_3

    .line 32268
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->unsetNotFoundException()V

    goto :goto_0

    .line 32270
    :cond_3
    check-cast p2, Lcom/evernote/edam/error/EDAMNotFoundException;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->setNotFoundException(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    goto :goto_0

    .line 32241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic setFieldValue(Lorg/apache/thrift/TFieldIdEnum;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32006
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->setFieldValue(Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result$_Fields;Ljava/lang/Object;)V

    return-void
.end method

.method public setNotFoundException(Lcom/evernote/edam/error/EDAMNotFoundException;)V
    .locals 0
    .parameter "notFoundException"

    .prologue
    .line 32222
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 32223
    return-void
.end method

.method public setNotFoundExceptionIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 32235
    if-nez p1, :cond_0

    .line 32236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 32238
    :cond_0
    return-void
.end method

.method public setSuccess(Lcom/evernote/edam/notestore/NotesMetadataList;)V
    .locals 0
    .parameter "success"

    .prologue
    .line 32153
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    .line 32154
    return-void
.end method

.method public setSuccessIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 32166
    if-nez p1, :cond_0

    .line 32167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    .line 32169
    :cond_0
    return-void
.end method

.method public setSystemException(Lcom/evernote/edam/error/EDAMSystemException;)V
    .locals 0
    .parameter "systemException"

    .prologue
    .line 32199
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 32200
    return-void
.end method

.method public setSystemExceptionIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 32212
    if-nez p1, :cond_0

    .line 32213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 32215
    :cond_0
    return-void
.end method

.method public setUserException(Lcom/evernote/edam/error/EDAMUserException;)V
    .locals 0
    .parameter "userException"

    .prologue
    .line 32176
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 32177
    return-void
.end method

.method public setUserExceptionIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 32189
    if-nez p1, :cond_0

    .line 32190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 32192
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 32496
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "findNotesMetadata_result("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32497
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 32499
    .local v0, first:Z
    const-string v2, "success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32500
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    if-nez v2, :cond_3

    .line 32501
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32505
    :goto_0
    const/4 v0, 0x0

    .line 32506
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32507
    :cond_0
    const-string v2, "userException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32508
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    if-nez v2, :cond_4

    .line 32509
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32513
    :goto_1
    const/4 v0, 0x0

    .line 32514
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32515
    :cond_1
    const-string v2, "systemException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32516
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    if-nez v2, :cond_5

    .line 32517
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32521
    :goto_2
    const/4 v0, 0x0

    .line 32522
    if-nez v0, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32523
    :cond_2
    const-string v2, "notFoundException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32524
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    if-nez v2, :cond_6

    .line 32525
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32529
    :goto_3
    const/4 v0, 0x0

    .line 32530
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32531
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 32503
    :cond_3
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 32511
    :cond_4
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 32519
    :cond_5
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 32527
    :cond_6
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public unsetNotFoundException()V
    .locals 1

    .prologue
    .line 32226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 32227
    return-void
.end method

.method public unsetSuccess()V
    .locals 1

    .prologue
    .line 32157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    .line 32158
    return-void
.end method

.method public unsetSystemException()V
    .locals 1

    .prologue
    .line 32203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 32204
    return-void
.end method

.method public unsetUserException()V
    .locals 1

    .prologue
    .line 32180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 32181
    return-void
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 32536
    return-void
.end method

.method public write(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 1
    .parameter "oprot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 32472
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 32474
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32475
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->SUCCESS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 32476
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->success:Lcom/evernote/edam/notestore/NotesMetadataList;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NotesMetadataList;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 32477
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 32491
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 32492
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 32493
    return-void

    .line 32478
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32479
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->USER_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 32480
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 32481
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 32482
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32483
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 32484
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 32485
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 32486
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32487
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 32488
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$findNotesMetadata_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 32489
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
