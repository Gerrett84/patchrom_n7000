.class public final Lcom/visionobjects/myscript/internal/engine/VO_ENGINEOBJECT_TPROP;
.super Lcom/visionobjects/myscript/internal/engine/TypeSafeEnum;


# static fields
.field public static final VO_USER_OBJ_COUNT:Lcom/visionobjects/myscript/internal/engine/VO_ENGINEOBJECT_TPROP; = null

.field public static final VO_USER_OBJ_LIMIT:Lcom/visionobjects/myscript/internal/engine/VO_ENGINEOBJECT_TPROP; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/visionobjects/myscript/internal/engine/VO_ENGINEOBJECT_TPROP;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/visionobjects/myscript/internal/engine/VO_ENGINEOBJECT_TPROP;-><init>(I)V

    sput-object v0, Lcom/visionobjects/myscript/internal/engine/VO_ENGINEOBJECT_TPROP;->VO_USER_OBJ_LIMIT:Lcom/visionobjects/myscript/internal/engine/VO_ENGINEOBJECT_TPROP;

    new-instance v0, Lcom/visionobjects/myscript/internal/engine/VO_ENGINEOBJECT_TPROP;

    invoke-direct {v0}, Lcom/visionobjects/myscript/internal/engine/VO_ENGINEOBJECT_TPROP;-><init>()V

    sput-object v0, Lcom/visionobjects/myscript/internal/engine/VO_ENGINEOBJECT_TPROP;->VO_USER_OBJ_COUNT:Lcom/visionobjects/myscript/internal/engine/VO_ENGINEOBJECT_TPROP;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/visionobjects/myscript/internal/engine/TypeSafeEnum;-><init>()V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/visionobjects/myscript/internal/engine/TypeSafeEnum;-><init>(I)V

    return-void
.end method
