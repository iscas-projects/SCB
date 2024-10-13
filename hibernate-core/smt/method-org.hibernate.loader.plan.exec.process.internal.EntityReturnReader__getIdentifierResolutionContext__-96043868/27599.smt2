(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1717 0)
(declare-sort var344 0)
(declare-sort var1930 0)
(declare-sort var1859 0)
(declare-sort var479 0)
(declare-sort var1478 0)
(declare-sort var221 0)
(declare-sort var3135 0)
(declare-sort var1958 0)
(declare-sort var319 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityReturn/-2053522021 (var1717) var1930)
(declare-fun var344_getProcessingState/1977400263 (var344 var479) var1859)
(declare-fun cast-from-var1930-to-var479 (var1930) var479)
(declare-fun var1478-init () var1478)
(declare-fun arr-var221-init () (Array Int var221))
(declare-fun var1958_getPropertyPath/216432587 (var1958) var3135)
(declare-fun cast-from-var1930-to-var1958 (var1930) var1958)
(declare-fun getFullPath/-627774443 (var3135) String)
(declare-fun cast-from-String-to-var221 (String) var221)
(declare-fun var479_getEntityPersister/-872151685 (var479) var319)
(declare-fun var319_getEntityName/-1914780628 (var319) String)
(declare-fun String_format/1339386452 (String (Array Int var221)) String)
(declare-fun <init>/1590914260 (var1478 String) void)
(declare-const null-var1717 var1717)
(declare-const null-var344 var344)
(declare-const null-var1859 var1859)
(declare-const null-__Array__Int__var221__ (Array Int var221))
(declare-const var1902 var1717) ; Statement: r1 := @this: org.hibernate.loader.plan.exec.process.internal.EntityReturnReader 
(assert (not (= var1902 null-var1717)))
(declare-const var1552 var344) ; Statement: r0 := @parameter0: org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext 
(assert (not (= var1552 null-var344)))
(define-const var2233 var1930 (entityReturn/-2053522021 var1902)) ; Statement: $r2 = r1.<org.hibernate.loader.plan.exec.process.internal.EntityReturnReader: org.hibernate.loader.plan.spi.EntityReturn entityReturn> 
(define-const var3676 var1859 (var344_getProcessingState/1977400263 var1552 (cast-from-var1930-to-var479 var2233))) ; Statement: r3 = interfaceinvoke r0.<org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext: org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext$EntityReferenceProcessingState getProcessingState(org.hibernate.loader.plan.spi.EntityReference)>($r2) 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var3676 null-var1859)))) ; Negate: Cond: r3 != null  
(define-const var2909 var1478 var1478-init) ; Statement: $r4 = new org.hibernate.AssertionFailure 
(define-const var2306 (Array Int var221) arr-var221-init) ; Statement: $r5 = newarray (java.lang.Object)[2] 
(define-const var1077 var1930 (entityReturn/-2053522021 var1902)) ; Statement: $r6 = r1.<org.hibernate.loader.plan.exec.process.internal.EntityReturnReader: org.hibernate.loader.plan.spi.EntityReturn entityReturn> 
(define-const var3526 var3135 (var1958_getPropertyPath/216432587 (cast-from-var1930-to-var1958 var1077))) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.loader.plan.spi.EntityReturn: org.hibernate.loader.PropertyPath getPropertyPath()>() 
(assert true)
(define-const var1102 String (getFullPath/-627774443 var3526)) ; Statement: $r8 = virtualinvoke $r7.<org.hibernate.loader.PropertyPath: java.lang.String getFullPath()>() 
(declare-const var2306!1 (Array Int var221))
(assert (not (= var2306!1 null-__Array__Int__var221__)))
(assert (= (select var2306!1 0) (cast-from-String-to-var221 var1102))) ; Statement: $r5[0] = $r8 
(define-const var1107 var1930 (entityReturn/-2053522021 var1902)) ; Statement: $r9 = r1.<org.hibernate.loader.plan.exec.process.internal.EntityReturnReader: org.hibernate.loader.plan.spi.EntityReturn entityReturn> 
(define-const var649 var319 (var479_getEntityPersister/-872151685 (cast-from-var1930-to-var479 var1107))) ; Statement: $r10 = interfaceinvoke $r9.<org.hibernate.loader.plan.spi.EntityReturn: org.hibernate.persister.entity.EntityPersister getEntityPersister()>() 
(define-const var1738 String (var319_getEntityName/-1914780628 var649)) ; Statement: $r11 = interfaceinvoke $r10.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(declare-const var2306!2 (Array Int var221))
(assert (not (= var2306!2 null-__Array__Int__var221__)))
(assert (= (select var2306!2 1) (cast-from-String-to-var221 var1738))) ; Statement: $r5[1] = $r11 
(define-const var1981 String (String_format/1339386452 "Could not locate EntityReferenceProcessingState for root entity return [%s (%s)]" var2306!2)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Could not locate EntityReferenceProcessingState for root entity return [%s (%s)]", $r5) 
(assert true)
;(assert (<init>/1590914260 var2909 var1981)) ; Statement: specialinvoke $r4.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r12) 

(declare-const var2909!1 var1478)
(declare-const var1981!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {entityReturn/-2053522021=([org.hibernate.loader.plan.exec.process.internal.EntityReturnReader], org.hibernate.loader.plan.spi.EntityReturn), var344_getProcessingState/1977400263=([org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext, org.hibernate.loader.plan.spi.EntityReference], org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext$EntityReferenceProcessingState), cast-from-var1930-to-var479=([org.hibernate.loader.plan.spi.EntityReturn], org.hibernate.loader.plan.spi.EntityReference), var1478-init=([], org.hibernate.AssertionFailure), arr-var221-init=([], java.lang.Object[]), var1958_getPropertyPath/216432587=([org.hibernate.loader.plan.spi.FetchSource], org.hibernate.loader.PropertyPath), cast-from-var1930-to-var1958=([org.hibernate.loader.plan.spi.EntityReturn], org.hibernate.loader.plan.spi.FetchSource), getFullPath/-627774443=([org.hibernate.loader.PropertyPath], java.lang.String), cast-from-String-to-var221=([java.lang.String], java.lang.Object), var479_getEntityPersister/-872151685=([org.hibernate.loader.plan.spi.EntityReference], org.hibernate.persister.entity.EntityPersister), var319_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var1717=org.hibernate.loader.plan.exec.process.internal.EntityReturnReader, var1902=r1, var344=org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext, var1552=r0, var1930=org.hibernate.loader.plan.spi.EntityReturn, var2233=$r2, var1859=org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext$EntityReferenceProcessingState, var479=org.hibernate.loader.plan.spi.EntityReference, var3676=r3, var1478=org.hibernate.AssertionFailure, var2909=$r4, var221=java.lang.Object, var2306=$r5, var1077=$r6, var3135=org.hibernate.loader.PropertyPath, var1958=org.hibernate.loader.plan.spi.FetchSource, var3526=$r7, var1102=$r8, var1107=$r9, var319=org.hibernate.persister.entity.EntityPersister, var649=$r10, var1738=$r11, var1981=$r12}
; {org.hibernate.loader.plan.exec.process.internal.EntityReturnReader=var1717, r1=var1902, org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext=var344, r0=var1552, org.hibernate.loader.plan.spi.EntityReturn=var1930, $r2=var2233, org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext$EntityReferenceProcessingState=var1859, org.hibernate.loader.plan.spi.EntityReference=var479, r3=var3676, org.hibernate.AssertionFailure=var1478, $r4=var2909, java.lang.Object=var221, $r5=var2306, $r6=var1077, org.hibernate.loader.PropertyPath=var3135, org.hibernate.loader.plan.spi.FetchSource=var1958, $r7=var3526, $r8=var1102, $r9=var1107, org.hibernate.persister.entity.EntityPersister=var319, $r10=var649, $r11=var1738, $r12=var1981}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.hibernate.loader.plan.exec.process.internal.EntityReturnReader;	r0 := @parameter0: org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext;	$r2 = r1.<org.hibernate.loader.plan.exec.process.internal.EntityReturnReader: org.hibernate.loader.plan.spi.EntityReturn entityReturn>;	r3 = interfaceinvoke r0.<org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext: org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext$EntityReferenceProcessingState getProcessingState(org.hibernate.loader.plan.spi.EntityReference)>($r2);	if r3 != null goto return r3;	$r4 = new org.hibernate.AssertionFailure;	$r5 = newarray (java.lang.Object)[2];	$r6 = r1.<org.hibernate.loader.plan.exec.process.internal.EntityReturnReader: org.hibernate.loader.plan.spi.EntityReturn entityReturn>;	$r7 = interfaceinvoke $r6.<org.hibernate.loader.plan.spi.EntityReturn: org.hibernate.loader.PropertyPath getPropertyPath()>();	$r8 = virtualinvoke $r7.<org.hibernate.loader.PropertyPath: java.lang.String getFullPath()>();	$r5[0] = $r8;	$r9 = r1.<org.hibernate.loader.plan.exec.process.internal.EntityReturnReader: org.hibernate.loader.plan.spi.EntityReturn entityReturn>;	$r10 = interfaceinvoke $r9.<org.hibernate.loader.plan.spi.EntityReturn: org.hibernate.persister.entity.EntityPersister getEntityPersister()>();	$r11 = interfaceinvoke $r10.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	$r5[1] = $r11;	$r12 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Could not locate EntityReferenceProcessingState for root entity return [%s (%s)]", $r5);	specialinvoke $r4.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r12);	throw $r4
;block_num 2