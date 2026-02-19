.class public Lcn/hutool/core/io/AppendableWriter;
.super Ljava/io/Writer;
.source "AppendableWriter.java"

# interfaces
.implements Ljava/lang/Appendable;


# instance fields
.field private final appendable:Ljava/lang/Appendable;

.field private closed:Z

.field private final flushable:Z


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 23
    iput-object p1, p0, Lcn/hutool/core/io/AppendableWriter;->appendable:Ljava/lang/Appendable;

    .line 24
    instance-of p1, p1, Ljava/io/Flushable;

    iput-boolean p1, p0, Lcn/hutool/core/io/AppendableWriter;->flushable:Z

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcn/hutool/core/io/AppendableWriter;->closed:Z

    return-void
.end method

.method private checkNotClosed()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-boolean v0, p0, Lcn/hutool/core/io/AppendableWriter;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Writer is closed!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcn/hutool/core/io/AppendableWriter;->checkNotClosed()V

    .line 43
    iget-object v0, p0, Lcn/hutool/core/io/AppendableWriter;->appendable:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lcn/hutool/core/io/AppendableWriter;->checkNotClosed()V

    .line 57
    iget-object v0, p0, Lcn/hutool/core/io/AppendableWriter;->appendable:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lcn/hutool/core/io/AppendableWriter;->checkNotClosed()V

    .line 50
    iget-object v0, p0, Lcn/hutool/core/io/AppendableWriter;->appendable:Ljava/lang/Appendable;

    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1}, Lcn/hutool/core/io/AppendableWriter;->append(C)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1}, Lcn/hutool/core/io/AppendableWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcn/hutool/core/io/AppendableWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-boolean v0, p0, Lcn/hutool/core/io/AppendableWriter;->closed:Z

    if-nez v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcn/hutool/core/io/AppendableWriter;->flush()V

    .line 100
    iget-object v0, p0, Lcn/hutool/core/io/AppendableWriter;->appendable:Ljava/lang/Appendable;

    instance-of v1, v0, Ljava/io/Closeable;

    if-eqz v1, :cond_0

    .line 101
    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :cond_0
    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcn/hutool/core/io/AppendableWriter;->closed:Z

    :cond_1
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcn/hutool/core/io/AppendableWriter;->checkNotClosed()V

    .line 80
    iget-boolean v0, p0, Lcn/hutool/core/io/AppendableWriter;->flushable:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcn/hutool/core/io/AppendableWriter;->appendable:Ljava/lang/Appendable;

    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lcn/hutool/core/io/AppendableWriter;->checkNotClosed()V

    .line 37
    iget-object v0, p0, Lcn/hutool/core/io/AppendableWriter;->appendable:Ljava/lang/Appendable;

    int-to-char p1, p1

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcn/hutool/core/io/AppendableWriter;->appendable:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcn/hutool/core/io/AppendableWriter;->checkNotClosed()V

    .line 64
    iget-object v0, p0, Lcn/hutool/core/io/AppendableWriter;->appendable:Ljava/lang/Appendable;

    add-int/2addr p3, p2

    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-void
.end method

.method public write([C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcn/hutool/core/io/AppendableWriter;->appendable:Ljava/lang/Appendable;

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public write([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lcn/hutool/core/io/AppendableWriter;->checkNotClosed()V

    .line 31
    iget-object v0, p0, Lcn/hutool/core/io/AppendableWriter;->appendable:Ljava/lang/Appendable;

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p1

    add-int/2addr p3, p2

    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-void
.end method
