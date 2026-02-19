.class public Lcn/hutool/db/meta/MetaUtil;
.super Ljava/lang/Object;
.source "MetaUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLimitedEntity(Ljavax/sql/DataSource;Ljava/lang/String;)Lcn/hutool/db/Entity;
    .locals 0

    .line 174
    invoke-static {p0, p1}, Lcn/hutool/db/meta/MetaUtil;->getColumnNames(Ljavax/sql/DataSource;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 175
    invoke-static {p1}, Lcn/hutool/db/Entity;->create(Ljava/lang/String;)Lcn/hutool/db/Entity;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/hutool/db/Entity;->setFieldNames([Ljava/lang/String;)Lcn/hutool/db/Entity;

    move-result-object p0

    return-object p0
.end method

.method public static getCataLog(Ljava/sql/Connection;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    invoke-static {p0}, Lcn/hutool/db/meta/MetaUtil;->getCatalog(Ljava/sql/Connection;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCatalog(Ljava/sql/Connection;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 311
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->getCatalog()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static getColumnNames(Ljava/sql/ResultSet;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/db/DbRuntimeException;
        }
    .end annotation

    .line 119
    :try_start_0
    invoke-interface {p0}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object p0

    .line 120
    invoke-interface {p0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v0

    .line 121
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 123
    invoke-interface {p0, v3}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    .line 127
    new-instance v0, Lcn/hutool/db/DbRuntimeException;

    const-string v1, "Get colunms error!"

    invoke-direct {v0, v1, p0}, Lcn/hutool/db/DbRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getColumnNames(Ljavax/sql/DataSource;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 143
    :try_start_0
    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 146
    :try_start_1
    invoke-static {p0}, Lcn/hutool/db/meta/MetaUtil;->getCatalog(Ljava/sql/Connection;)Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-static {p0}, Lcn/hutool/db/meta/MetaUtil;->getSchema(Ljava/sql/Connection;)Ljava/lang/String;

    move-result-object v5

    .line 149
    invoke-interface {p0}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v6

    .line 150
    invoke-interface {v6, v4, v5, p1, v3}, Ljava/sql/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz p1, :cond_1

    .line 152
    :goto_0
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "COLUMN_NAME"

    .line 153
    invoke-interface {p1, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 150
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz p1, :cond_0

    .line 156
    :try_start_4
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v3

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    :cond_2
    new-array p1, v2, [Ljava/lang/String;

    .line 157
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    .line 161
    invoke-static {v0}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    return-object p1

    :catchall_3
    move-exception p1

    move-object v3, p0

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v3, p0

    goto :goto_2

    :catchall_4
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 159
    :goto_2
    :try_start_6
    new-instance p0, Lcn/hutool/db/DbRuntimeException;

    const-string v0, "Get columns error!"

    invoke-direct {p0, v0, p1}, Lcn/hutool/db/DbRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :goto_3
    new-array p0, v1, [Ljava/lang/Object;

    aput-object v3, p0, v2

    .line 161
    invoke-static {p0}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    .line 162
    throw p1
.end method

.method public static getSchema(Ljava/sql/Connection;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 331
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->getSchema()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static getTableMeta(Ljavax/sql/DataSource;Ljava/lang/String;)Lcn/hutool/db/meta/Table;
    .locals 1

    const/4 v0, 0x0

    .line 191
    invoke-static {p0, v0, v0, p1}, Lcn/hutool/db/meta/MetaUtil;->getTableMeta(Ljavax/sql/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/hutool/db/meta/Table;

    move-result-object p0

    return-object p0
.end method

.method public static getTableMeta(Ljavax/sql/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/hutool/db/meta/Table;
    .locals 16

    move-object/from16 v0, p3

    .line 210
    invoke-static/range {p3 .. p3}, Lcn/hutool/db/meta/Table;->create(Ljava/lang/String;)Lcn/hutool/db/meta/Table;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 213
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v10
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    if-nez p1, :cond_0

    .line 217
    :try_start_1
    invoke-static {v10}, Lcn/hutool/db/meta/MetaUtil;->getCatalog(Ljava/sql/Connection;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object/from16 v11, p1

    .line 219
    :goto_0
    invoke-virtual {v7, v11}, Lcn/hutool/db/meta/Table;->setCatalog(Ljava/lang/String;)Lcn/hutool/db/meta/Table;

    if-nez p2, :cond_1

    .line 221
    invoke-static {v10}, Lcn/hutool/db/meta/MetaUtil;->getSchema(Ljava/sql/Connection;)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_1

    :cond_1
    move-object/from16 v12, p2

    .line 223
    :goto_1
    invoke-virtual {v7, v12}, Lcn/hutool/db/meta/Table;->setSchema(Ljava/lang/String;)Lcn/hutool/db/meta/Table;

    .line 225
    invoke-interface {v10}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/String;

    .line 228
    sget-object v4, Lcn/hutool/db/meta/TableType;->TABLE:Lcn/hutool/db/meta/TableType;

    invoke-virtual {v4}, Lcn/hutool/db/meta/TableType;->value()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-interface {v2, v11, v12, v0, v3}, Ljava/sql/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v3
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    if-eqz v3, :cond_3

    .line 230
    :try_start_2
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "REMARKS"

    .line 231
    invoke-interface {v3, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcn/hutool/db/meta/Table;->setComment(Ljava/lang/String;)Lcn/hutool/db/meta/Table;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 228
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz v3, :cond_2

    .line 234
    :try_start_4
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v2

    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V

    .line 237
    :cond_4
    invoke-interface {v2, v11, v12, v0}, Ljava/sql/DatabaseMetaData;->getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v3
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    if-eqz v3, :cond_6

    .line 239
    :goto_4
    :try_start_6
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "COLUMN_NAME"

    .line 240
    invoke-interface {v3, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcn/hutool/db/meta/Table;->addPk(Ljava/lang/String;)Lcn/hutool/db/meta/Table;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 237
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    if-eqz v3, :cond_5

    .line 243
    :try_start_8
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v3, v0

    :try_start_9
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_5
    throw v2

    :cond_6
    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V

    .line 246
    :cond_7
    invoke-interface {v2, v11, v12, v0, v1}, Ljava/sql/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    if-eqz v1, :cond_9

    .line 248
    :goto_6
    :try_start_a
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 249
    invoke-static {v7, v1}, Lcn/hutool/db/meta/Column;->create(Lcn/hutool/db/meta/Table;Ljava/sql/ResultSet;)Lcn/hutool/db/meta/Column;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcn/hutool/db/meta/Table;->setColumn(Lcn/hutool/db/meta/Column;)Lcn/hutool/db/meta/Table;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 246
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_8

    .line 252
    :try_start_c
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_7

    :catchall_8
    move-exception v0

    move-object v1, v0

    :try_start_d
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_7
    throw v3

    :cond_9
    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    :cond_a
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v2

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v4, p3

    .line 255
    invoke-interface/range {v1 .. v6}, Ljava/sql/DatabaseMetaData;->getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object v13
    :try_end_d
    .catch Ljava/sql/SQLException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    .line 256
    :try_start_e
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz v13, :cond_d

    .line 258
    :goto_8
    invoke-interface {v13}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "TYPE"

    .line 260
    invoke-interface {v13, v1}, Ljava/sql/ResultSet;->getShort(Ljava/lang/String;)S

    move-result v1

    if-nez v1, :cond_b

    goto :goto_8

    :cond_b
    const-string v1, "INDEX_NAME"

    .line 264
    invoke-interface {v13, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "&"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v8

    aput-object v3, v2, v9

    .line 265
    invoke-static {v1, v2}, Lcn/hutool/core/util/StrUtil;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 267
    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/hutool/db/meta/IndexInfo;

    if-nez v1, :cond_c

    .line 269
    new-instance v6, Lcn/hutool/db/meta/IndexInfo;

    const-string v1, "NON_UNIQUE"

    invoke-interface {v13, v1}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object v1, v6

    move-object/from16 v4, p3

    move-object v5, v12

    move-object v8, v6

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcn/hutool/db/meta/IndexInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-interface {v14, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v8

    .line 272
    :cond_c
    invoke-virtual {v1}, Lcn/hutool/db/meta/IndexInfo;->getColumnIndexInfoList()Ljava/util/List;

    move-result-object v1

    invoke-static {v13}, Lcn/hutool/db/meta/ColumnIndexInfo;->create(Ljava/sql/ResultSet;)Lcn/hutool/db/meta/ColumnIndexInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    goto :goto_8

    .line 275
    :cond_d
    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/collection/ListUtil;->toList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcn/hutool/db/meta/Table;->setIndexInfoList(Ljava/util/List;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    if-eqz v13, :cond_e

    .line 276
    :try_start_f
    invoke-interface {v13}, Ljava/sql/ResultSet;->close()V
    :try_end_f
    .catch Ljava/sql/SQLException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    :cond_e
    new-array v0, v9, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v10, v0, v1

    .line 280
    invoke-static {v0}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    return-object v7

    :catchall_9
    move-exception v0

    move-object v1, v0

    .line 255
    :try_start_10
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    :catchall_a
    move-exception v0

    move-object v2, v0

    if-eqz v13, :cond_f

    .line 276
    :try_start_11
    invoke-interface {v13}, Ljava/sql/ResultSet;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    goto :goto_9

    :catchall_b
    move-exception v0

    move-object v3, v0

    :try_start_12
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_9
    throw v2
    :try_end_12
    .catch Ljava/sql/SQLException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    :catchall_c
    move-exception v0

    move-object v1, v10

    goto :goto_b

    :catch_0
    move-exception v0

    move-object v1, v10

    goto :goto_a

    :catchall_d
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    .line 278
    :goto_a
    :try_start_13
    new-instance v2, Lcn/hutool/db/DbRuntimeException;

    const-string v3, "Get columns error!"

    invoke-direct {v2, v3, v0}, Lcn/hutool/db/DbRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    :goto_b
    new-array v2, v9, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 280
    invoke-static {v2}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    .line 281
    throw v0
.end method

.method public static getTables(Ljavax/sql/DataSource;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/sql/DataSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcn/hutool/db/meta/TableType;

    const/4 v1, 0x0

    .line 41
    sget-object v2, Lcn/hutool/db/meta/TableType;->TABLE:Lcn/hutool/db/meta/TableType;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcn/hutool/db/meta/MetaUtil;->getTables(Ljavax/sql/DataSource;[Lcn/hutool/db/meta/TableType;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getTables(Ljavax/sql/DataSource;Ljava/lang/String;Ljava/lang/String;[Lcn/hutool/db/meta/TableType;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/sql/DataSource;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Lcn/hutool/db/meta/TableType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 82
    :try_start_0
    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v3

    .line 85
    invoke-static {v3}, Lcn/hutool/db/meta/MetaUtil;->getCatalog(Ljava/sql/Connection;)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_0

    .line 87
    invoke-static {v3}, Lcn/hutool/db/meta/MetaUtil;->getSchema(Ljava/sql/Connection;)Ljava/lang/String;

    move-result-object p1

    .line 90
    :cond_0
    invoke-interface {v3}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v4

    .line 91
    invoke-static {p3}, Lcn/hutool/core/convert/Convert;->toStrArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p3

    invoke-interface {v4, p0, p1, p2, p3}, Ljava/sql/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz p0, :cond_3

    .line 94
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {p0}, Ljava/sql/ResultSet;->next()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "TABLE_NAME"

    .line 95
    invoke-interface {p0, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 97
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 91
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_2

    .line 101
    :try_start_3
    invoke-interface {p0}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p2

    :cond_3
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_4
    new-array p0, v2, [Ljava/lang/Object;

    aput-object v3, p0, v1

    .line 105
    invoke-static {p0}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    return-object v0

    :catchall_3
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 103
    :try_start_5
    new-instance p1, Lcn/hutool/db/DbRuntimeException;

    const-string p2, "Get tables error!"

    invoke-direct {p1, p2, p0}, Lcn/hutool/db/DbRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_2
    new-array p1, v2, [Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 105
    invoke-static {p1}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    .line 106
    throw p0
.end method

.method public static varargs getTables(Ljavax/sql/DataSource;Ljava/lang/String;[Lcn/hutool/db/meta/TableType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/sql/DataSource;",
            "Ljava/lang/String;",
            "[",
            "Lcn/hutool/db/meta/TableType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 65
    invoke-static {p0, p1, v0, p2}, Lcn/hutool/db/meta/MetaUtil;->getTables(Ljavax/sql/DataSource;Ljava/lang/String;Ljava/lang/String;[Lcn/hutool/db/meta/TableType;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getTables(Ljavax/sql/DataSource;[Lcn/hutool/db/meta/TableType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/sql/DataSource;",
            "[",
            "Lcn/hutool/db/meta/TableType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    invoke-static {p0, v0, v0, p1}, Lcn/hutool/db/meta/MetaUtil;->getTables(Ljavax/sql/DataSource;Ljava/lang/String;Ljava/lang/String;[Lcn/hutool/db/meta/TableType;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
