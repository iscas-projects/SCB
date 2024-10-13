(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1605 0)
(declare-sort var2406 0)
(declare-sort var1463 0)
(declare-sort var3358 0)
(declare-sort var2015 0)
(declare-sort var868 0)
(declare-sort var1424 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entitySnapshotsByKey/298931879 (var1605) var1463)
(declare-fun var2015-init () var2015)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getEntityName/529347390 (var2406) String)
(declare-fun getIdentifier/1096977613 (var2406) var868)
(declare-fun var1424_infoString/1203698788 (String var868) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2015 String) void)
(declare-const null-var1605 var1605)
(declare-const null-var2406 var2406)
(declare-const null-var1463 var1463)
(declare-const null-var3358 var3358)
(declare-const var1605-NO_ROW var3358)
(declare-const var3450 var1605) ; Statement: r0 := @this: org.hibernate.engine.internal.StatefulPersistenceContext 
(assert (not (= var3450 null-var1605)))
(declare-const var281 var2406) ; Statement: r2 := @parameter0: org.hibernate.engine.spi.EntityKey 
(assert (not (= var281 null-var2406)))
(define-const var1691 var1463 (entitySnapshotsByKey/298931879 var3450)) ; Statement: $r1 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitySnapshotsByKey> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitySnapshotsByKey> 
(assert (not (not (= var1691 null-var1463)))) ; Negate: Cond: $r1 != null  
(define-const var3508 var3358 null-var3358) ; Statement: $r14 = null 
 ; Statement: goto [?= $r4 = <org.hibernate.engine.internal.StatefulPersistenceContext: java.lang.Object NO_ROW>] 
(assert true) ; Non Conditional
(define-const var2793 var3358 var1605-NO_ROW) ; Statement: $r4 = <org.hibernate.engine.internal.StatefulPersistenceContext: java.lang.Object NO_ROW> 
 ; Statement: if $r14 != $r4 goto $r5 = (java.lang.Object[]) $r14 
(assert (not (not (= var3508 var2793)))) ; Negate: Cond: $r14 != $r4  
(define-const var3867 var2015 var2015-init) ; Statement: $r6 = new java.lang.IllegalStateException 
(define-const var3245 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3245)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3245!1 String)
(assert (= var3245!1 ""))
(assert true)
(define-const var3935 String (append/672562846 var3245!1 "persistence context reported no row snapshot for ")) ; Statement: $r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persistence context reported no row snapshot for ") 
(declare-const var3245!2 String)
(assert (= var3245!2 (str.++ var3245!1 "persistence context reported no row snapshot for ")))
(assert true)
(define-const var2874 String (getEntityName/529347390 var281)) ; Statement: $r9 = virtualinvoke r2.<org.hibernate.engine.spi.EntityKey: java.lang.String getEntityName()>() 
(assert true)
(define-const var2674 var868 (getIdentifier/1096977613 var281)) ; Statement: $r8 = virtualinvoke r2.<org.hibernate.engine.spi.EntityKey: java.io.Serializable getIdentifier()>() 
(define-const var2589 String (var1424_infoString/1203698788 var2874 var2674)) ; Statement: $r10 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(java.lang.String,java.io.Serializable)>($r9, $r8) 
(assert true)
(define-const var1962 String (append/672562846 var3935 var2589)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3935!1 String)
(assert (= var3935!1 (str.++ var3935 var2589)))
(assert true)
(define-const var3942 String (toString/-2075883882 var1962)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3867 var3942)) ; Statement: specialinvoke $r6.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r13) 

(declare-const var3867!1 var2015)
(declare-const var3942!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {entitySnapshotsByKey/298931879=([org.hibernate.engine.internal.StatefulPersistenceContext], java.util.HashMap), var2015-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getEntityName/529347390=([org.hibernate.engine.spi.EntityKey], java.lang.String), getIdentifier/1096977613=([org.hibernate.engine.spi.EntityKey], java.io.Serializable), var1424_infoString/1203698788=([java.lang.String, java.io.Serializable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1605=org.hibernate.engine.internal.StatefulPersistenceContext, var3450=r0, var2406=org.hibernate.engine.spi.EntityKey, var281=r2, var1463=java.util.HashMap, var1691=$r1, var3358=java.lang.Object, var3508=$r14, var2793=$r4, var2015=java.lang.IllegalStateException, var3867=$r6, var3245=$r7, var3935=$r11, var2874=$r9, var868=java.io.Serializable, var2674=$r8, var1424=org.hibernate.pretty.MessageHelper, var2589=$r10, var1962=$r12, var3942=$r13}
; {org.hibernate.engine.internal.StatefulPersistenceContext=var1605, r0=var3450, org.hibernate.engine.spi.EntityKey=var2406, r2=var281, java.util.HashMap=var1463, $r1=var1691, java.lang.Object=var3358, $r14=var3508, $r4=var2793, java.lang.IllegalStateException=var2015, $r6=var3867, $r7=var3245, $r11=var3935, $r9=var2874, java.io.Serializable=var868, $r8=var2674, org.hibernate.pretty.MessageHelper=var1424, $r10=var2589, $r12=var1962, $r13=var3942}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.internal.StatefulPersistenceContext;	r2 := @parameter0: org.hibernate.engine.spi.EntityKey;	$r1 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitySnapshotsByKey>;	if $r1 != null goto $r3 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitySnapshotsByKey>;	$r14 = null;	goto [?= $r4 = <org.hibernate.engine.internal.StatefulPersistenceContext: java.lang.Object NO_ROW>];	$r4 = <org.hibernate.engine.internal.StatefulPersistenceContext: java.lang.Object NO_ROW>;	if $r14 != $r4 goto $r5 = (java.lang.Object[]) $r14;	$r6 = new java.lang.IllegalStateException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persistence context reported no row snapshot for ");	$r9 = virtualinvoke r2.<org.hibernate.engine.spi.EntityKey: java.lang.String getEntityName()>();	$r8 = virtualinvoke r2.<org.hibernate.engine.spi.EntityKey: java.io.Serializable getIdentifier()>();	$r10 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(java.lang.String,java.io.Serializable)>($r9, $r8);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r13);	throw $r6
;block_num 4