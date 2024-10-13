(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3966 0)
(declare-sort var178 0)
(declare-sort var385 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun renderRoot/-1002239551 (var385 String var178) void)
(declare-fun cast-from-var3966-to-var385 (var3966) var385)
(declare-fun renderAssignments/-1258975165 (var3966 String var178) void)
(declare-fun renderRestrictions/-1229090788 (var385 String var178) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3966 var3966)
(declare-const null-var178 var178)
(declare-const var1862 var3966) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.CriteriaUpdateImpl 
(assert (not (= var1862 null-var3966)))
(declare-const var2629 var178) ; Statement: r2 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var2629 null-var178)))
(define-const var1899 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1899 "update ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("update ") 
(declare-const var1899!1 String)
(assert (= var1899!1 "update "))
(assert true)
;(assert (renderRoot/-1002239551 (cast-from-var3966-to-var385 var1862) var1899!1 var2629)) ; Statement: virtualinvoke r1.<org.hibernate.query.criteria.internal.CriteriaUpdateImpl: void renderRoot(java.lang.StringBuilder,org.hibernate.query.criteria.internal.compile.RenderingContext)>($r0, r2) 

(declare-const var1862!1 var3966)
(declare-const var1899!2 String)
(declare-const var2629!1 var178)
(assert true)
;(assert (renderAssignments/-1258975165 var1862!1 var1899!2 var2629!1)) ; Statement: specialinvoke r1.<org.hibernate.query.criteria.internal.CriteriaUpdateImpl: void renderAssignments(java.lang.StringBuilder,org.hibernate.query.criteria.internal.compile.RenderingContext)>($r0, r2) 

(declare-const var1862!2 var3966)
(declare-const var1899!3 String)
(declare-const var2629!2 var178)
(assert true)
;(assert (renderRestrictions/-1229090788 (cast-from-var3966-to-var385 var1862!2) var1899!3 var2629!2)) ; Statement: virtualinvoke r1.<org.hibernate.query.criteria.internal.CriteriaUpdateImpl: void renderRestrictions(java.lang.StringBuilder,org.hibernate.query.criteria.internal.compile.RenderingContext)>($r0, r2) 

(declare-const var1862!3 var3966)
(declare-const var1899!4 String)
(declare-const var2629!3 var178)
(assert true)
(define-const var255 String (toString/-2075883882 var1899!4)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), renderRoot/-1002239551=([org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery, java.lang.StringBuilder, org.hibernate.query.criteria.internal.compile.RenderingContext], void), cast-from-var3966-to-var385=([org.hibernate.query.criteria.internal.CriteriaUpdateImpl], org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery), renderAssignments/-1258975165=([org.hibernate.query.criteria.internal.CriteriaUpdateImpl, java.lang.StringBuilder, org.hibernate.query.criteria.internal.compile.RenderingContext], void), renderRestrictions/-1229090788=([org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery, java.lang.StringBuilder, org.hibernate.query.criteria.internal.compile.RenderingContext], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3966=org.hibernate.query.criteria.internal.CriteriaUpdateImpl, var1862=r1, var178=org.hibernate.query.criteria.internal.compile.RenderingContext, var2629=r2, var1899=$r0, var385=org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery, var255=$r3}
; {org.hibernate.query.criteria.internal.CriteriaUpdateImpl=var3966, r1=var1862, org.hibernate.query.criteria.internal.compile.RenderingContext=var178, r2=var2629, $r0=var1899, org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery=var385, $r3=var255}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.CriteriaUpdateImpl;	r2 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("update ");	virtualinvoke r1.<org.hibernate.query.criteria.internal.CriteriaUpdateImpl: void renderRoot(java.lang.StringBuilder,org.hibernate.query.criteria.internal.compile.RenderingContext)>($r0, r2);	specialinvoke r1.<org.hibernate.query.criteria.internal.CriteriaUpdateImpl: void renderAssignments(java.lang.StringBuilder,org.hibernate.query.criteria.internal.compile.RenderingContext)>($r0, r2);	virtualinvoke r1.<org.hibernate.query.criteria.internal.CriteriaUpdateImpl: void renderRestrictions(java.lang.StringBuilder,org.hibernate.query.criteria.internal.compile.RenderingContext)>($r0, r2);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1