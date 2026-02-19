.class public Lcn/hutool/extra/validation/ValidationUtil;
.super Ljava/lang/Object;
.source "ValidationUtil.java"


# static fields
.field private static final validator:Ljakarta/validation/Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    invoke-static {}, Ljakarta/validation/Validation;->buildDefaultValidatorFactory()Ljakarta/validation/ValidatorFactory;

    move-result-object v0

    .line 30
    :try_start_0
    invoke-interface {v0}, Ljakarta/validation/ValidatorFactory;->getValidator()Ljakarta/validation/Validator;

    move-result-object v1

    sput-object v1, Lcn/hutool/extra/validation/ValidationUtil;->validator:Ljakarta/validation/Validator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0}, Ljakarta/validation/ValidatorFactory;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 29
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 31
    :try_start_2
    invoke-interface {v0}, Ljakarta/validation/ValidatorFactory;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValidator()Ljakarta/validation/Validator;
    .locals 1

    .line 40
    sget-object v0, Lcn/hutool/extra/validation/ValidationUtil;->validator:Ljakarta/validation/Validator;

    return-object v0
.end method

.method public static varargs validate(Ljava/lang/Object;[Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljakarta/validation/ConstraintViolation<",
            "TT;>;>;"
        }
    .end annotation

    .line 52
    sget-object v0, Lcn/hutool/extra/validation/ValidationUtil;->validator:Ljakarta/validation/Validator;

    invoke-interface {v0, p0, p1}, Ljakarta/validation/Validator;->validate(Ljava/lang/Object;[Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static varargs validateProperty(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljakarta/validation/ConstraintViolation<",
            "TT;>;>;"
        }
    .end annotation

    .line 65
    sget-object v0, Lcn/hutool/extra/validation/ValidationUtil;->validator:Ljakarta/validation/Validator;

    invoke-interface {v0, p0, p1, p2}, Ljakarta/validation/Validator;->validateProperty(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static warpBeanValidationResult(Ljava/util/Set;)Lcn/hutool/extra/validation/BeanValidationResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "Ljakarta/validation/ConstraintViolation<",
            "TT;>;>;)",
            "Lcn/hutool/extra/validation/BeanValidationResult;"
        }
    .end annotation

    .line 100
    new-instance v0, Lcn/hutool/extra/validation/BeanValidationResult;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    invoke-direct {v0, v1}, Lcn/hutool/extra/validation/BeanValidationResult;-><init>(Z)V

    .line 101
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljakarta/validation/ConstraintViolation;

    .line 102
    new-instance v2, Lcn/hutool/extra/validation/BeanValidationResult$ErrorMessage;

    invoke-direct {v2}, Lcn/hutool/extra/validation/BeanValidationResult$ErrorMessage;-><init>()V

    .line 103
    invoke-interface {v1}, Ljakarta/validation/ConstraintViolation;->getPropertyPath()Ljakarta/validation/Path;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/hutool/extra/validation/BeanValidationResult$ErrorMessage;->setPropertyName(Ljava/lang/String;)V

    .line 104
    invoke-interface {v1}, Ljakarta/validation/ConstraintViolation;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/hutool/extra/validation/BeanValidationResult$ErrorMessage;->setMessage(Ljava/lang/String;)V

    .line 105
    invoke-interface {v1}, Ljakarta/validation/ConstraintViolation;->getInvalidValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/hutool/extra/validation/BeanValidationResult$ErrorMessage;->setValue(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v0, v2}, Lcn/hutool/extra/validation/BeanValidationResult;->addErrorMessage(Lcn/hutool/extra/validation/BeanValidationResult$ErrorMessage;)Lcn/hutool/extra/validation/BeanValidationResult;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static varargs warpValidate(Ljava/lang/Object;[Ljava/lang/Class;)Lcn/hutool/extra/validation/BeanValidationResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcn/hutool/extra/validation/BeanValidationResult;"
        }
    .end annotation

    .line 77
    invoke-static {p0, p1}, Lcn/hutool/extra/validation/ValidationUtil;->validate(Ljava/lang/Object;[Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/extra/validation/ValidationUtil;->warpBeanValidationResult(Ljava/util/Set;)Lcn/hutool/extra/validation/BeanValidationResult;

    move-result-object p0

    return-object p0
.end method

.method public static varargs warpValidateProperty(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Lcn/hutool/extra/validation/BeanValidationResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcn/hutool/extra/validation/BeanValidationResult;"
        }
    .end annotation

    .line 90
    invoke-static {p0, p1, p2}, Lcn/hutool/extra/validation/ValidationUtil;->validateProperty(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/extra/validation/ValidationUtil;->warpBeanValidationResult(Ljava/util/Set;)Lcn/hutool/extra/validation/BeanValidationResult;

    move-result-object p0

    return-object p0
.end method
