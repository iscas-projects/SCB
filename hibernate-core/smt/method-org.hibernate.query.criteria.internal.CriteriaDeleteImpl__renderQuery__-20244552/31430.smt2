(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3631 0)
(declare-sort var1838 0)
(declare-sort var1475 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun renderRoot/-1002239551 (var1475 String var1838) void)
(declare-fun cast-from-var3631-to-var1475 (var3631) var1475)
(declare-fun renderRestrictions/-1229090788 (var1475 String var1838) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3631 var3631)
(declare-const null-var1838 var1838)
(declare-const var992 var3631) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.CriteriaDeleteImpl 
(assert (not (= var992 null-var3631)))
(declare-const var705 var1838) ; Statement: r2 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var705 null-var1838)))
(define-const var1451 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1451 "delete ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("delete ") 
(declare-const var1451!1 String)
(assert (= var1451!1 "delete "))
(assert true)
;(assert (renderRoot/-1002239551 (cast-from-var3631-to-var1475 var992) var1451!1 var705)) ; Statement: virtualinvoke r1.<org.hibernate.query.criteria.internal.CriteriaDeleteImpl: void renderRoot(java.lang.StringBuilder,org.hibernate.query.criteria.internal.compile.RenderingContext)>($r0, r2) 

(declare-const var992!1 var3631)
(declare-const var1451!2 String)
(declare-const var705!1 var1838)
(assert true)
;(assert (renderRestrictions/-1229090788 (cast-from-var3631-to-var1475 var992!1) var1451!2 var705!1)) ; Statement: virtualinvoke r1.<org.hibernate.query.criteria.internal.CriteriaDeleteImpl: void renderRestrictions(java.lang.StringBuilder,org.hibernate.query.criteria.internal.compile.RenderingContext)>($r0, r2) 

(declare-const var992!2 var3631)
(declare-const var1451!3 String)
(declare-const var705!2 var1838)
(assert true)
(define-const var378 String (toString/-2075883882 var1451!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), renderRoot/-1002239551=([org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery, java.lang.StringBuilder, org.hibernate.query.criteria.internal.compile.RenderingContext], void), cast-from-var3631-to-var1475=([org.hibernate.query.criteria.internal.CriteriaDeleteImpl], org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery), renderRestrictions/-1229090788=([org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery, java.lang.StringBuilder, org.hibernate.query.criteria.internal.compile.RenderingContext], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3631=org.hibernate.query.criteria.internal.CriteriaDeleteImpl, var992=r1, var1838=org.hibernate.query.criteria.internal.compile.RenderingContext, var705=r2, var1451=$r0, var1475=org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery, var378=$r3}
; {org.hibernate.query.criteria.internal.CriteriaDeleteImpl=var3631, r1=var992, org.hibernate.query.criteria.internal.compile.RenderingContext=var1838, r2=var705, $r0=var1451, org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery=var1475, $r3=var378}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.CriteriaDeleteImpl;	r2 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("delete ");	virtualinvoke r1.<org.hibernate.query.criteria.internal.CriteriaDeleteImpl: void renderRoot(java.lang.StringBuilder,org.hibernate.query.criteria.internal.compile.RenderingContext)>($r0, r2);	virtualinvoke r1.<org.hibernate.query.criteria.internal.CriteriaDeleteImpl: void renderRestrictions(java.lang.StringBuilder,org.hibernate.query.criteria.internal.compile.RenderingContext)>($r0, r2);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1