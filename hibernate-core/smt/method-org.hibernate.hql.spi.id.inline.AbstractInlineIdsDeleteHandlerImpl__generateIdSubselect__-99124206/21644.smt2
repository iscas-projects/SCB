(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2260 0)
(declare-sort var3360 0)
(declare-sort var1113 0)
(declare-sort var2812 0)
(declare-sort var3848 0)
(declare-sort var96 0)
(declare-sort var1426 0)
(declare-sort var2435 0)
(declare-sort var868 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3848_getKeyColumnNames/507769403 (var1113 var2812) (Array Int String))
(declare-fun getTargetedQueryable/-175238308 (var96) var1113)
(declare-fun cast-from-var2260-to-var96 (var2260) var96)
(declare-fun var1113_getIdentifierColumnNames/-1025856963 (var1113) (Array Int String))
(declare-fun var1426_equals/-1916670036 ((Array Int var2435) (Array Int var2435)) Bool)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var2435__ ((Array Int String)) (Array Int var2435))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3848_appendJoined/227862780 (String (Array Int String) String) void)
(declare-fun var868_getTableName/48490405 (var868) String)
(declare-fun cast-from-var1113-to-var868 (var1113) var868)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2260 var2260)
(declare-const null-String String)
(declare-const null-var1113 var1113)
(declare-const null-var2812 var2812)
(declare-const var3966 var2260) ; Statement: r3 := @this: org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl 
(assert (not (= var3966 null-var2260)))
(declare-const var2388 String) ; Statement: r12 := @parameter0: java.lang.String 
(assert (not (= var2388 null-String)))
(declare-const var1288 var1113) ; Statement: r0 := @parameter1: org.hibernate.persister.entity.Queryable 
(assert (not (= var1288 null-var1113)))
(declare-const var3212 var2812) ; Statement: r1 := @parameter2: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var3212 null-var2812)))
(define-const var3 (Array Int String) (var3848_getKeyColumnNames/507769403 var1288 var3212)) ; Statement: r2 = staticinvoke <org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl: java.lang.String[] getKeyColumnNames(org.hibernate.persister.entity.Queryable,org.hibernate.persister.collection.AbstractCollectionPersister)>(r0, r1) 
(assert true)
(define-const var795 var1113 (getTargetedQueryable/-175238308 (cast-from-var2260-to-var96 var3966))) ; Statement: $r4 = virtualinvoke r3.<org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl: org.hibernate.persister.entity.Queryable getTargetedQueryable()>() 
(define-const var306 (Array Int String) (var1113_getIdentifierColumnNames/-1025856963 var795)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.persister.entity.Queryable: java.lang.String[] getIdentifierColumnNames()>() 
(define-const var1669 Bool (var1426_equals/-1916670036 (cast-from-__Array__Int__String__-to-__Array__Int__var2435__ var306) (cast-from-__Array__Int__String__-to-__Array__Int__var2435__ var3))) ; Statement: $z0 = staticinvoke <java.util.Arrays: boolean equals(java.lang.Object[],java.lang.Object[])>($r5, r2) 
 ; Statement: if $z0 == 0 goto $r6 = new java.lang.StringBuilder 
(assert (= (ite var1669 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1658 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1658)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1658!1 String)
(assert (= var1658!1 ""))
(assert true)
;(assert (append/672562846 var1658!1 "select ")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var1658!2 String)
(assert (= var1658!2 (str.++ var1658!1 "select ")))
;(assert (var3848_appendJoined/227862780 ", " var3 var1658!2)) ; Statement: staticinvoke <org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl: void appendJoined(java.lang.String,java.lang.String[],java.lang.StringBuilder)>(", ", r2, $r6) 

(declare-const var966 String)
(declare-const var3!1 (Array Int String))
(declare-const var1658!3 String)
(assert true)
(define-const var452 String (append/672562846 var1658!3 " from ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ") 
(declare-const var1658!4 String)
(assert (= var1658!4 (str.++ var1658!3 " from ")))
(assert true)
(define-const var3903 var1113 (getTargetedQueryable/-175238308 (cast-from-var2260-to-var96 var3966))) ; Statement: $r7 = virtualinvoke r3.<org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl: org.hibernate.persister.entity.Queryable getTargetedQueryable()>() 
(define-const var2746 String (var868_getTableName/48490405 (cast-from-var1113-to-var868 var3903))) ; Statement: $r8 = interfaceinvoke $r7.<org.hibernate.persister.entity.Queryable: java.lang.String getTableName()>() 
(assert true)
;(assert (append/672562846 var452 var2746)) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var452!1 String)
(assert (= var452!1 (str.++ var452 var2746)))
(assert true)
;(assert (append/672562846 var1658!4 " tmp where (")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" tmp where (") 
(declare-const var1658!5 String)
(assert (= var1658!5 (str.++ var1658!4 " tmp where (")))
(assert true)
(define-const var90 var1113 (getTargetedQueryable/-175238308 (cast-from-var2260-to-var96 var3966))) ; Statement: $r10 = virtualinvoke r3.<org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl: org.hibernate.persister.entity.Queryable getTargetedQueryable()>() 
(define-const var1611 (Array Int String) (var1113_getIdentifierColumnNames/-1025856963 var90)) ; Statement: $r11 = interfaceinvoke $r10.<org.hibernate.persister.entity.Queryable: java.lang.String[] getIdentifierColumnNames()>() 
;(assert (var3848_appendJoined/227862780 ", " var1611 var1658!5)) ; Statement: staticinvoke <org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl: void appendJoined(java.lang.String,java.lang.String[],java.lang.StringBuilder)>(", ", $r11, $r6) 

(declare-const var966!1 String)
(declare-const var1611!1 (Array Int String))
(declare-const var1658!6 String)
(assert true)
;(assert (append/672562846 var1658!6 ") in (")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") in (") 
(declare-const var1658!7 String)
(assert (= var1658!7 (str.++ var1658!6 ") in (")))
(assert true)
;(assert (append/672562846 var1658!7 var2388)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12) 
(declare-const var1658!8 String)
(assert (= var1658!8 (str.++ var1658!7 var2388)))
(assert true)
;(assert (append/672562846 var1658!8 ")")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1658!9 String)
(assert (= var1658!9 (str.++ var1658!8 ")")))
(assert true)
(define-const var2048 String (toString/-2075883882 var1658!9)) ; Statement: $r13 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var3848_getKeyColumnNames/507769403=([org.hibernate.persister.entity.Queryable, org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.String[]), getTargetedQueryable/-175238308=([org.hibernate.hql.spi.id.AbstractIdsBulkIdHandler], org.hibernate.persister.entity.Queryable), cast-from-var2260-to-var96=([org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl], org.hibernate.hql.spi.id.AbstractIdsBulkIdHandler), var1113_getIdentifierColumnNames/-1025856963=([org.hibernate.persister.entity.Queryable], java.lang.String[]), var1426_equals/-1916670036=([java.lang.Object[], java.lang.Object[]], boolean), cast-from-__Array__Int__String__-to-__Array__Int__var2435__=([java.lang.String[]], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3848_appendJoined/227862780=([java.lang.String, java.lang.String[], java.lang.StringBuilder], void), var868_getTableName/48490405=([org.hibernate.persister.entity.Joinable], java.lang.String), cast-from-var1113-to-var868=([org.hibernate.persister.entity.Queryable], org.hibernate.persister.entity.Joinable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2260=org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl, var3966=r3, var2388=r12, var3360=null_type, var1113=org.hibernate.persister.entity.Queryable, var1288=r0, var2812=org.hibernate.persister.collection.AbstractCollectionPersister, var3212=r1, var3848=org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler, var3=r2, var96=org.hibernate.hql.spi.id.AbstractIdsBulkIdHandler, var795=$r4, var306=$r5, var1426=java.util.Arrays, var2435=java.lang.Object, var1669=$z0, var1658=$r6, var966=", ", var452=$r9, var3903=$r7, var868=org.hibernate.persister.entity.Joinable, var2746=$r8, var90=$r10, var1611=$r11, var2048=$r13}
; {org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl=var2260, r3=var3966, r12=var2388, null_type=var3360, org.hibernate.persister.entity.Queryable=var1113, r0=var1288, org.hibernate.persister.collection.AbstractCollectionPersister=var2812, r1=var3212, org.hibernate.hql.spi.id.AbstractTableBasedBulkIdHandler=var3848, r2=var3, org.hibernate.hql.spi.id.AbstractIdsBulkIdHandler=var96, $r4=var795, $r5=var306, java.util.Arrays=var1426, java.lang.Object=var2435, $z0=var1669, $r6=var1658, ", "=var966, $r9=var452, $r7=var3903, org.hibernate.persister.entity.Joinable=var868, $r8=var2746, $r10=var90, $r11=var1611, $r13=var2048}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl;	r12 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.persister.entity.Queryable;	r1 := @parameter2: org.hibernate.persister.collection.AbstractCollectionPersister;	r2 = staticinvoke <org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl: java.lang.String[] getKeyColumnNames(org.hibernate.persister.entity.Queryable,org.hibernate.persister.collection.AbstractCollectionPersister)>(r0, r1);	$r4 = virtualinvoke r3.<org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl: org.hibernate.persister.entity.Queryable getTargetedQueryable()>();	$r5 = interfaceinvoke $r4.<org.hibernate.persister.entity.Queryable: java.lang.String[] getIdentifierColumnNames()>();	$z0 = staticinvoke <java.util.Arrays: boolean equals(java.lang.Object[],java.lang.Object[])>($r5, r2);	if $z0 == 0 goto $r6 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	staticinvoke <org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl: void appendJoined(java.lang.String,java.lang.String[],java.lang.StringBuilder)>(", ", r2, $r6);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ");	$r7 = virtualinvoke r3.<org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl: org.hibernate.persister.entity.Queryable getTargetedQueryable()>();	$r8 = interfaceinvoke $r7.<org.hibernate.persister.entity.Queryable: java.lang.String getTableName()>();	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" tmp where (");	$r10 = virtualinvoke r3.<org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl: org.hibernate.persister.entity.Queryable getTargetedQueryable()>();	$r11 = interfaceinvoke $r10.<org.hibernate.persister.entity.Queryable: java.lang.String[] getIdentifierColumnNames()>();	staticinvoke <org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl: void appendJoined(java.lang.String,java.lang.String[],java.lang.StringBuilder)>(", ", $r11, $r6);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") in (");	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r13 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 2