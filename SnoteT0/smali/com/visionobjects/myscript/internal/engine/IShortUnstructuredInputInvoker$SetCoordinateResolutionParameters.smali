.class final Lcom/visionobjects/myscript/internal/engine/IShortUnstructuredInputInvoker$SetCoordinateResolutionParameters;
.super Lcom/visionobjects/myscript/internal/engine/ParameterList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visionobjects/myscript/internal/engine/IShortUnstructuredInputInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetCoordinateResolutionParameters"
.end annotation


# instance fields
.field final engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

.field final resolution:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int16;

.field final target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/visionobjects/myscript/internal/engine/ParameterList;-><init>()V

    new-instance v0, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-direct {v0, p0}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;-><init>(Lcom/visionobjects/myscript/internal/engine/ParameterList;)V

    iput-object v0, p0, Lcom/visionobjects/myscript/internal/engine/IShortUnstructuredInputInvoker$SetCoordinateResolutionParameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    new-instance v0, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-direct {v0, p0}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;-><init>(Lcom/visionobjects/myscript/internal/engine/ParameterList;)V

    iput-object v0, p0, Lcom/visionobjects/myscript/internal/engine/IShortUnstructuredInputInvoker$SetCoordinateResolutionParameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    new-instance v0, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int16;

    invoke-direct {v0, p0}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int16;-><init>(Lcom/visionobjects/myscript/internal/engine/ParameterList;)V

    iput-object v0, p0, Lcom/visionobjects/myscript/internal/engine/IShortUnstructuredInputInvoker$SetCoordinateResolutionParameters;->resolution:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int16;

    return-void
.end method
