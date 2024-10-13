(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2861 0)
(declare-sort var1734 0)
(declare-sort var3792 0)
(declare-sort var298 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun selectExpression/199852408 (var2861) var3792)
(declare-fun var3792_getScalarColumnIndex/-1227120264 (var3792) Int)
(declare-fun var298-init () var298)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var298 String) void)
(declare-const null-var2861 var2861)
(declare-const null-var1734 var1734)
(declare-const var2348 var2861) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.ResultVariableRefNode 
(assert (not (= var2348 null-var2861)))
(declare-const var774 var1734) ; Statement: r2 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var774 null-var1734)))
(define-const var2477 var3792 (selectExpression/199852408 var2348)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.ast.tree.ResultVariableRefNode: org.hibernate.hql.internal.ast.tree.SelectExpression selectExpression> 
(define-const var878 Int (var3792_getScalarColumnIndex/-1227120264 var2477)) ; Statement: i0 = interfaceinvoke $r1.<org.hibernate.hql.internal.ast.tree.SelectExpression: int getScalarColumnIndex()>() 
 ; Statement: if i0 >= 0 goto $r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.dialect.Dialect getDialect()>() 
(assert (not (>= var878 0))) ; Negate: Cond: i0 >= 0  
(define-const var3901 var298 var298-init) ; Statement: $r4 = new java.lang.IllegalStateException 
(define-const var1490 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1490)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1490!1 String)
(assert (= var1490!1 ""))
(assert true)
(define-const var724 String (append/672562846 var1490!1 "selectExpression.getScalarColumnIndex() must be >= 0; actual = ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("selectExpression.getScalarColumnIndex() must be >= 0; actual = ") 
(declare-const var1490!2 String)
(assert (= var1490!2 (str.++ var1490!1 "selectExpression.getScalarColumnIndex() must be >= 0; actual = ")))
(assert true)
(define-const var899 String (append/-1001720160 var724 var878)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var724!1 String)
(assert (str.prefixof var724 var724!1))
(assert true)
(define-const var1835 String (toString/-2075883882 var899)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3901 var1835)) ; Statement: specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var3901!1 var298)
(declare-const var1835!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {selectExpression/199852408=([org.hibernate.hql.internal.ast.tree.ResultVariableRefNode], org.hibernate.hql.internal.ast.tree.SelectExpression), var3792_getScalarColumnIndex/-1227120264=([org.hibernate.hql.internal.ast.tree.SelectExpression], int), var298-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2861=org.hibernate.hql.internal.ast.tree.ResultVariableRefNode, var2348=r0, var1734=org.hibernate.engine.spi.SessionFactoryImplementor, var774=r2, var3792=org.hibernate.hql.internal.ast.tree.SelectExpression, var2477=$r1, var878=i0, var298=java.lang.IllegalStateException, var3901=$r4, var1490=$r5, var724=$r6, var899=$r7, var1835=$r8}
; {org.hibernate.hql.internal.ast.tree.ResultVariableRefNode=var2861, r0=var2348, org.hibernate.engine.spi.SessionFactoryImplementor=var1734, r2=var774, org.hibernate.hql.internal.ast.tree.SelectExpression=var3792, $r1=var2477, i0=var878, java.lang.IllegalStateException=var298, $r4=var3901, $r5=var1490, $r6=var724, $r7=var899, $r8=var1835}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.ResultVariableRefNode;	r2 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor;	$r1 = r0.<org.hibernate.hql.internal.ast.tree.ResultVariableRefNode: org.hibernate.hql.internal.ast.tree.SelectExpression selectExpression>;	i0 = interfaceinvoke $r1.<org.hibernate.hql.internal.ast.tree.SelectExpression: int getScalarColumnIndex()>();	if i0 >= 0 goto $r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.dialect.Dialect getDialect()>();	$r4 = new java.lang.IllegalStateException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("selectExpression.getScalarColumnIndex() must be >= 0; actual = ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2