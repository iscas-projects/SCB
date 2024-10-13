(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2398 0)
(declare-sort var416 0)
(declare-sort var2832 0)
(declare-sort var3880 0)
(declare-sort var3374 0)
(declare-sort var3845 0)
(declare-sort var1238 0)
(declare-sort var1131 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun allowCollectionFetches/1728541778 (var2398) Bool)
(declare-fun var3880-init () var3880)
(declare-fun arr-var3374-init () (Array Int var3374))
(declare-fun getPropertyPath/-502619581 (var1238) var3845)
(declare-fun cast-from-var2398-to-var1238 (var2398) var1238)
(declare-fun getFullPath/-627774443 (var3845) String)
(declare-fun cast-from-String-to-var3374 (String) var3374)
(declare-fun String_format/1339386452 (String (Array Int var3374)) String)
(declare-fun <init>/-1056956250 (var3880 String) void)
(declare-fun cast-from-var3880-to-var1131 (var3880) var1131)
(declare-const null-var2398 var2398)
(declare-const null-var416 var416)
(declare-const null-var2832 var2832)
(declare-const null-__Array__Int__var3374__ (Array Int var3374))
(declare-const var487 var2398) ; Statement: r0 := @this: org.hibernate.loader.plan.build.internal.returns.AbstractCompositeReference 
(assert (not (= var487 null-var2398)))
(declare-const var3783 var416) ; Statement: r1 := @parameter0: org.hibernate.persister.walking.spi.AssociationAttributeDefinition 
(assert (not (= var3783 null-var416)))
(declare-const var1081 var2832) ; Statement: r2 := @parameter1: org.hibernate.engine.FetchStrategy 
(assert (not (= var1081 null-var2832)))
(define-const var222 Bool (allowCollectionFetches/1728541778 var487)) ; Statement: $z0 = r0.<org.hibernate.loader.plan.build.internal.returns.AbstractCompositeReference: boolean allowCollectionFetches> 
 ; Statement: if $z0 != 0 goto $r3 = specialinvoke r0.<org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource: org.hibernate.loader.plan.spi.CollectionAttributeFetch buildCollectionAttributeFetch(org.hibernate.persister.walking.spi.AssociationAttributeDefinition,org.hibernate.engine.FetchStrategy)>(r1, r2) 
(assert (not (not (= (ite var222 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1457 var3880 var3880-init) ; Statement: $r9 = new org.hibernate.persister.walking.spi.WalkingException 
(define-const var2911 (Array Int var3374) arr-var3374-init) ; Statement: $r5 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var1796 var3845 (getPropertyPath/-502619581 (cast-from-var2398-to-var1238 var487))) ; Statement: $r6 = virtualinvoke r0.<org.hibernate.loader.plan.build.internal.returns.AbstractCompositeReference: org.hibernate.loader.PropertyPath getPropertyPath()>() 
(assert true)
(define-const var787 String (getFullPath/-627774443 var1796)) ; Statement: $r7 = virtualinvoke $r6.<org.hibernate.loader.PropertyPath: java.lang.String getFullPath()>() 
(declare-const var2911!1 (Array Int var3374))
(assert (not (= var2911!1 null-__Array__Int__var3374__)))
(assert (= (select var2911!1 0) (cast-from-String-to-var3374 var787))) ; Statement: $r5[0] = $r7 
(define-const var298 String (String_format/1339386452 "This composite path [%s] does not allow collection fetches (composite id or composite collection index/element" var2911!1)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("This composite path [%s] does not allow collection fetches (composite id or composite collection index/element", $r5) 
(assert true)
;(assert (<init>/-1056956250 var1457 var298)) ; Statement: specialinvoke $r9.<org.hibernate.persister.walking.spi.WalkingException: void <init>(java.lang.String)>($r8) 

(declare-const var1457!1 var3880)
(declare-const var298!1 String)
(define-const var3986 var1131 (cast-from-var3880-to-var1131 var1457!1)) ; Statement: $r10 = (java.lang.Throwable) $r9 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {allowCollectionFetches/1728541778=([org.hibernate.loader.plan.build.internal.returns.AbstractCompositeReference], boolean), var3880-init=([], org.hibernate.persister.walking.spi.WalkingException), arr-var3374-init=([], java.lang.Object[]), getPropertyPath/-502619581=([org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource], org.hibernate.loader.PropertyPath), cast-from-var2398-to-var1238=([org.hibernate.loader.plan.build.internal.returns.AbstractCompositeReference], org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource), getFullPath/-627774443=([org.hibernate.loader.PropertyPath], java.lang.String), cast-from-String-to-var3374=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1056956250=([org.hibernate.persister.walking.spi.WalkingException, java.lang.String], void), cast-from-var3880-to-var1131=([org.hibernate.persister.walking.spi.WalkingException], java.lang.Throwable)}
; {var2398=org.hibernate.loader.plan.build.internal.returns.AbstractCompositeReference, var487=r0, var416=org.hibernate.persister.walking.spi.AssociationAttributeDefinition, var3783=r1, var2832=org.hibernate.engine.FetchStrategy, var1081=r2, var222=$z0, var3880=org.hibernate.persister.walking.spi.WalkingException, var1457=$r9, var3374=java.lang.Object, var2911=$r5, var3845=org.hibernate.loader.PropertyPath, var1238=org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource, var1796=$r6, var787=$r7, var298=$r8, var1131=java.lang.Throwable, var3986=$r10}
; {org.hibernate.loader.plan.build.internal.returns.AbstractCompositeReference=var2398, r0=var487, org.hibernate.persister.walking.spi.AssociationAttributeDefinition=var416, r1=var3783, org.hibernate.engine.FetchStrategy=var2832, r2=var1081, $z0=var222, org.hibernate.persister.walking.spi.WalkingException=var3880, $r9=var1457, java.lang.Object=var3374, $r5=var2911, org.hibernate.loader.PropertyPath=var3845, org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource=var1238, $r6=var1796, $r7=var787, $r8=var298, java.lang.Throwable=var1131, $r10=var3986}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.loader.plan.build.internal.returns.AbstractCompositeReference;	r1 := @parameter0: org.hibernate.persister.walking.spi.AssociationAttributeDefinition;	r2 := @parameter1: org.hibernate.engine.FetchStrategy;	$z0 = r0.<org.hibernate.loader.plan.build.internal.returns.AbstractCompositeReference: boolean allowCollectionFetches>;	if $z0 != 0 goto $r3 = specialinvoke r0.<org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource: org.hibernate.loader.plan.spi.CollectionAttributeFetch buildCollectionAttributeFetch(org.hibernate.persister.walking.spi.AssociationAttributeDefinition,org.hibernate.engine.FetchStrategy)>(r1, r2);	$r9 = new org.hibernate.persister.walking.spi.WalkingException;	$r5 = newarray (java.lang.Object)[1];	$r6 = virtualinvoke r0.<org.hibernate.loader.plan.build.internal.returns.AbstractCompositeReference: org.hibernate.loader.PropertyPath getPropertyPath()>();	$r7 = virtualinvoke $r6.<org.hibernate.loader.PropertyPath: java.lang.String getFullPath()>();	$r5[0] = $r7;	$r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("This composite path [%s] does not allow collection fetches (composite id or composite collection index/element", $r5);	specialinvoke $r9.<org.hibernate.persister.walking.spi.WalkingException: void <init>(java.lang.String)>($r8);	$r10 = (java.lang.Throwable) $r9;	throw $r10
;block_num 2