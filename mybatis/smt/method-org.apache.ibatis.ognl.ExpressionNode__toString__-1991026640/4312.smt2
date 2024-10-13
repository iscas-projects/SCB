(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2779 0)
(declare-sort var2633 0)
(declare-sort var3149 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun parent/1926309034 (var3149) var2633)
(declare-fun cast-from-var2779-to-var3149 (var2779) var3149)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun children/1926309034 (var3149) (Array Int var2633))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2779 var2779)
(declare-const null-var2633 var2633)
(declare-const null-__Array__Int__var2633__ (Array Int var2633))
(declare-const var2622 var2779) ; Statement: r1 := @this: org.apache.ibatis.ognl.ExpressionNode 
(assert (not (= var2622 null-var2779)))
(define-const var1264 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var1504 var2633 (parent/1926309034 (cast-from-var2779-to-var3149 var2622))) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent> 
 ; Statement: if $r2 != null goto $r13 = "(" 
(assert (not (= var1504 null-var2633))) ; Cond: $r2 != null 
(define-const var2684 String "(") ; Statement: $r13 = "(" 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1061048412 var1264 var2684)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r13) 
(declare-const var1264!1 String)
(assert (= var1264!1 var2684))
(define-const var3667 (Array Int var2633) (children/1926309034 (cast-from-var2779-to-var3149 var2622))) ; Statement: $r3 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node[] children> 
 ; Statement: if $r3 == null goto $r14 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent> 
(assert (= var3667 null-__Array__Int__var2633__)) ; Cond: $r3 == null 
(define-const var3819 var2633 (parent/1926309034 (cast-from-var2779-to-var3149 var2622))) ; Statement: $r14 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent> 
 ; Statement: if $r14 == null goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var3819 null-var2633)) ; Cond: $r14 == null 
(assert true)
(define-const var3321 String (toString/-2075883882 var1264!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), parent/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node), cast-from-var2779-to-var3149=([org.apache.ibatis.ognl.ExpressionNode], org.apache.ibatis.ognl.SimpleNode), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2779=org.apache.ibatis.ognl.ExpressionNode, var2622=r1, var1264=$r0, var2633=org.apache.ibatis.ognl.Node, var3149=org.apache.ibatis.ognl.SimpleNode, var1504=$r2, var2684=$r13, var3667=$r3, var3819=$r14, var3321=$r4}
; {org.apache.ibatis.ognl.ExpressionNode=var2779, r1=var2622, $r0=var1264, org.apache.ibatis.ognl.Node=var2633, org.apache.ibatis.ognl.SimpleNode=var3149, $r2=var1504, $r13=var2684, $r3=var3667, $r14=var3819, $r4=var3321}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ExpressionNode;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent>;	if $r2 != null goto $r13 = "(";	$r13 = "(";	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r13);	$r3 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node[] children>;	if $r3 == null goto $r14 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent>;	$r14 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent>;	if $r14 == null goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 5