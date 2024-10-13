(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var622 0)
(declare-sort var963 0)
(declare-sort var1027 0)
(declare-sort var2096 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var622_getKeyColumnNames/507769403 (var963 var1027) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var622_appendJoined/227862780 (String (Array Int String) String) void)
(declare-fun var2096_getQualifiedIdTableName/2100166941 (var2096) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var622 var622)
(declare-const null-var963 var963)
(declare-const null-var1027 var1027)
(declare-const null-var2096 var2096)
(declare-const var2963 var622) ; Statement: r9 := @this: org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler 
(assert (not (= var2963 null-var622)))
(declare-const var1123 var963) ; Statement: r0 := @parameter0: org.hibernate.persister.entity.Queryable 
(assert (not (= var1123 null-var963)))
(declare-const var563 var1027) ; Statement: r1 := @parameter1: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var563 null-var1027)))
(declare-const var2744 var2096) ; Statement: r4 := @parameter2: org.hibernate.hql.spi.id.IdTableInfo 
(assert (not (= var2744 null-var2096)))
(define-const var1572 (Array Int String) (var622_getKeyColumnNames/507769403 var1123 var563)) ; Statement: r2 = staticinvoke <org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler: java.lang.String[] getKeyColumnNames(org.hibernate.persister.entity.Queryable,org.hibernate.persister.collection.AbstractCollectionPersister)>(r0, r1) 
(define-const var324 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var324)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var324!1 String)
(assert (= var324!1 ""))
(assert true)
;(assert (append/672562846 var324!1 "select ")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var324!2 String)
(assert (= var324!2 (str.++ var324!1 "select ")))
;(assert (var622_appendJoined/227862780 ", " var1572 var324!2)) ; Statement: staticinvoke <org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler: void appendJoined(java.lang.String,java.lang.String[],java.lang.StringBuilder)>(", ", r2, $r3) 

(declare-const var1128 String)
(declare-const var1572!1 (Array Int String))
(declare-const var324!3 String)
(assert true)
(define-const var699 String (append/672562846 var324!3 " from ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ") 
(declare-const var324!4 String)
(assert (= var324!4 (str.++ var324!3 " from ")))
(define-const var2464 String (var2096_getQualifiedIdTableName/2100166941 var2744)) ; Statement: $r5 = interfaceinvoke r4.<org.hibernate.hql.spi.id.IdTableInfo: java.lang.String getQualifiedIdTableName()>() 
(assert true)
(define-const var52 String (append/672562846 var699 var2464)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var699!1 String)
(assert (= var699!1 (str.++ var699 var2464)))
(assert true)
(define-const var2335 String (toString/-2075883882 var52)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var622_getKeyColumnNames/507769403=([org.hibernate.persister.entity.Queryable, org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var622_appendJoined/227862780=([java.lang.String, java.lang.String[], java.lang.StringBuilder], void), var2096_getQualifiedIdTableName/2100166941=([org.hibernate.hql.spi.id.IdTableInfo], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var622=org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler, var2963=r9, var963=org.hibernate.persister.entity.Queryable, var1123=r0, var1027=org.hibernate.persister.collection.AbstractCollectionPersister, var563=r1, var2096=org.hibernate.hql.spi.id.IdTableInfo, var2744=r4, var1572=r2, var324=$r3, var1128=", ", var699=$r6, var2464=$r5, var52=$r7, var2335=$r8}
; {org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler=var622, r9=var2963, org.hibernate.persister.entity.Queryable=var963, r0=var1123, org.hibernate.persister.collection.AbstractCollectionPersister=var1027, r1=var563, org.hibernate.hql.spi.id.IdTableInfo=var2096, r4=var2744, r2=var1572, $r3=var324, ", "=var1128, $r6=var699, $r5=var2464, $r7=var52, $r8=var2335}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler;	r0 := @parameter0: org.hibernate.persister.entity.Queryable;	r1 := @parameter1: org.hibernate.persister.collection.AbstractCollectionPersister;	r4 := @parameter2: org.hibernate.hql.spi.id.IdTableInfo;	r2 = staticinvoke <org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler: java.lang.String[] getKeyColumnNames(org.hibernate.persister.entity.Queryable,org.hibernate.persister.collection.AbstractCollectionPersister)>(r0, r1);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	staticinvoke <org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler: void appendJoined(java.lang.String,java.lang.String[],java.lang.StringBuilder)>(", ", r2, $r3);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ");	$r5 = interfaceinvoke r4.<org.hibernate.hql.spi.id.IdTableInfo: java.lang.String getQualifiedIdTableName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1