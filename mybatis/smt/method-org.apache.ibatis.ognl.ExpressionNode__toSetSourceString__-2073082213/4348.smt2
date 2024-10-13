(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2491 0)
(declare-sort var107 0)
(declare-sort var1751 0)
(declare-sort var3006 0)
(declare-sort var3321 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun parent/1926309034 (var3321) var3006)
(declare-fun cast-from-var2491-to-var3321 (var2491) var3321)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun children/1926309034 (var3321) (Array Int var3006))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2491 var2491)
(declare-const null-var107 var107)
(declare-const null-var1751 var1751)
(declare-const null-var3006 var3006)
(declare-const null-__Array__Int__var3006__ (Array Int var3006))
(declare-const var3417 var2491) ; Statement: r1 := @this: org.apache.ibatis.ognl.ExpressionNode 
(assert (not (= var3417 null-var2491)))
(declare-const var90 var107) ; Statement: r8 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var90 null-var107)))
(declare-const var2814 var1751) ; Statement: r9 := @parameter1: java.lang.Object 
(assert (not (= var2814 null-var1751)))
(define-const var3951 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var624 var3006 (parent/1926309034 (cast-from-var2491-to-var3321 var3417))) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent> 
 ; Statement: if $r2 != null goto $r15 = "(" 
(assert (not (not (= var624 null-var3006)))) ; Negate: Cond: $r2 != null  
(define-const var4 String "") ; Statement: $r15 = "" 
 ; Statement: goto [?= specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r15)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1061048412 var3951 var4)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r15) 
(declare-const var3951!1 String)
(assert (= var3951!1 var4))
(define-const var3981 (Array Int var3006) (children/1926309034 (cast-from-var2491-to-var3321 var3417))) ; Statement: $r3 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node[] children> 
 ; Statement: if $r3 == null goto $r16 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent> 
(assert (= var3981 null-__Array__Int__var3006__)) ; Cond: $r3 == null 
(define-const var1708 var3006 (parent/1926309034 (cast-from-var2491-to-var3321 var3417))) ; Statement: $r16 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent> 
 ; Statement: if $r16 == null goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1708 null-var3006)) ; Cond: $r16 == null 
(assert true)
(define-const var3245 String (toString/-2075883882 var3951!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), parent/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node), cast-from-var2491-to-var3321=([org.apache.ibatis.ognl.ExpressionNode], org.apache.ibatis.ognl.SimpleNode), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2491=org.apache.ibatis.ognl.ExpressionNode, var3417=r1, var107=org.apache.ibatis.ognl.OgnlContext, var90=r8, var1751=java.lang.Object, var2814=r9, var3951=$r0, var3006=org.apache.ibatis.ognl.Node, var3321=org.apache.ibatis.ognl.SimpleNode, var624=$r2, var4=$r15, var3981=$r3, var1708=$r16, var3245=$r4}
; {org.apache.ibatis.ognl.ExpressionNode=var2491, r1=var3417, org.apache.ibatis.ognl.OgnlContext=var107, r8=var90, java.lang.Object=var1751, r9=var2814, $r0=var3951, org.apache.ibatis.ognl.Node=var3006, org.apache.ibatis.ognl.SimpleNode=var3321, $r2=var624, $r15=var4, $r3=var3981, $r16=var1708, $r4=var3245}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ExpressionNode;	r8 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r9 := @parameter1: java.lang.Object;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent>;	if $r2 != null goto $r15 = "(";	$r15 = "";	goto [?= specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r15)];	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r15);	$r3 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node[] children>;	if $r3 == null goto $r16 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent>;	$r16 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent>;	if $r16 == null goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 5