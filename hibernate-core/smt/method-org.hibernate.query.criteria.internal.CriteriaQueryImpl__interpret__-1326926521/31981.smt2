(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var67 0)
(declare-sort var686 0)
(declare-sort var2393 0)
(declare-sort var2740 0)
(declare-sort var2293 0)
(declare-sort var3244 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun queryStructure/-1248080261 (var67) var2393)
(declare-fun render/-1876942504 (var2393 String var686) void)
(declare-fun renderOrderByClause/-979355556 (var67 var686 String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun debugf/-1161213948 (var2740 String var2293) void)
(declare-fun cast-from-String-to-var2293 (String) var2293)
(declare-fun var3244-init () var3244)
(declare-fun <init>/1521740871 (var3244 var67 String) void)
(declare-const null-var67 var67)
(declare-const null-var686 var686)
(declare-const var67-log var2740)
(declare-const var1117 var67) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.CriteriaQueryImpl 
(assert (not (= var1117 null-var67)))
(declare-const var2447 var686) ; Statement: r2 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var2447 null-var686)))
(define-const var3935 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3935)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3935!1 String)
(assert (= var3935!1 ""))
(define-const var1818 var2393 (queryStructure/-1248080261 var1117)) ; Statement: $r3 = r1.<org.hibernate.query.criteria.internal.CriteriaQueryImpl: org.hibernate.query.criteria.internal.QueryStructure queryStructure> 
(assert true)
;(assert (render/-1876942504 var1818 var3935!1 var2447)) ; Statement: virtualinvoke $r3.<org.hibernate.query.criteria.internal.QueryStructure: void render(java.lang.StringBuilder,org.hibernate.query.criteria.internal.compile.RenderingContext)>($r0, r2) 

(declare-const var1818!1 var2393)
(declare-const var3935!2 String)
(declare-const var2447!1 var686)
(assert true)
;(assert (renderOrderByClause/-979355556 var1117 var2447!1 var3935!2)) ; Statement: virtualinvoke r1.<org.hibernate.query.criteria.internal.CriteriaQueryImpl: void renderOrderByClause(org.hibernate.query.criteria.internal.compile.RenderingContext,java.lang.StringBuilder)>(r2, $r0) 

(declare-const var1117!1 var67)
(declare-const var2447!2 var686)
(declare-const var3935!3 String)
(assert true)
(define-const var1846 String (toString/-2075883882 var3935!3)) ; Statement: r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1822 var2740 var67-log) ; Statement: $r5 = <org.hibernate.query.criteria.internal.CriteriaQueryImpl: org.jboss.logging.Logger log> 
(assert true)
;(assert (debugf/-1161213948 var1822 "Rendered criteria query -> %s" (cast-from-String-to-var2293 var1846))) ; Statement: virtualinvoke $r5.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object)>("Rendered criteria query -> %s", r4) 

(declare-const var1822!1 var2740)
(declare-const var2264 String)
(declare-const var1846!1 String)
(define-const var1236 var3244 var3244-init) ; Statement: $r6 = new org.hibernate.query.criteria.internal.CriteriaQueryImpl$1 
(assert true)
;(assert (<init>/1521740871 var1236 var1117!1 var1846!1)) ; Statement: specialinvoke $r6.<org.hibernate.query.criteria.internal.CriteriaQueryImpl$1: void <init>(org.hibernate.query.criteria.internal.CriteriaQueryImpl,java.lang.String)>(r1, r4) 

(declare-const var1236!1 var3244)
(declare-const var1117!2 var67)
(declare-const var1846!2 String)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), queryStructure/-1248080261=([org.hibernate.query.criteria.internal.CriteriaQueryImpl], org.hibernate.query.criteria.internal.QueryStructure), render/-1876942504=([org.hibernate.query.criteria.internal.QueryStructure, java.lang.StringBuilder, org.hibernate.query.criteria.internal.compile.RenderingContext], void), renderOrderByClause/-979355556=([org.hibernate.query.criteria.internal.CriteriaQueryImpl, org.hibernate.query.criteria.internal.compile.RenderingContext, java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), debugf/-1161213948=([org.jboss.logging.Logger, java.lang.String, java.lang.Object], void), cast-from-String-to-var2293=([java.lang.String], java.lang.Object), var3244-init=([], org.hibernate.query.criteria.internal.CriteriaQueryImpl$1), <init>/1521740871=([org.hibernate.query.criteria.internal.CriteriaQueryImpl$1, org.hibernate.query.criteria.internal.CriteriaQueryImpl, java.lang.String], void)}
; {var67=org.hibernate.query.criteria.internal.CriteriaQueryImpl, var1117=r1, var686=org.hibernate.query.criteria.internal.compile.RenderingContext, var2447=r2, var3935=$r0, var2393=org.hibernate.query.criteria.internal.QueryStructure, var1818=$r3, var1846=r4, var2740=org.jboss.logging.Logger, var1822=$r5, var2293=java.lang.Object, var2264="Rendered criteria query -> %s", var3244=org.hibernate.query.criteria.internal.CriteriaQueryImpl$1, var1236=$r6}
; {org.hibernate.query.criteria.internal.CriteriaQueryImpl=var67, r1=var1117, org.hibernate.query.criteria.internal.compile.RenderingContext=var686, r2=var2447, $r0=var3935, org.hibernate.query.criteria.internal.QueryStructure=var2393, $r3=var1818, r4=var1846, org.jboss.logging.Logger=var2740, $r5=var1822, java.lang.Object=var2293, "Rendered criteria query -> %s"=var2264, org.hibernate.query.criteria.internal.CriteriaQueryImpl$1=var3244, $r6=var1236}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.CriteriaQueryImpl;	r2 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.hibernate.query.criteria.internal.CriteriaQueryImpl: org.hibernate.query.criteria.internal.QueryStructure queryStructure>;	virtualinvoke $r3.<org.hibernate.query.criteria.internal.QueryStructure: void render(java.lang.StringBuilder,org.hibernate.query.criteria.internal.compile.RenderingContext)>($r0, r2);	virtualinvoke r1.<org.hibernate.query.criteria.internal.CriteriaQueryImpl: void renderOrderByClause(org.hibernate.query.criteria.internal.compile.RenderingContext,java.lang.StringBuilder)>(r2, $r0);	r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = <org.hibernate.query.criteria.internal.CriteriaQueryImpl: org.jboss.logging.Logger log>;	virtualinvoke $r5.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object)>("Rendered criteria query -> %s", r4);	$r6 = new org.hibernate.query.criteria.internal.CriteriaQueryImpl$1;	specialinvoke $r6.<org.hibernate.query.criteria.internal.CriteriaQueryImpl$1: void <init>(org.hibernate.query.criteria.internal.CriteriaQueryImpl,java.lang.String)>(r1, r4);	return $r6
;block_num 1