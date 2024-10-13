(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2209 0)
(declare-sort var3497 0)
(declare-sort var2197 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun parent/1926309034 (var2197) var3497)
(declare-fun cast-from-var2209-to-var2197 (var2209) var2197)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun children/1926309034 (var2197) (Array Int var3497))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2209 var2209)
(declare-const null-var3497 var3497)
(declare-const null-__Array__Int__var3497__ (Array Int var3497))
(declare-const var1272 var2209) ; Statement: r1 := @this: org.apache.ibatis.ognl.ExpressionNode 
(assert (not (= var1272 null-var2209)))
(define-const var3640 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var1339 var3497 (parent/1926309034 (cast-from-var2209-to-var2197 var1272))) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent> 
 ; Statement: if $r2 != null goto $r13 = "(" 
(assert (not (not (= var1339 null-var3497)))) ; Negate: Cond: $r2 != null  
(define-const var2191 String "") ; Statement: $r13 = "" 
 ; Statement: goto [?= specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r13)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1061048412 var3640 var2191)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r13) 
(declare-const var3640!1 String)
(assert (= var3640!1 var2191))
(define-const var2721 (Array Int var3497) (children/1926309034 (cast-from-var2209-to-var2197 var1272))) ; Statement: $r3 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node[] children> 
 ; Statement: if $r3 == null goto $r14 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent> 
(assert (= var2721 null-__Array__Int__var3497__)) ; Cond: $r3 == null 
(define-const var1351 var3497 (parent/1926309034 (cast-from-var2209-to-var2197 var1272))) ; Statement: $r14 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent> 
 ; Statement: if $r14 == null goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1351 null-var3497)) ; Cond: $r14 == null 
(assert true)
(define-const var1253 String (toString/-2075883882 var3640!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), parent/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node), cast-from-var2209-to-var2197=([org.apache.ibatis.ognl.ExpressionNode], org.apache.ibatis.ognl.SimpleNode), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2209=org.apache.ibatis.ognl.ExpressionNode, var1272=r1, var3640=$r0, var3497=org.apache.ibatis.ognl.Node, var2197=org.apache.ibatis.ognl.SimpleNode, var1339=$r2, var2191=$r13, var2721=$r3, var1351=$r14, var1253=$r4}
; {org.apache.ibatis.ognl.ExpressionNode=var2209, r1=var1272, $r0=var3640, org.apache.ibatis.ognl.Node=var3497, org.apache.ibatis.ognl.SimpleNode=var2197, $r2=var1339, $r13=var2191, $r3=var2721, $r14=var1351, $r4=var1253}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ExpressionNode;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent>;	if $r2 != null goto $r13 = "(";	$r13 = "";	goto [?= specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r13)];	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r13);	$r3 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node[] children>;	if $r3 == null goto $r14 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent>;	$r14 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent>;	if $r14 == null goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 5