(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3888 0)
(declare-sort var3425 0)
(declare-sort var848 0)
(declare-sort var1580 0)
(declare-sort var580 0)
(declare-sort var3051 0)
(declare-sort var2806 0)
(declare-sort var3061 0)
(declare-sort var233 0)
(declare-sort var70 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1580_getEntityName/678863501 (var1580 var3425) String)
(declare-fun cast-from-var848-to-var1580 (var848) var1580)
(declare-fun arr-var3425-init () (Array Int var3425))
(declare-fun var1580_getIdentifier/613441564 (var1580 var3425) var3051)
(declare-fun var2806_infoString/1203698788 (String var3051) String)
(declare-fun cast-from-String-to-var3425 (String) var3425)
(declare-fun String_format/1339386452 (String (Array Int var3425)) String)
(declare-fun var580_trace/729076520 (var580 var3425) void)
(declare-fun managedToMergeEntitiesXref/81107345 (var3888) var233)
(declare-fun var70-init () var70)
(declare-fun <init>/-460065511 (var70) void)
(declare-fun cast-from-var70-to-var233 (var70) var233)
(declare-fun var3061_add/-1142548109 (var3061 var3425) Bool)
(declare-const null-var3888 var3888)
(declare-const null-var3425 var3425)
(declare-const null-var848 var848)
(declare-const var3888-LOG var580)
(declare-const null-__Array__Int__var3425__ (Array Int var3425))
(declare-const null-var3061 var3061)
(declare-const null-var233 var233)
(declare-const var3232 var3888) ; Statement: r8 := @this: org.hibernate.event.internal.EntityCopyAllowedLoggedObserver 
(assert (not (= var3232 null-var3888)))
(declare-const var3204 var3425) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3204 null-var3425)))
(declare-const var3577 var3425) ; Statement: r12 := @parameter1: java.lang.Object 
(assert (not (= var3577 null-var3425)))
(declare-const var1143 var3425) ; Statement: r13 := @parameter2: java.lang.Object 
(assert (not (= var1143 null-var3425)))
(declare-const var2962 var848) ; Statement: r0 := @parameter3: org.hibernate.event.spi.EventSource 
(assert (not (= var2962 null-var848)))
(define-const var1894 String (var1580_getEntityName/678863501 (cast-from-var848-to-var1580 var2962) var3204)) ; Statement: r2 = interfaceinvoke r0.<org.hibernate.event.spi.EventSource: java.lang.String getEntityName(java.lang.Object)>(r1) 
(define-const var2214 var580 var3888-LOG) ; Statement: $r4 = <org.hibernate.event.internal.EntityCopyAllowedLoggedObserver: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var887 (Array Int var3425) arr-var3425-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(define-const var1639 var3051 (var1580_getIdentifier/613441564 (cast-from-var848-to-var1580 var2962) var3204)) ; Statement: $r5 = interfaceinvoke r0.<org.hibernate.event.spi.EventSource: java.io.Serializable getIdentifier(java.lang.Object)>(r1) 
(define-const var902 String (var2806_infoString/1203698788 var1894 var1639)) ; Statement: $r6 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(java.lang.String,java.io.Serializable)>(r2, $r5) 
(declare-const var887!1 (Array Int var3425))
(assert (not (= var887!1 null-__Array__Int__var3425__)))
(assert (= (select var887!1 0) (cast-from-String-to-var3425 var902))) ; Statement: $r3[0] = $r6 
(define-const var3065 String (String_format/1339386452 "More than one representation of the same persistent entity being merged for: %s" var887!1)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("More than one representation of the same persistent entity being merged for: %s", $r3) 
;(assert (var580_trace/729076520 var2214 (cast-from-String-to-var3425 var3065))) ; Statement: interfaceinvoke $r4.<org.hibernate.internal.CoreMessageLogger: void trace(java.lang.Object)>($r7) 

(declare-const var2214!1 var580)
(declare-const var3065!1 String)
(define-const var1703 var3061 null-var3061) ; Statement: r17 = null 
(define-const var2128 var233 (managedToMergeEntitiesXref/81107345 var3232)) ; Statement: $r9 = r8.<org.hibernate.event.internal.EntityCopyAllowedLoggedObserver: java.util.Map managedToMergeEntitiesXref> 
 ; Statement: if $r9 != null goto $r10 = r8.<org.hibernate.event.internal.EntityCopyAllowedLoggedObserver: java.util.Map managedToMergeEntitiesXref> 
(assert (not (not (= var2128 null-var233)))) ; Negate: Cond: $r9 != null  
(define-const var1356 var70 var70-init) ; Statement: $r16 = new java.util.IdentityHashMap 
(assert true)
;(assert (<init>/-460065511 var1356)) ; Statement: specialinvoke $r16.<java.util.IdentityHashMap: void <init>()>() 

(declare-const var1356!1 var70)
(declare-const var3232!1 var3888)
(assert (not (= var3232!1 null-var3888)))
(assert (= (managedToMergeEntitiesXref/81107345 var3232!1) (cast-from-var70-to-var233 var1356!1))) ; Statement: r8.<org.hibernate.event.internal.EntityCopyAllowedLoggedObserver: java.util.Map managedToMergeEntitiesXref> = $r16 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r17 != null goto interfaceinvoke r17.<java.util.Set: boolean add(java.lang.Object)>(r12) 
(assert (not (= var1703 null-var3061))) ; Cond: r17 != null 
;(assert (var3061_add/-1142548109 var1703 var3577)) ; Statement: interfaceinvoke r17.<java.util.Set: boolean add(java.lang.Object)>(r12) 

(declare-const var1703!1 var3061)
(declare-const var3577!1 var3425)
;(assert (var3061_add/-1142548109 var1703!1 var1143)) ; Statement: interfaceinvoke r17.<java.util.Set: boolean add(java.lang.Object)>(r13) 

(declare-const var1703!2 var3061)
(declare-const var1143!1 var3425)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1580_getEntityName/678863501=([org.hibernate.Session, java.lang.Object], java.lang.String), cast-from-var848-to-var1580=([org.hibernate.event.spi.EventSource], org.hibernate.Session), arr-var3425-init=([], java.lang.Object[]), var1580_getIdentifier/613441564=([org.hibernate.Session, java.lang.Object], java.io.Serializable), var2806_infoString/1203698788=([java.lang.String, java.io.Serializable], java.lang.String), cast-from-String-to-var3425=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var580_trace/729076520=([org.hibernate.internal.CoreMessageLogger, java.lang.Object], void), managedToMergeEntitiesXref/81107345=([org.hibernate.event.internal.EntityCopyAllowedLoggedObserver], java.util.Map), var70-init=([], java.util.IdentityHashMap), <init>/-460065511=([java.util.IdentityHashMap], void), cast-from-var70-to-var233=([java.util.IdentityHashMap], java.util.Map), var3061_add/-1142548109=([java.util.Set, java.lang.Object], boolean)}
; {var3888=org.hibernate.event.internal.EntityCopyAllowedLoggedObserver, var3232=r8, var3425=java.lang.Object, var3204=r1, var3577=r12, var1143=r13, var848=org.hibernate.event.spi.EventSource, var2962=r0, var1580=org.hibernate.Session, var1894=r2, var580=org.hibernate.internal.CoreMessageLogger, var2214=$r4, var887=$r3, var3051=java.io.Serializable, var1639=$r5, var2806=org.hibernate.pretty.MessageHelper, var902=$r6, var3065=$r7, var3061=java.util.Set, var1703=r17, var233=java.util.Map, var2128=$r9, var70=java.util.IdentityHashMap, var1356=$r16}
; {org.hibernate.event.internal.EntityCopyAllowedLoggedObserver=var3888, r8=var3232, java.lang.Object=var3425, r1=var3204, r12=var3577, r13=var1143, org.hibernate.event.spi.EventSource=var848, r0=var2962, org.hibernate.Session=var1580, r2=var1894, org.hibernate.internal.CoreMessageLogger=var580, $r4=var2214, $r3=var887, java.io.Serializable=var3051, $r5=var1639, org.hibernate.pretty.MessageHelper=var2806, $r6=var902, $r7=var3065, java.util.Set=var3061, r17=var1703, java.util.Map=var233, $r9=var2128, java.util.IdentityHashMap=var70, $r16=var1356}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r8 := @this: org.hibernate.event.internal.EntityCopyAllowedLoggedObserver;	r1 := @parameter0: java.lang.Object;	r12 := @parameter1: java.lang.Object;	r13 := @parameter2: java.lang.Object;	r0 := @parameter3: org.hibernate.event.spi.EventSource;	r2 = interfaceinvoke r0.<org.hibernate.event.spi.EventSource: java.lang.String getEntityName(java.lang.Object)>(r1);	$r4 = <org.hibernate.event.internal.EntityCopyAllowedLoggedObserver: org.hibernate.internal.CoreMessageLogger LOG>;	$r3 = newarray (java.lang.Object)[1];	$r5 = interfaceinvoke r0.<org.hibernate.event.spi.EventSource: java.io.Serializable getIdentifier(java.lang.Object)>(r1);	$r6 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(java.lang.String,java.io.Serializable)>(r2, $r5);	$r3[0] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("More than one representation of the same persistent entity being merged for: %s", $r3);	interfaceinvoke $r4.<org.hibernate.internal.CoreMessageLogger: void trace(java.lang.Object)>($r7);	r17 = null;	$r9 = r8.<org.hibernate.event.internal.EntityCopyAllowedLoggedObserver: java.util.Map managedToMergeEntitiesXref>;	if $r9 != null goto $r10 = r8.<org.hibernate.event.internal.EntityCopyAllowedLoggedObserver: java.util.Map managedToMergeEntitiesXref>;	$r16 = new java.util.IdentityHashMap;	specialinvoke $r16.<java.util.IdentityHashMap: void <init>()>();	r8.<org.hibernate.event.internal.EntityCopyAllowedLoggedObserver: java.util.Map managedToMergeEntitiesXref> = $r16;	goto [?= (branch)];	if r17 != null goto interfaceinvoke r17.<java.util.Set: boolean add(java.lang.Object)>(r12);	interfaceinvoke r17.<java.util.Set: boolean add(java.lang.Object)>(r12);	interfaceinvoke r17.<java.util.Set: boolean add(java.lang.Object)>(r13);	return
;block_num 4