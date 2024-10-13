(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1643 0)
(declare-sort var1006 0)
(declare-sort var2095 0)
(declare-sort var555 0)
(declare-sort var1507 0)
(declare-sort var2088 0)
(declare-sort var2034 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entitySnapshotsByKey/298931879 (var1643) var2095)
(declare-fun get/499451311 (var2095 var555) var555)
(declare-fun cast-from-var1006-to-var555 (var1006) var555)
(declare-fun var1507-init () var1507)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getEntityName/529347390 (var1006) String)
(declare-fun getIdentifier/1096977613 (var1006) var2088)
(declare-fun var2034_infoString/1203698788 (String var2088) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1507 String) void)
(declare-const null-var1643 var1643)
(declare-const null-var1006 var1006)
(declare-const null-var2095 var2095)
(declare-const var1643-NO_ROW var555)
(declare-const var404 var1643) ; Statement: r0 := @this: org.hibernate.engine.internal.StatefulPersistenceContext 
(assert (not (= var404 null-var1643)))
(declare-const var2580 var1006) ; Statement: r2 := @parameter0: org.hibernate.engine.spi.EntityKey 
(assert (not (= var2580 null-var1006)))
(define-const var3283 var2095 (entitySnapshotsByKey/298931879 var404)) ; Statement: $r1 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitySnapshotsByKey> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitySnapshotsByKey> 
(assert (not (= var3283 null-var2095))) ; Cond: $r1 != null 
(define-const var2861 var2095 (entitySnapshotsByKey/298931879 var404)) ; Statement: $r3 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitySnapshotsByKey> 
(assert true)
(define-const var2424 var555 (get/499451311 var2861 (cast-from-var1006-to-var555 var2580))) ; Statement: $r14 = virtualinvoke $r3.<java.util.HashMap: java.lang.Object get(java.lang.Object)>(r2) 
(assert true) ; Non Conditional
(define-const var3725 var555 var1643-NO_ROW) ; Statement: $r4 = <org.hibernate.engine.internal.StatefulPersistenceContext: java.lang.Object NO_ROW> 
 ; Statement: if $r14 != $r4 goto $r5 = (java.lang.Object[]) $r14 
(assert (not (not (= var2424 var3725)))) ; Negate: Cond: $r14 != $r4  
(define-const var2276 var1507 var1507-init) ; Statement: $r6 = new java.lang.IllegalStateException 
(define-const var1360 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1360)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1360!1 String)
(assert (= var1360!1 ""))
(assert true)
(define-const var3631 String (append/672562846 var1360!1 "persistence context reported no row snapshot for ")) ; Statement: $r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persistence context reported no row snapshot for ") 
(declare-const var1360!2 String)
(assert (= var1360!2 (str.++ var1360!1 "persistence context reported no row snapshot for ")))
(assert true)
(define-const var3551 String (getEntityName/529347390 var2580)) ; Statement: $r9 = virtualinvoke r2.<org.hibernate.engine.spi.EntityKey: java.lang.String getEntityName()>() 
(assert true)
(define-const var3481 var2088 (getIdentifier/1096977613 var2580)) ; Statement: $r8 = virtualinvoke r2.<org.hibernate.engine.spi.EntityKey: java.io.Serializable getIdentifier()>() 
(define-const var997 String (var2034_infoString/1203698788 var3551 var3481)) ; Statement: $r10 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(java.lang.String,java.io.Serializable)>($r9, $r8) 
(assert true)
(define-const var2717 String (append/672562846 var3631 var997)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3631!1 String)
(assert (= var3631!1 (str.++ var3631 var997)))
(assert true)
(define-const var1703 String (toString/-2075883882 var2717)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2276 var1703)) ; Statement: specialinvoke $r6.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r13) 

(declare-const var2276!1 var1507)
(declare-const var1703!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {entitySnapshotsByKey/298931879=([org.hibernate.engine.internal.StatefulPersistenceContext], java.util.HashMap), get/499451311=([java.util.HashMap, java.lang.Object], java.lang.Object), cast-from-var1006-to-var555=([org.hibernate.engine.spi.EntityKey], java.lang.Object), var1507-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getEntityName/529347390=([org.hibernate.engine.spi.EntityKey], java.lang.String), getIdentifier/1096977613=([org.hibernate.engine.spi.EntityKey], java.io.Serializable), var2034_infoString/1203698788=([java.lang.String, java.io.Serializable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1643=org.hibernate.engine.internal.StatefulPersistenceContext, var404=r0, var1006=org.hibernate.engine.spi.EntityKey, var2580=r2, var2095=java.util.HashMap, var3283=$r1, var2861=$r3, var555=java.lang.Object, var2424=$r14, var3725=$r4, var1507=java.lang.IllegalStateException, var2276=$r6, var1360=$r7, var3631=$r11, var3551=$r9, var2088=java.io.Serializable, var3481=$r8, var2034=org.hibernate.pretty.MessageHelper, var997=$r10, var2717=$r12, var1703=$r13}
; {org.hibernate.engine.internal.StatefulPersistenceContext=var1643, r0=var404, org.hibernate.engine.spi.EntityKey=var1006, r2=var2580, java.util.HashMap=var2095, $r1=var3283, $r3=var2861, java.lang.Object=var555, $r14=var2424, $r4=var3725, java.lang.IllegalStateException=var1507, $r6=var2276, $r7=var1360, $r11=var3631, $r9=var3551, java.io.Serializable=var2088, $r8=var3481, org.hibernate.pretty.MessageHelper=var2034, $r10=var997, $r12=var2717, $r13=var1703}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.internal.StatefulPersistenceContext;	r2 := @parameter0: org.hibernate.engine.spi.EntityKey;	$r1 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitySnapshotsByKey>;	if $r1 != null goto $r3 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitySnapshotsByKey>;	$r3 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitySnapshotsByKey>;	$r14 = virtualinvoke $r3.<java.util.HashMap: java.lang.Object get(java.lang.Object)>(r2);	$r4 = <org.hibernate.engine.internal.StatefulPersistenceContext: java.lang.Object NO_ROW>;	if $r14 != $r4 goto $r5 = (java.lang.Object[]) $r14;	$r6 = new java.lang.IllegalStateException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persistence context reported no row snapshot for ");	$r9 = virtualinvoke r2.<org.hibernate.engine.spi.EntityKey: java.lang.String getEntityName()>();	$r8 = virtualinvoke r2.<org.hibernate.engine.spi.EntityKey: java.io.Serializable getIdentifier()>();	$r10 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(java.lang.String,java.io.Serializable)>($r9, $r8);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r13);	throw $r6
;block_num 4