(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var450 0)
(declare-sort var3092 0)
(declare-sort var3583 0)
(declare-sort var124 0)
(declare-sort var3611 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getOperation/-1638489307 (var450) var3583)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getOperand/-353741622 (var450) var124)
(declare-fun cast-from-var124-to-var3611 (var124) var3611)
(declare-fun var3611_render/-1233042088 (var3611 var3092) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var450 var450)
(declare-const null-var3092 var3092)
(declare-const var3583-UNARY_MINUS var3583)
(declare-const var1590 var450) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation 
(assert (not (= var1590 null-var450)))
(declare-const var242 var3092) ; Statement: r5 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var242 null-var3092)))
(define-const var3129 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3129)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3129!1 String)
(assert (= var3129!1 ""))
(assert true)
(define-const var3437 var3583 (getOperation/-1638489307 var1590)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation: org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation$Operation getOperation()>() 
(define-const var3312 var3583 var3583-UNARY_MINUS) ; Statement: $r2 = <org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation$Operation: org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation$Operation UNARY_MINUS> 
 ; Statement: if $r3 != $r2 goto $c0 = 43 
(assert (not (= var3437 var3312))) ; Cond: $r3 != $r2 
(define-const var3531 Int 43) ; Statement: $c0 = 43 
(assert true) ; Non Conditional
(assert true)
(define-const var1111 String (append/-1166366385 var3129!1 var3531)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var3129!2 String)
(assert (str.prefixof var3129!1 var3129!2))
(assert true)
(define-const var3960 var124 (getOperand/-353741622 var1590)) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation: javax.persistence.criteria.Expression getOperand()>() 
(define-const var505 var3611 (cast-from-var124-to-var3611 var3960)) ; Statement: $r6 = (org.hibernate.query.criteria.internal.Renderable) $r4 
(define-const var2026 String (var3611_render/-1233042088 var505 var242)) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r5) 
(assert true)
(define-const var1686 String (append/672562846 var1111 var2026)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1111!1 String)
(assert (= var1111!1 (str.++ var1111 var2026)))
(assert true)
(define-const var3623 String (toString/-2075883882 var1686)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getOperation/-1638489307=([org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation], org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation$Operation), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getOperand/-353741622=([org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation], javax.persistence.criteria.Expression), cast-from-var124-to-var3611=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.Renderable), var3611_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var450=org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation, var1590=r1, var3092=org.hibernate.query.criteria.internal.compile.RenderingContext, var242=r5, var3129=$r0, var3583=org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation$Operation, var3437=$r3, var3312=$r2, var3531=$c0, var1111=$r8, var124=javax.persistence.criteria.Expression, var3960=$r4, var3611=org.hibernate.query.criteria.internal.Renderable, var505=$r6, var2026=$r7, var1686=$r9, var3623=$r10}
; {org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation=var450, r1=var1590, org.hibernate.query.criteria.internal.compile.RenderingContext=var3092, r5=var242, $r0=var3129, org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation$Operation=var3583, $r3=var3437, $r2=var3312, $c0=var3531, $r8=var1111, javax.persistence.criteria.Expression=var124, $r4=var3960, org.hibernate.query.criteria.internal.Renderable=var3611, $r6=var505, $r7=var2026, $r9=var1686, $r10=var3623}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation;	r5 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation: org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation$Operation getOperation()>();	$r2 = <org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation$Operation: org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation$Operation UNARY_MINUS>;	if $r3 != $r2 goto $c0 = 43;	$c0 = 43;	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$r4 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation: javax.persistence.criteria.Expression getOperand()>();	$r6 = (org.hibernate.query.criteria.internal.Renderable) $r4;	$r7 = interfaceinvoke $r6.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r5);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3