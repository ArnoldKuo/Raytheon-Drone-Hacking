.class Lcom/parrot/freeflight/core/academy/AcademyManager$4$4;
.super Ljava/lang/Object;
.source "AcademyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager$4;->youtubeManagerUploadFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/core/academy/AcademyManager$4;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/core/academy/AcademyManager$4;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4$4;->this$1:Lcom/parrot/freeflight/core/academy/AcademyManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4$4;->this$1:Lcom/parrot/freeflight/core/academy/AcademyManager$4;

    iget-object v1, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$4;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4$4;->this$1:Lcom/parrot/freeflight/core/academy/AcademyManager$4;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$4;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$600(Lcom/parrot/freeflight/core/academy/AcademyManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1600(Lcom/parrot/freeflight/core/academy/AcademyManager;I)V

    .line 340
    return-void

    .line 339
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
