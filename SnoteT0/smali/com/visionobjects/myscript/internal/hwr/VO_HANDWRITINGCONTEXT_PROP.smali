.class public final Lcom/visionobjects/myscript/internal/hwr/VO_HANDWRITINGCONTEXT_PROP;
.super Lcom/visionobjects/myscript/internal/engine/TypeSafeEnum;


# static fields
.field public static final VO_SPEED_QUALITY_COMPROMISE:Lcom/visionobjects/myscript/internal/hwr/VO_HANDWRITINGCONTEXT_PROP; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/visionobjects/myscript/internal/hwr/VO_HANDWRITINGCONTEXT_PROP;

    sget-object v1, Lcom/visionobjects/myscript/internal/hwr/VO_HWR_T;->VO_HandwritingContext:Lcom/visionobjects/myscript/internal/hwr/VO_HWR_T;

    invoke-virtual {v1}, Lcom/visionobjects/myscript/internal/hwr/VO_HWR_T;->getValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Lcom/visionobjects/myscript/internal/hwr/VO_HANDWRITINGCONTEXT_PROP;-><init>(I)V

    sput-object v0, Lcom/visionobjects/myscript/internal/hwr/VO_HANDWRITINGCONTEXT_PROP;->VO_SPEED_QUALITY_COMPROMISE:Lcom/visionobjects/myscript/internal/hwr/VO_HANDWRITINGCONTEXT_PROP;

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
