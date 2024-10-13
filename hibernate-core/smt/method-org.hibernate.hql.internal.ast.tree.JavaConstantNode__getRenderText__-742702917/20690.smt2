(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3271 0)
(declare-sort var3032 0)
(declare-sort var1856 0)
(declare-sort var2620 0)
(declare-sort var2776 0)
(declare-sort var1029 0)
(declare-sort var3744 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2620!class ClassObject)
(declare-fun expectedType/-1611471540 (var3271) var1856)
(declare-fun heuristicType/-1611471540 (var3271) var1856)
(declare-fun var1029-init () var1029)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun constantExpression/-1611471540 (var3271) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1292940450 (var1029 String var2776) void)
(declare-fun cast-from-var1029-to-var3744 (var1029) var3744)
(declare-const null-var3271 var3271)
(declare-const null-var3032 var3032)
(declare-const null-var1856 var1856)
(declare-const null-var2776 var2776)
(declare-const var1419 var3271) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.JavaConstantNode 
(assert (not (= var1419 null-var3271)))
(declare-const var3716 var3032) ; Statement: r43 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var3716 null-var3032)))
(define-const var47 var1856 (expectedType/-1611471540 var1419)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.ast.tree.JavaConstantNode: org.hibernate.type.Type expectedType> 
 ; Statement: if $r1 != null goto $r4 = class "Ljava/lang/Number;" 
(assert (not (not (= var47 null-var1856)))) ; Negate: Cond: $r1 != null  
(define-const var2047 var1856 (heuristicType/-1611471540 var1419)) ; Statement: $r44 = r0.<org.hibernate.hql.internal.ast.tree.JavaConstantNode: org.hibernate.type.Type heuristicType> 
 ; Statement: goto [?= $r45 = class "Lorg/hibernate/type/LiteralType;"] 
(assert true) ; Non Conditional
(define-const var786 ClassObject var2620!class) ; Statement: $r45 = class "Lorg/hibernate/type/LiteralType;" 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1255 var2776) ; Statement: $r36 := @caughtexception 
(assert (not (= var1255 null-var2776)))
(define-const var3893 var1029 var1029-init) ; Statement: $r54 = new org.hibernate.QueryException 
(define-const var1781 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1781)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1781!1 String)
(assert (= var1781!1 ""))
(assert true)
(define-const var2358 String (append/672562846 var1781!1 "Could not format constant value to SQL literal: ")) ; Statement: $r40 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not format constant value to SQL literal: ") 
(declare-const var1781!2 String)
(assert (= var1781!2 (str.++ var1781!1 "Could not format constant value to SQL literal: ")))
(define-const var2865 String (constantExpression/-1611471540 var1419)) ; Statement: $r39 = r0.<org.hibernate.hql.internal.ast.tree.JavaConstantNode: java.lang.String constantExpression> 
(assert true)
(define-const var402 String (append/672562846 var2358 var2865)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39) 
(declare-const var2358!1 String)
(assert (= var2358!1 (str.++ var2358 var2865)))
(assert true)
(define-const var2143 String (toString/-2075883882 var402)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1292940450 var3893 var2143 var1255)) ; Statement: specialinvoke $r54.<org.hibernate.QueryException: void <init>(java.lang.String,java.lang.Exception)>($r42, $r36) 

(declare-const var3893!1 var1029)
(declare-const var2143!1 String)
(declare-const var1255!1 var2776)
(define-const var70 var3744 (cast-from-var1029-to-var3744 var3893!1)) ; Statement: $r57 = (java.lang.Throwable) $r54 
 ; Statement: throw $r57 
(check-sat)
(get-model)
(get-unsat-core)
; {expectedType/-1611471540=([org.hibernate.hql.internal.ast.tree.JavaConstantNode], org.hibernate.type.Type), heuristicType/-1611471540=([org.hibernate.hql.internal.ast.tree.JavaConstantNode], org.hibernate.type.Type), var1029-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), constantExpression/-1611471540=([org.hibernate.hql.internal.ast.tree.JavaConstantNode], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1292940450=([org.hibernate.QueryException, java.lang.String, java.lang.Exception], void), cast-from-var1029-to-var3744=([org.hibernate.QueryException], java.lang.Throwable)}
; {var3271=org.hibernate.hql.internal.ast.tree.JavaConstantNode, var1419=r0, var3032=org.hibernate.engine.spi.SessionFactoryImplementor, var3716=r43, var1856=org.hibernate.type.Type, var47=$r1, var2047=$r44, var2620=org.hibernate.type.LiteralType, var786=$r45, var2776=java.lang.Exception, var1255=$r36, var1029=org.hibernate.QueryException, var3893=$r54, var1781=$r53, var2358=$r40, var2865=$r39, var402=$r41, var2143=$r42, var3744=java.lang.Throwable, var70=$r57}
; {org.hibernate.hql.internal.ast.tree.JavaConstantNode=var3271, r0=var1419, org.hibernate.engine.spi.SessionFactoryImplementor=var3032, r43=var3716, org.hibernate.type.Type=var1856, $r1=var47, $r44=var2047, org.hibernate.type.LiteralType=var2620, $r45=var786, java.lang.Exception=var2776, $r36=var1255, org.hibernate.QueryException=var1029, $r54=var3893, $r53=var1781, $r40=var2358, $r39=var2865, $r41=var402, $r42=var2143, java.lang.Throwable=var3744, $r57=var70}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.JavaConstantNode;	r43 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor;	$r1 = r0.<org.hibernate.hql.internal.ast.tree.JavaConstantNode: org.hibernate.type.Type expectedType>;	if $r1 != null goto $r4 = class "Ljava/lang/Number;";	$r44 = r0.<org.hibernate.hql.internal.ast.tree.JavaConstantNode: org.hibernate.type.Type heuristicType>;	goto [?= $r45 = class "Lorg/hibernate/type/LiteralType;"];	$r45 = class "Lorg/hibernate/type/LiteralType;";	$r36 := @caughtexception;	$r54 = new org.hibernate.QueryException;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r40 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not format constant value to SQL literal: ");	$r39 = r0.<org.hibernate.hql.internal.ast.tree.JavaConstantNode: java.lang.String constantExpression>;	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r54.<org.hibernate.QueryException: void <init>(java.lang.String,java.lang.Exception)>($r42, $r36);	$r57 = (java.lang.Throwable) $r54;	throw $r57
;block_num 4