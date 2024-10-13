(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1386 0)
(declare-sort var181 0)
(declare-sort var3772 0)
(declare-sort var2889 0)
(declare-sort var2718 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getOperation/-1638489307 (var1386) var3772)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getOperand/-353741622 (var1386) var2889)
(declare-fun cast-from-var2889-to-var2718 (var2889) var2718)
(declare-fun var2718_render/-1233042088 (var2718 var181) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1386 var1386)
(declare-const null-var181 var181)
(declare-const var3772-UNARY_MINUS var3772)
(declare-const var3651 var1386) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation 
(assert (not (= var3651 null-var1386)))
(declare-const var3613 var181) ; Statement: r5 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var3613 null-var181)))
(define-const var550 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var550)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var550!1 String)
(assert (= var550!1 ""))
(assert true)
(define-const var306 var3772 (getOperation/-1638489307 var3651)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation: org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation$Operation getOperation()>() 
(define-const var3518 var3772 var3772-UNARY_MINUS) ; Statement: $r2 = <org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation$Operation: org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation$Operation UNARY_MINUS> 
 ; Statement: if $r3 != $r2 goto $c0 = 43 
(assert (not (not (= var306 var3518)))) ; Negate: Cond: $r3 != $r2  
(define-const var1982 Int 45) ; Statement: $c0 = 45 
 ; Statement: goto [?= $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0)] 
(assert true) ; Non Conditional
(assert true)
(define-const var841 String (append/-1166366385 var550!1 var1982)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var550!2 String)
(assert (str.prefixof var550!1 var550!2))
(assert true)
(define-const var2298 var2889 (getOperand/-353741622 var3651)) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation: javax.persistence.criteria.Expression getOperand()>() 
(define-const var2642 var2718 (cast-from-var2889-to-var2718 var2298)) ; Statement: $r6 = (org.hibernate.query.criteria.internal.Renderable) $r4 
(define-const var293 String (var2718_render/-1233042088 var2642 var3613)) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r5) 
(assert true)
(define-const var1729 String (append/672562846 var841 var293)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var841!1 String)
(assert (= var841!1 (str.++ var841 var293)))
(assert true)
(define-const var2819 String (toString/-2075883882 var1729)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getOperation/-1638489307=([org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation], org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation$Operation), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getOperand/-353741622=([org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation], javax.persistence.criteria.Expression), cast-from-var2889-to-var2718=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.Renderable), var2718_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1386=org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation, var3651=r1, var181=org.hibernate.query.criteria.internal.compile.RenderingContext, var3613=r5, var550=$r0, var3772=org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation$Operation, var306=$r3, var3518=$r2, var1982=$c0, var841=$r8, var2889=javax.persistence.criteria.Expression, var2298=$r4, var2718=org.hibernate.query.criteria.internal.Renderable, var2642=$r6, var293=$r7, var1729=$r9, var2819=$r10}
; {org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation=var1386, r1=var3651, org.hibernate.query.criteria.internal.compile.RenderingContext=var181, r5=var3613, $r0=var550, org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation$Operation=var3772, $r3=var306, $r2=var3518, $c0=var1982, $r8=var841, javax.persistence.criteria.Expression=var2889, $r4=var2298, org.hibernate.query.criteria.internal.Renderable=var2718, $r6=var2642, $r7=var293, $r9=var1729, $r10=var2819}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation;	r5 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation: org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation$Operation getOperation()>();	$r2 = <org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation$Operation: org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation$Operation UNARY_MINUS>;	if $r3 != $r2 goto $c0 = 43;	$c0 = 45;	goto [?= $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0)];	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$r4 = virtualinvoke r1.<org.hibernate.query.criteria.internal.expression.UnaryArithmeticOperation: javax.persistence.criteria.Expression getOperand()>();	$r6 = (org.hibernate.query.criteria.internal.Renderable) $r4;	$r7 = interfaceinvoke $r6.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r5);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3