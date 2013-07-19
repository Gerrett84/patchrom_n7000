.class public Lcom/visionobjects/myscript/equation/EquationNonTerminalNode;
.super Lcom/visionobjects/myscript/equation/EquationNode;


# static fields
.field private static final iEquationNonTerminalNodeInvoker:Lcom/visionobjects/myscript/internal/equation/IEquationNonTerminalNodeInvoker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/visionobjects/myscript/internal/equation/IEquationNonTerminalNodeInvoker;

    invoke-direct {v0}, Lcom/visionobjects/myscript/internal/equation/IEquationNonTerminalNodeInvoker;-><init>()V

    sput-object v0, Lcom/visionobjects/myscript/equation/EquationNonTerminalNode;->iEquationNonTerminalNodeInvoker:Lcom/visionobjects/myscript/internal/equation/IEquationNonTerminalNodeInvoker;

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

    invoke-direct {p0, p1, p2, p3}, Lcom/visionobjects/myscript/equation/EquationNode;-><init>(Lcom/visionobjects/myscript/engine/Engine;J)V

    return-void
.end method


# virtual methods
.method public final getCandidateAt(I)Lcom/visionobjects/myscript/equation/EquationNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IndexOutOfBoundsException;,
            Lcom/visionobjects/myscript/engine/LimitExceededException;
        }
    .end annotation

    sget-object v0, Lcom/visionobjects/myscript/equation/EquationNonTerminalNode;->iEquationNonTerminalNodeInvoker:Lcom/visionobjects/myscript/internal/equation/IEquationNonTerminalNodeInvoker;

    invoke-virtual {v0, p0, p1}, Lcom/visionobjects/myscript/internal/equation/IEquationNonTerminalNodeInvoker;->getCandidateAt(Lcom/visionobjects/myscript/engine/EngineObject;I)Lcom/visionobjects/myscript/equation/EquationNode;

    move-result-object v0

    return-object v0
.end method

.method public final getCandidateCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/visionobjects/myscript/equation/EquationNonTerminalNode;->iEquationNonTerminalNodeInvoker:Lcom/visionobjects/myscript/internal/equation/IEquationNonTerminalNodeInvoker;

    invoke-virtual {v0, p0}, Lcom/visionobjects/myscript/internal/equation/IEquationNonTerminalNodeInvoker;->getCandidateCount(Lcom/visionobjects/myscript/engine/EngineObject;)I

    move-result v0

    return v0
.end method

.method public final getInkRangeAt(I)Lcom/visionobjects/myscript/equation/EquationInkRange;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    sget-object v0, Lcom/visionobjects/myscript/equation/EquationNonTerminalNode;->iEquationNonTerminalNodeInvoker:Lcom/visionobjects/myscript/internal/equation/IEquationNonTerminalNodeInvoker;

    invoke-virtual {v0, p0, p1}, Lcom/visionobjects/myscript/internal/equation/IEquationNonTerminalNodeInvoker;->getInkRangeAt(Lcom/visionobjects/myscript/engine/EngineObject;I)Lcom/visionobjects/myscript/internal/equation/voEquationInkRange;

    move-result-object v0

    new-instance v1, Lcom/visionobjects/myscript/equation/EquationInkRange;

    iget-object v2, v0, Lcom/visionobjects/myscript/internal/equation/voEquationInkRange;->component:Lcom/visionobjects/myscript/internal/engine/Structure$Int32;

    invoke-virtual {v2}, Lcom/visionobjects/myscript/internal/engine/Structure$Int32;->get()I

    move-result v2

    iget-object v3, v0, Lcom/visionobjects/myscript/internal/equation/voEquationInkRange;->firstItem:Lcom/visionobjects/myscript/internal/engine/Structure$Float32;

    invoke-virtual {v3}, Lcom/visionobjects/myscript/internal/engine/Structure$Float32;->get()F

    move-result v3

    iget-object v0, v0, Lcom/visionobjects/myscript/internal/equation/voEquationInkRange;->lastItem:Lcom/visionobjects/myscript/internal/engine/Structure$Float32;

    invoke-virtual {v0}, Lcom/visionobjects/myscript/internal/engine/Structure$Float32;->get()F

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/visionobjects/myscript/equation/EquationInkRange;-><init>(IFF)V

    return-object v1
.end method

.method public final getInkRangeCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/visionobjects/myscript/equation/EquationNonTerminalNode;->iEquationNonTerminalNodeInvoker:Lcom/visionobjects/myscript/internal/equation/IEquationNonTerminalNodeInvoker;

    invoke-virtual {v0, p0}, Lcom/visionobjects/myscript/internal/equation/IEquationNonTerminalNodeInvoker;->getInkRangeCount(Lcom/visionobjects/myscript/engine/EngineObject;)I

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/visionobjects/myscript/equation/EquationNonTerminalNode;->iEquationNonTerminalNodeInvoker:Lcom/visionobjects/myscript/internal/equation/IEquationNonTerminalNodeInvoker;

    invoke-virtual {v0, p0}, Lcom/visionobjects/myscript/internal/equation/IEquationNonTerminalNodeInvoker;->getName(Lcom/visionobjects/myscript/engine/EngineObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getName(Lcom/visionobjects/myscript/engine/Charset;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalStateException;,
            Lcom/visionobjects/myscript/engine/InvalidObjectException;
        }
    .end annotation

    sget-object v0, Lcom/visionobjects/myscript/equation/EquationNonTerminalNode;->iEquationNonTerminalNodeInvoker:Lcom/visionobjects/myscript/internal/equation/IEquationNonTerminalNodeInvoker;

    invoke-virtual {v0, p0, p1}, Lcom/visionobjects/myscript/internal/equation/IEquationNonTerminalNodeInvoker;->getName(Lcom/visionobjects/myscript/engine/EngineObject;Lcom/visionobjects/myscript/engine/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedCandidateIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/visionobjects/myscript/equation/EquationNonTerminalNode;->iEquationNonTerminalNodeInvoker:Lcom/visionobjects/myscript/internal/equation/IEquationNonTerminalNodeInvoker;

    invoke-virtual {v0, p0}, Lcom/visionobjects/myscript/internal/equation/IEquationNonTerminalNodeInvoker;->getSelectedCandidateIndex(Lcom/visionobjects/myscript/engine/EngineObject;)I

    move-result v0

    return v0
.end method
