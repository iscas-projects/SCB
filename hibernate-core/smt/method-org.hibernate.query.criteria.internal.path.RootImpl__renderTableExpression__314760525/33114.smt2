(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var48 0)
(declare-sort var1038 0)
(declare-sort var636 0)
(declare-sort var3616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun prepareAlias/-1943587451 (var636 var1038) void)
(declare-fun cast-from-var48-to-var636 (var48) var636)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getModel/-760619393 (var48) var3616)
(declare-fun var3616_getName/1186055527 (var3616) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAlias/951562137 (var636) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var48 var48)
(declare-const null-var1038 var1038)
(declare-const var421 var48) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.path.RootImpl 
(assert (not (= var421 null-var48)))
(declare-const var2387 var1038) ; Statement: r1 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var2387 null-var1038)))
(assert true)
;(assert (prepareAlias/-1943587451 (cast-from-var48-to-var636 var421) var2387)) ; Statement: virtualinvoke r0.<org.hibernate.query.criteria.internal.path.RootImpl: void prepareAlias(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r1) 

(declare-const var421!1 var48)
(declare-const var2387!1 var1038)
(define-const var1536 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1536)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1536!1 String)
(assert (= var1536!1 ""))
(assert true)
(define-const var2987 var3616 (getModel/-760619393 var421!1)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.RootImpl: javax.persistence.metamodel.EntityType getModel()>() 
(define-const var1617 String (var3616_getName/1186055527 var2987)) ; Statement: $r4 = interfaceinvoke $r3.<javax.persistence.metamodel.EntityType: java.lang.String getName()>() 
(assert true)
(define-const var3592 String (append/672562846 var1536!1 var1617)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1536!2 String)
(assert (= var1536!2 (str.++ var1536!1 var1617)))
(assert true)
(define-const var573 String (append/672562846 var3592 " as ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ") 
(declare-const var3592!1 String)
(assert (= var3592!1 (str.++ var3592 " as ")))
(assert true)
(define-const var3084 String (getAlias/951562137 (cast-from-var48-to-var636 var421!1))) ; Statement: $r6 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.RootImpl: java.lang.String getAlias()>() 
(assert true)
(define-const var3247 String (append/672562846 var573 var3084)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var573!1 String)
(assert (= var573!1 (str.++ var573 var3084)))
(assert true)
(define-const var1954 String (toString/-2075883882 var3247)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {prepareAlias/-1943587451=([org.hibernate.query.criteria.internal.path.AbstractFromImpl, org.hibernate.query.criteria.internal.compile.RenderingContext], void), cast-from-var48-to-var636=([org.hibernate.query.criteria.internal.path.RootImpl], org.hibernate.query.criteria.internal.path.AbstractFromImpl), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getModel/-760619393=([org.hibernate.query.criteria.internal.path.RootImpl], javax.persistence.metamodel.EntityType), var3616_getName/1186055527=([javax.persistence.metamodel.EntityType], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAlias/951562137=([org.hibernate.query.criteria.internal.path.AbstractFromImpl], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var48=org.hibernate.query.criteria.internal.path.RootImpl, var421=r0, var1038=org.hibernate.query.criteria.internal.compile.RenderingContext, var2387=r1, var636=org.hibernate.query.criteria.internal.path.AbstractFromImpl, var1536=$r2, var3616=javax.persistence.metamodel.EntityType, var2987=$r3, var1617=$r4, var3592=$r5, var573=$r7, var3084=$r6, var3247=$r8, var1954=$r9}
; {org.hibernate.query.criteria.internal.path.RootImpl=var48, r0=var421, org.hibernate.query.criteria.internal.compile.RenderingContext=var1038, r1=var2387, org.hibernate.query.criteria.internal.path.AbstractFromImpl=var636, $r2=var1536, javax.persistence.metamodel.EntityType=var3616, $r3=var2987, $r4=var1617, $r5=var3592, $r7=var573, $r6=var3084, $r8=var3247, $r9=var1954}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.path.RootImpl;	r1 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	virtualinvoke r0.<org.hibernate.query.criteria.internal.path.RootImpl: void prepareAlias(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.RootImpl: javax.persistence.metamodel.EntityType getModel()>();	$r4 = interfaceinvoke $r3.<javax.persistence.metamodel.EntityType: java.lang.String getName()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ");	$r6 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.RootImpl: java.lang.String getAlias()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1