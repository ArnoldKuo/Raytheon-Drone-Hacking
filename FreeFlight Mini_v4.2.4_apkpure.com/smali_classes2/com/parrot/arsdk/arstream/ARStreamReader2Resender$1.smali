.class Lcom/parrot/arsdk/arstream/ARStreamReader2Resender$1;
.super Ljava/lang/Object;
.source "ARStreamReader2Resender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;-><init>(Lcom/parrot/arsdk/arstream/ARStreamReader2;Ljava/lang/String;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender$1;->this$0:Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 87
    invoke-static {}, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "streamThread running"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender$1;->this$0:Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;

    iget-object v1, p0, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender$1;->this$0:Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;

    invoke-static {v1}, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->access$100(Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->access$200(Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;J)V

    .line 89
    invoke-static {}, Lcom/parrot/arsdk/arstream/ARStreamReader2Resender;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "streamThread terminated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method
