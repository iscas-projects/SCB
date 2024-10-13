(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1066 0)
(declare-sort var3788 0)
(declare-sort var1298 0)
(declare-sort var1940 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun root/-1090410980 (var1066) var1298)
(declare-fun var1940_renderTableExpression/242233276 (var1940 var3788) String)
(declare-fun cast-from-var1298-to-var1940 (var1298) var1940)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1066 var1066)
(declare-const null-String String)
(declare-const null-var3788 var3788)
(declare-const var3283 var1066) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery 
(assert (not (= var3283 null-var1066)))
(declare-const var1099 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1099 null-String)))
(declare-const var3882 var3788) ; Statement: r2 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var3882 null-var3788)))
(define-const var172 var1298 (root/-1090410980 var3283)) ; Statement: $r3 = r1.<org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery: org.hibernate.query.criteria.internal.path.RootImpl root> 
(define-const var3267 String (var1940_renderTableExpression/242233276 (cast-from-var1298-to-var1940 var172) var3882)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.query.criteria.internal.FromImplementor: java.lang.String renderTableExpression(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2) 
(assert true)
;(assert (append/672562846 var1099 var3267)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1099!1 String)
(assert (= var1099!1 (str.++ var1099 var3267)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {root/-1090410980=([org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery], org.hibernate.query.criteria.internal.path.RootImpl), var1940_renderTableExpression/242233276=([org.hibernate.query.criteria.internal.FromImplementor, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), cast-from-var1298-to-var1940=([org.hibernate.query.criteria.internal.path.RootImpl], org.hibernate.query.criteria.internal.FromImplementor), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1066=org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery, var3283=r1, var1099=r0, var3788=org.hibernate.query.criteria.internal.compile.RenderingContext, var3882=r2, var1298=org.hibernate.query.criteria.internal.path.RootImpl, var172=$r3, var1940=org.hibernate.query.criteria.internal.FromImplementor, var3267=$r4}
; {org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery=var1066, r1=var3283, r0=var1099, org.hibernate.query.criteria.internal.compile.RenderingContext=var3788, r2=var3882, org.hibernate.query.criteria.internal.path.RootImpl=var1298, $r3=var172, org.hibernate.query.criteria.internal.FromImplementor=var1940, $r4=var3267}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery;	r0 := @parameter0: java.lang.StringBuilder;	r2 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r3 = r1.<org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery: org.hibernate.query.criteria.internal.path.RootImpl root>;	$r4 = interfaceinvoke $r3.<org.hibernate.query.criteria.internal.FromImplementor: java.lang.String renderTableExpression(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	return
;block_num 1