(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var40 0)
(declare-sort var2134 0)
(declare-sort var1504 0)
(declare-sort var2181 0)
(declare-sort var3606 0)
(declare-sort var3197 0)
(declare-sort var2511 0)
(declare-sort var1297 0)
(declare-sort var1896 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2181_getEntityName/678863501 (var2181 var2134) String)
(declare-fun cast-from-var1504-to-var2181 (var1504) var2181)
(declare-fun arr-var2134-init () (Array Int var2134))
(declare-fun var2181_getIdentifier/613441564 (var2181 var2134) var3197)
(declare-fun var2511_infoString/1203698788 (String var3197) String)
(declare-fun cast-from-String-to-var2134 (String) var2134)
(declare-fun String_format/1339386452 (String (Array Int var2134)) String)
(declare-fun var3606_trace/729076520 (var3606 var2134) void)
(declare-fun managedToMergeEntitiesXref/81107345 (var40) var1896)
(declare-fun var1896_get/1088891777 (var1896 var2134) var2134)
(declare-fun cast-from-var2134-to-var1297 (var2134) var1297)
(declare-fun var1297_add/-1142548109 (var1297 var2134) Bool)
(declare-const null-var40 var40)
(declare-const null-var2134 var2134)
(declare-const null-var1504 var1504)
(declare-const var40-LOG var3606)
(declare-const null-__Array__Int__var2134__ (Array Int var2134))
(declare-const null-var1297 var1297)
(declare-const null-var1896 var1896)
(declare-const var2136 var40) ; Statement: r8 := @this: org.hibernate.event.internal.EntityCopyAllowedLoggedObserver 
(assert (not (= var2136 null-var40)))
(declare-const var2549 var2134) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2549 null-var2134)))
(declare-const var415 var2134) ; Statement: r12 := @parameter1: java.lang.Object 
(assert (not (= var415 null-var2134)))
(declare-const var1283 var2134) ; Statement: r13 := @parameter2: java.lang.Object 
(assert (not (= var1283 null-var2134)))
(declare-const var3090 var1504) ; Statement: r0 := @parameter3: org.hibernate.event.spi.EventSource 
(assert (not (= var3090 null-var1504)))
(define-const var860 String (var2181_getEntityName/678863501 (cast-from-var1504-to-var2181 var3090) var2549)) ; Statement: r2 = interfaceinvoke r0.<org.hibernate.event.spi.EventSource: java.lang.String getEntityName(java.lang.Object)>(r1) 
(define-const var3222 var3606 var40-LOG) ; Statement: $r4 = <org.hibernate.event.internal.EntityCopyAllowedLoggedObserver: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var3424 (Array Int var2134) arr-var2134-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(define-const var560 var3197 (var2181_getIdentifier/613441564 (cast-from-var1504-to-var2181 var3090) var2549)) ; Statement: $r5 = interfaceinvoke r0.<org.hibernate.event.spi.EventSource: java.io.Serializable getIdentifier(java.lang.Object)>(r1) 
(define-const var369 String (var2511_infoString/1203698788 var860 var560)) ; Statement: $r6 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(java.lang.String,java.io.Serializable)>(r2, $r5) 
(declare-const var3424!1 (Array Int var2134))
(assert (not (= var3424!1 null-__Array__Int__var2134__)))
(assert (= (select var3424!1 0) (cast-from-String-to-var2134 var369))) ; Statement: $r3[0] = $r6 
(define-const var1140 String (String_format/1339386452 "More than one representation of the same persistent entity being merged for: %s" var3424!1)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("More than one representation of the same persistent entity being merged for: %s", $r3) 
;(assert (var3606_trace/729076520 var3222 (cast-from-String-to-var2134 var1140))) ; Statement: interfaceinvoke $r4.<org.hibernate.internal.CoreMessageLogger: void trace(java.lang.Object)>($r7) 

(declare-const var3222!1 var3606)
(declare-const var1140!1 String)
(define-const var487 var1297 null-var1297) ; Statement: r17 = null 
(define-const var643 var1896 (managedToMergeEntitiesXref/81107345 var2136)) ; Statement: $r9 = r8.<org.hibernate.event.internal.EntityCopyAllowedLoggedObserver: java.util.Map managedToMergeEntitiesXref> 
 ; Statement: if $r9 != null goto $r10 = r8.<org.hibernate.event.internal.EntityCopyAllowedLoggedObserver: java.util.Map managedToMergeEntitiesXref> 
(assert (not (= var643 null-var1896))) ; Cond: $r9 != null 
(define-const var653 var1896 (managedToMergeEntitiesXref/81107345 var2136)) ; Statement: $r10 = r8.<org.hibernate.event.internal.EntityCopyAllowedLoggedObserver: java.util.Map managedToMergeEntitiesXref> 
(define-const var2115 var2134 (var1896_get/1088891777 var653 var2549)) ; Statement: $r11 = interfaceinvoke $r10.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var487!1 var1297 (cast-from-var2134-to-var1297 var2115)) ; Statement: r17 = (java.util.Set) $r11 
(assert true) ; Non Conditional
 ; Statement: if r17 != null goto interfaceinvoke r17.<java.util.Set: boolean add(java.lang.Object)>(r12) 
(assert (not (= var487!1 null-var1297))) ; Cond: r17 != null 
;(assert (var1297_add/-1142548109 var487!1 var415)) ; Statement: interfaceinvoke r17.<java.util.Set: boolean add(java.lang.Object)>(r12) 

(declare-const var487!2 var1297)
(declare-const var415!1 var2134)
;(assert (var1297_add/-1142548109 var487!2 var1283)) ; Statement: interfaceinvoke r17.<java.util.Set: boolean add(java.lang.Object)>(r13) 

(declare-const var487!3 var1297)
(declare-const var1283!1 var2134)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2181_getEntityName/678863501=([org.hibernate.Session, java.lang.Object], java.lang.String), cast-from-var1504-to-var2181=([org.hibernate.event.spi.EventSource], org.hibernate.Session), arr-var2134-init=([], java.lang.Object[]), var2181_getIdentifier/613441564=([org.hibernate.Session, java.lang.Object], java.io.Serializable), var2511_infoString/1203698788=([java.lang.String, java.io.Serializable], java.lang.String), cast-from-String-to-var2134=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var3606_trace/729076520=([org.hibernate.internal.CoreMessageLogger, java.lang.Object], void), managedToMergeEntitiesXref/81107345=([org.hibernate.event.internal.EntityCopyAllowedLoggedObserver], java.util.Map), var1896_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var2134-to-var1297=([java.lang.Object], java.util.Set), var1297_add/-1142548109=([java.util.Set, java.lang.Object], boolean)}
; {var40=org.hibernate.event.internal.EntityCopyAllowedLoggedObserver, var2136=r8, var2134=java.lang.Object, var2549=r1, var415=r12, var1283=r13, var1504=org.hibernate.event.spi.EventSource, var3090=r0, var2181=org.hibernate.Session, var860=r2, var3606=org.hibernate.internal.CoreMessageLogger, var3222=$r4, var3424=$r3, var3197=java.io.Serializable, var560=$r5, var2511=org.hibernate.pretty.MessageHelper, var369=$r6, var1140=$r7, var1297=java.util.Set, var487=r17, var1896=java.util.Map, var643=$r9, var653=$r10, var2115=$r11}
; {org.hibernate.event.internal.EntityCopyAllowedLoggedObserver=var40, r8=var2136, java.lang.Object=var2134, r1=var2549, r12=var415, r13=var1283, org.hibernate.event.spi.EventSource=var1504, r0=var3090, org.hibernate.Session=var2181, r2=var860, org.hibernate.internal.CoreMessageLogger=var3606, $r4=var3222, $r3=var3424, java.io.Serializable=var3197, $r5=var560, org.hibernate.pretty.MessageHelper=var2511, $r6=var369, $r7=var1140, java.util.Set=var1297, r17=var487, java.util.Map=var1896, $r9=var643, $r10=var653, $r11=var2115}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r8 := @this: org.hibernate.event.internal.EntityCopyAllowedLoggedObserver;	r1 := @parameter0: java.lang.Object;	r12 := @parameter1: java.lang.Object;	r13 := @parameter2: java.lang.Object;	r0 := @parameter3: org.hibernate.event.spi.EventSource;	r2 = interfaceinvoke r0.<org.hibernate.event.spi.EventSource: java.lang.String getEntityName(java.lang.Object)>(r1);	$r4 = <org.hibernate.event.internal.EntityCopyAllowedLoggedObserver: org.hibernate.internal.CoreMessageLogger LOG>;	$r3 = newarray (java.lang.Object)[1];	$r5 = interfaceinvoke r0.<org.hibernate.event.spi.EventSource: java.io.Serializable getIdentifier(java.lang.Object)>(r1);	$r6 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(java.lang.String,java.io.Serializable)>(r2, $r5);	$r3[0] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("More than one representation of the same persistent entity being merged for: %s", $r3);	interfaceinvoke $r4.<org.hibernate.internal.CoreMessageLogger: void trace(java.lang.Object)>($r7);	r17 = null;	$r9 = r8.<org.hibernate.event.internal.EntityCopyAllowedLoggedObserver: java.util.Map managedToMergeEntitiesXref>;	if $r9 != null goto $r10 = r8.<org.hibernate.event.internal.EntityCopyAllowedLoggedObserver: java.util.Map managedToMergeEntitiesXref>;	$r10 = r8.<org.hibernate.event.internal.EntityCopyAllowedLoggedObserver: java.util.Map managedToMergeEntitiesXref>;	$r11 = interfaceinvoke $r10.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r17 = (java.util.Set) $r11;	if r17 != null goto interfaceinvoke r17.<java.util.Set: boolean add(java.lang.Object)>(r12);	interfaceinvoke r17.<java.util.Set: boolean add(java.lang.Object)>(r12);	interfaceinvoke r17.<java.util.Set: boolean add(java.lang.Object)>(r13);	return
;block_num 4