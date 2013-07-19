.class public final Lcom/visionobjects/myscript/hwr/Archive;
.super Lcom/visionobjects/myscript/hwr/Resource;

# interfaces
.implements Lcom/visionobjects/myscript/engine/IAttachTarget;


# static fields
.field private static final iAttachTargetInvoker:Lcom/visionobjects/myscript/internal/engine/IAttachTargetInvoker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/visionobjects/myscript/internal/engine/IAttachTargetInvoker;

    invoke-direct {v0}, Lcom/visionobjects/myscript/internal/engine/IAttachTargetInvoker;-><init>()V

    sput-object v0, Lcom/visionobjects/myscript/hwr/Archive;->iAttachTargetInvoker:Lcom/visionobjects/myscript/internal/engine/IAttachTargetInvoker;

    return-void
.end method

.method constructor <init>(Lcom/visionobjects/myscript/engine/Engine;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/visionobjects/myscript/hwr/Resource;-><init>(Lcom/visionobjects/myscript/engine/Engine;J)V

    return-void
.end method

.method public static final create(Lcom/visionobjects/myscript/engine/Engine;)Lcom/visionobjects/myscript/hwr/Archive;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalStateException;,
            Lcom/visionobjects/myscript/engine/LimitExceededException;,
            Lcom/visionobjects/myscript/engine/OutOfMemoryException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid parent engine: null is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/visionobjects/myscript/hwr/Archive;

    invoke-virtual {p0}, Lcom/visionobjects/myscript/engine/Engine;->getNativeReference()J

    move-result-wide v1

    sget-object v3, Lcom/visionobjects/myscript/internal/hwr/VO_HWR_T;->VO_Archive:Lcom/visionobjects/myscript/internal/hwr/VO_HWR_T;

    invoke-virtual {v3}, Lcom/visionobjects/myscript/internal/hwr/VO_HWR_T;->getValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/visionobjects/myscript/internal/engine/Library;->createObject(JI)J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lcom/visionobjects/myscript/hwr/Archive;-><init>(Lcom/visionobjects/myscript/engine/Engine;J)V

    return-object v0
.end method


# virtual methods
.method public final attach(Lcom/visionobjects/myscript/engine/EngineObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/visionobjects/myscript/engine/InvalidObjectException;,
            Lcom/visionobjects/myscript/engine/UnsupportedSerializationException;,
            Lcom/visionobjects/myscript/engine/ModificationAccessDeniedException;
        }
    .end annotation

    sget-object v0, Lcom/visionobjects/myscript/hwr/Archive;->iAttachTargetInvoker:Lcom/visionobjects/myscript/internal/engine/IAttachTargetInvoker;

    invoke-virtual {v0, p0, p1}, Lcom/visionobjects/myscript/internal/engine/IAttachTargetInvoker;->attach(Lcom/visionobjects/myscript/engine/EngineObject;Lcom/visionobjects/myscript/engine/EngineObject;)V

    return-void
.end method

.method public final detach(Lcom/visionobjects/myscript/engine/EngineObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/NullPointerException;,
            Lcom/visionobjects/myscript/engine/InvalidObjectException;,
            Lcom/visionobjects/myscript/engine/ModificationAccessDeniedException;
        }
    .end annotation

    sget-object v0, Lcom/visionobjects/myscript/hwr/Archive;->iAttachTargetInvoker:Lcom/visionobjects/myscript/internal/engine/IAttachTargetInvoker;

    invoke-virtual {v0, p0, p1}, Lcom/visionobjects/myscript/internal/engine/IAttachTargetInvoker;->detach(Lcom/visionobjects/myscript/engine/EngineObject;Lcom/visionobjects/myscript/engine/EngineObject;)V

    return-void
.end method

.method public final getAttachedAt(I)Lcom/visionobjects/myscript/engine/EngineObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IndexOutOfBoundsException;,
            Lcom/visionobjects/myscript/engine/LimitExceededException;
        }
    .end annotation

    sget-object v0, Lcom/visionobjects/myscript/hwr/Archive;->iAttachTargetInvoker:Lcom/visionobjects/myscript/internal/engine/IAttachTargetInvoker;

    invoke-virtual {v0, p0, p1}, Lcom/visionobjects/myscript/internal/engine/IAttachTargetInvoker;->getAttachedAt(Lcom/visionobjects/myscript/engine/EngineObject;I)Lcom/visionobjects/myscript/engine/EngineObject;

    move-result-object v0

    return-object v0
.end method

.method public final getAttachedCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/visionobjects/myscript/hwr/Archive;->iAttachTargetInvoker:Lcom/visionobjects/myscript/internal/engine/IAttachTargetInvoker;

    invoke-virtual {v0, p0}, Lcom/visionobjects/myscript/internal/engine/IAttachTargetInvoker;->getAttachedCount(Lcom/visionobjects/myscript/engine/EngineObject;)I

    move-result v0

    return v0
.end method
