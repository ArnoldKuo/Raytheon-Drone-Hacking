.class Lcom/google/gdata/util/httputil/FormUrlDecoder$ValueAction;
.super Ljava/lang/Object;
.source "FormUrlDecoder.java"

# interfaces
.implements Lcom/google/gdata/util/parser/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/httputil/FormUrlDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gdata/util/parser/Callback",
        "<",
        "Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/util/httputil/FormUrlDecoder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/util/httputil/FormUrlDecoder$1;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/google/gdata/util/httputil/FormUrlDecoder$ValueAction;-><init>()V

    return-void
.end method


# virtual methods
.method public handle([CIILcom/google/gdata/util/httputil/FormUrlDecoder$Result;)V
    .locals 2
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "result"    # Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;

    .prologue
    .line 199
    iget-object v1, p4, Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;->params:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/httputil/FormUrlDecoder$Parameter;

    .line 200
    .local v0, "param":Lcom/google/gdata/util/httputil/FormUrlDecoder$Parameter;
    iget-object v1, p4, Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;->encoding:Ljava/lang/String;

    invoke-static {p1, p2, p3, v1}, Lcom/google/gdata/util/httputil/FormUrlDecoder;->access$100([CIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/util/httputil/FormUrlDecoder$Parameter;->value:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public bridge synthetic handle([CIILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [C
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 196
    check-cast p4, Lcom/google/gdata/util/httputil/FormUrlDecoder$Result;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/gdata/util/httputil/FormUrlDecoder$ValueAction;->handle([CIILcom/google/gdata/util/httputil/FormUrlDecoder$Result;)V

    return-void
.end method
