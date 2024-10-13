(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2712 0)
(declare-sort var2434 0)
(declare-sort var3591 0)
(declare-sort var3190 0)
(declare-sort var433 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun parent/1926309034 (var433) var3190)
(declare-fun cast-from-var2712-to-var433 (var2712) var433)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun children/1926309034 (var433) (Array Int var3190))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2712 var2712)
(declare-const null-var2434 var2434)
(declare-const null-var3591 var3591)
(declare-const null-var3190 var3190)
(declare-const null-__Array__Int__var3190__ (Array Int var3190))
(declare-const var2140 var2712) ; Statement: r1 := @this: org.apache.ibatis.ognl.ExpressionNode 
(assert (not (= var2140 null-var2712)))
(declare-const var3619 var2434) ; Statement: r8 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var3619 null-var2434)))
(declare-const var522 var3591) ; Statement: r9 := @parameter1: java.lang.Object 
(assert (not (= var522 null-var3591)))
(define-const var476 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var647 var3190 (parent/1926309034 (cast-from-var2712-to-var433 var2140))) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent> 
 ; Statement: if $r2 != null goto $r15 = "(" 
(assert (not (= var647 null-var3190))) ; Cond: $r2 != null 
(define-const var1652 String "(") ; Statement: $r15 = "(" 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1061048412 var476 var1652)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r15) 
(declare-const var476!1 String)
(assert (= var476!1 var1652))
(define-const var2735 (Array Int var3190) (children/1926309034 (cast-from-var2712-to-var433 var2140))) ; Statement: $r3 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node[] children> 
 ; Statement: if $r3 == null goto $r16 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent> 
(assert (= var2735 null-__Array__Int__var3190__)) ; Cond: $r3 == null 
(define-const var3622 var3190 (parent/1926309034 (cast-from-var2712-to-var433 var2140))) ; Statement: $r16 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent> 
 ; Statement: if $r16 == null goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var3622 null-var3190)) ; Cond: $r16 == null 
(assert true)
(define-const var291 String (toString/-2075883882 var476!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), parent/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node), cast-from-var2712-to-var433=([org.apache.ibatis.ognl.ExpressionNode], org.apache.ibatis.ognl.SimpleNode), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2712=org.apache.ibatis.ognl.ExpressionNode, var2140=r1, var2434=org.apache.ibatis.ognl.OgnlContext, var3619=r8, var3591=java.lang.Object, var522=r9, var476=$r0, var3190=org.apache.ibatis.ognl.Node, var433=org.apache.ibatis.ognl.SimpleNode, var647=$r2, var1652=$r15, var2735=$r3, var3622=$r16, var291=$r4}
; {org.apache.ibatis.ognl.ExpressionNode=var2712, r1=var2140, org.apache.ibatis.ognl.OgnlContext=var2434, r8=var3619, java.lang.Object=var3591, r9=var522, $r0=var476, org.apache.ibatis.ognl.Node=var3190, org.apache.ibatis.ognl.SimpleNode=var433, $r2=var647, $r15=var1652, $r3=var2735, $r16=var3622, $r4=var291}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ExpressionNode;	r8 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r9 := @parameter1: java.lang.Object;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent>;	if $r2 != null goto $r15 = "(";	$r15 = "(";	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r15);	$r3 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node[] children>;	if $r3 == null goto $r16 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent>;	$r16 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent>;	if $r16 == null goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 5