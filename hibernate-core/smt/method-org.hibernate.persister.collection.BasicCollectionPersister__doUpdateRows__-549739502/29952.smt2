(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3892 0)
(declare-sort var1080 0)
(declare-sort var2094 0)
(declare-sort var2175 0)
(declare-sort var875 0)
(declare-sort var338 0)
(declare-sort var3149 0)
(declare-sort var3920 0)
(declare-sort var1934 0)
(declare-sort var445 0)
(declare-sort var1797 0)
(declare-sort var1135 0)
(declare-sort var3375 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun elementColumnIsSettable/835828228 (var875) (Array Int Bool))
(declare-fun cast-from-var3892-to-var875 (var3892) var875)
(declare-fun var338_isAllFalse/-207966542 ((Array Int Bool)) Bool)
(declare-fun var2175_getJdbcServices/-1615476239 (var2175) var3920)
(declare-fun var3920_getSqlExceptionHelper/1800321680 (var3920) var1934)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var445_collectionInfoString/1200247851 (var1797 var2094 var1080 var2175) String)
(declare-fun cast-from-var3892-to-var1797 (var3892) var1797)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getSQLUpdateRowString/-1825515320 (var875) String)
(declare-fun convert/1666256987 (var1934 var3149 String String) var1135)
(declare-fun cast-from-var1135-to-var3375 (var1135) var3375)
(declare-const null-var3892 var3892)
(declare-const null-var1080 var1080)
(declare-const null-var2094 var2094)
(declare-const null-var2175 var2175)
(declare-const null-var3149 var3149)
(declare-const var2694 var3892) ; Statement: r0 := @this: org.hibernate.persister.collection.BasicCollectionPersister 
(assert (not (= var2694 null-var3892)))
(declare-const var1700 var1080) ; Statement: r7 := @parameter0: java.io.Serializable 
(assert (not (= var1700 null-var1080)))
(declare-const var2025 var2094) ; Statement: r5 := @parameter1: org.hibernate.collection.spi.PersistentCollection 
(assert (not (= var2025 null-var2094)))
(declare-const var3947 var2175) ; Statement: r3 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var3947 null-var2175)))
(define-const var3012 (Array Int Bool) (elementColumnIsSettable/835828228 (cast-from-var3892-to-var875 var2694))) ; Statement: $r1 = r0.<org.hibernate.persister.collection.BasicCollectionPersister: boolean[] elementColumnIsSettable> 
(define-const var2234 Bool (var338_isAllFalse/-207966542 var3012)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.collections.ArrayHelper: boolean isAllFalse(boolean[])>($r1) 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r0.<org.hibernate.persister.collection.BasicCollectionPersister: org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle getUpdateCheckStyle()>() 
(assert (not (= (ite var2234 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var3497 var3149) ; Statement: $r9 := @caughtexception 
(assert (not (= var3497 null-var3149)))
(define-const var1140 var3920 (var2175_getJdbcServices/-1615476239 var3947)) ; Statement: $r10 = interfaceinvoke r3.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>() 
(define-const var944 var1934 (var3920_getSqlExceptionHelper/1800321680 var1140)) ; Statement: $r17 = interfaceinvoke $r10.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>() 
(define-const var237 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var237)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var237!1 String)
(assert (= var237!1 ""))
(assert true)
(define-const var2485 String (append/672562846 var237!1 "could not update collection rows: ")) ; Statement: $r13 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not update collection rows: ") 
(declare-const var237!2 String)
(assert (= var237!2 (str.++ var237!1 "could not update collection rows: ")))
(define-const var2698 String (var445_collectionInfoString/1200247851 (cast-from-var3892-to-var1797 var2694) var2025 var1700 var3947)) ; Statement: $r12 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(org.hibernate.persister.collection.CollectionPersister,org.hibernate.collection.spi.PersistentCollection,java.io.Serializable,org.hibernate.engine.spi.SharedSessionContractImplementor)>(r0, r5, r7, r3) 
(assert true)
(define-const var16 String (append/672562846 var2485 var2698)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2485!1 String)
(assert (= var2485!1 (str.++ var2485 var2698)))
(assert true)
(define-const var1696 String (toString/-2075883882 var16)) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var933 String (getSQLUpdateRowString/-1825515320 (cast-from-var3892-to-var875 var2694))) ; Statement: $r15 = virtualinvoke r0.<org.hibernate.persister.collection.BasicCollectionPersister: java.lang.String getSQLUpdateRowString()>() 
(assert true)
(define-const var2846 var1135 (convert/1666256987 var944 var3497 var1696 var933)) ; Statement: $r18 = virtualinvoke $r17.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r9, $r16, $r15) 
(define-const var1665 var3375 (cast-from-var1135-to-var3375 var2846)) ; Statement: $r24 = (java.lang.Throwable) $r18 
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {elementColumnIsSettable/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], boolean[]), cast-from-var3892-to-var875=([org.hibernate.persister.collection.BasicCollectionPersister], org.hibernate.persister.collection.AbstractCollectionPersister), var338_isAllFalse/-207966542=([boolean[]], boolean), var2175_getJdbcServices/-1615476239=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.jdbc.spi.JdbcServices), var3920_getSqlExceptionHelper/1800321680=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var445_collectionInfoString/1200247851=([org.hibernate.persister.collection.CollectionPersister, org.hibernate.collection.spi.PersistentCollection, java.io.Serializable, org.hibernate.engine.spi.SharedSessionContractImplementor], java.lang.String), cast-from-var3892-to-var1797=([org.hibernate.persister.collection.BasicCollectionPersister], org.hibernate.persister.collection.CollectionPersister), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getSQLUpdateRowString/-1825515320=([org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.String), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var1135-to-var3375=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var3892=org.hibernate.persister.collection.BasicCollectionPersister, var2694=r0, var1080=java.io.Serializable, var1700=r7, var2094=org.hibernate.collection.spi.PersistentCollection, var2025=r5, var2175=org.hibernate.engine.spi.SharedSessionContractImplementor, var3947=r3, var875=org.hibernate.persister.collection.AbstractCollectionPersister, var3012=$r1, var338=org.hibernate.internal.util.collections.ArrayHelper, var2234=$z0, var3149=java.sql.SQLException, var3497=$r9, var3920=org.hibernate.engine.jdbc.spi.JdbcServices, var1140=$r10, var1934=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var944=$r17, var237=$r23, var2485=$r13, var445=org.hibernate.pretty.MessageHelper, var1797=org.hibernate.persister.collection.CollectionPersister, var2698=$r12, var16=$r14, var1696=$r16, var933=$r15, var1135=org.hibernate.JDBCException, var2846=$r18, var3375=java.lang.Throwable, var1665=$r24}
; {org.hibernate.persister.collection.BasicCollectionPersister=var3892, r0=var2694, java.io.Serializable=var1080, r7=var1700, org.hibernate.collection.spi.PersistentCollection=var2094, r5=var2025, org.hibernate.engine.spi.SharedSessionContractImplementor=var2175, r3=var3947, org.hibernate.persister.collection.AbstractCollectionPersister=var875, $r1=var3012, org.hibernate.internal.util.collections.ArrayHelper=var338, $z0=var2234, java.sql.SQLException=var3149, $r9=var3497, org.hibernate.engine.jdbc.spi.JdbcServices=var3920, $r10=var1140, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var1934, $r17=var944, $r23=var237, $r13=var2485, org.hibernate.pretty.MessageHelper=var445, org.hibernate.persister.collection.CollectionPersister=var1797, $r12=var2698, $r14=var16, $r16=var1696, $r15=var933, org.hibernate.JDBCException=var1135, $r18=var2846, java.lang.Throwable=var3375, $r24=var1665}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.persister.collection.BasicCollectionPersister;	r7 := @parameter0: java.io.Serializable;	r5 := @parameter1: org.hibernate.collection.spi.PersistentCollection;	r3 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r1 = r0.<org.hibernate.persister.collection.BasicCollectionPersister: boolean[] elementColumnIsSettable>;	$z0 = staticinvoke <org.hibernate.internal.util.collections.ArrayHelper: boolean isAllFalse(boolean[])>($r1);	if $z0 == 0 goto $r2 = virtualinvoke r0.<org.hibernate.persister.collection.BasicCollectionPersister: org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle getUpdateCheckStyle()>();	$r9 := @caughtexception;	$r10 = interfaceinvoke r3.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>();	$r17 = interfaceinvoke $r10.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>();	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not update collection rows: ");	$r12 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(org.hibernate.persister.collection.CollectionPersister,org.hibernate.collection.spi.PersistentCollection,java.io.Serializable,org.hibernate.engine.spi.SharedSessionContractImplementor)>(r0, r5, r7, r3);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke r0.<org.hibernate.persister.collection.BasicCollectionPersister: java.lang.String getSQLUpdateRowString()>();	$r18 = virtualinvoke $r17.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r9, $r16, $r15);	$r24 = (java.lang.Throwable) $r18;	throw $r24
;block_num 2