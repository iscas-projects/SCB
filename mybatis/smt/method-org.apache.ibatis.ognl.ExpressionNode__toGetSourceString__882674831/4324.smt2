(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var52 0)
(declare-sort var1549 0)
(declare-sort var3704 0)
(declare-sort var3596 0)
(declare-sort var2305 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun parent/1926309034 (var2305) var3596)
(declare-fun cast-from-var52-to-var2305 (var52) var2305)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun children/1926309034 (var2305) (Array Int var3596))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var52 var52)
(declare-const null-var1549 var1549)
(declare-const null-var3704 var3704)
(declare-const null-var3596 var3596)
(declare-const null-__Array__Int__var3596__ (Array Int var3596))
(declare-const var1165 var52) ; Statement: r1 := @this: org.apache.ibatis.ognl.ExpressionNode 
(assert (not (= var1165 null-var52)))
(declare-const var3802 var1549) ; Statement: r10 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var3802 null-var1549)))
(declare-const var58 var3704) ; Statement: r11 := @parameter1: java.lang.Object 
(assert (not (= var58 null-var3704)))
(define-const var1767 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var2489 var3596 (parent/1926309034 (cast-from-var52-to-var2305 var1165))) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent> 
 ; Statement: if $r2 == null goto $r43 = "" 
(assert (= var2489 null-var3596)) ; Cond: $r2 == null 
(define-const var475 String "") ; Statement: $r43 = "" 
 ; Statement: goto [?= specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r43)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1061048412 var1767 var475)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r43) 
(declare-const var1767!1 String)
(assert (= var1767!1 var475))
(define-const var2363 (Array Int var3596) (children/1926309034 (cast-from-var52-to-var2305 var1165))) ; Statement: $r3 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node[] children> 
 ; Statement: if $r3 == null goto $r47 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent> 
(assert (= var2363 null-__Array__Int__var3596__)) ; Cond: $r3 == null 
(define-const var319 var3596 (parent/1926309034 (cast-from-var52-to-var2305 var1165))) ; Statement: $r47 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent> 
 ; Statement: if $r47 == null goto $r48 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var319 null-var3596)) ; Cond: $r47 == null 
(assert true)
(define-const var883 String (toString/-2075883882 var1767!1)) ; Statement: $r48 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r48 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), parent/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node), cast-from-var52-to-var2305=([org.apache.ibatis.ognl.ExpressionNode], org.apache.ibatis.ognl.SimpleNode), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var52=org.apache.ibatis.ognl.ExpressionNode, var1165=r1, var1549=org.apache.ibatis.ognl.OgnlContext, var3802=r10, var3704=java.lang.Object, var58=r11, var1767=$r0, var3596=org.apache.ibatis.ognl.Node, var2305=org.apache.ibatis.ognl.SimpleNode, var2489=$r2, var475=$r43, var2363=$r3, var319=$r47, var883=$r48}
; {org.apache.ibatis.ognl.ExpressionNode=var52, r1=var1165, org.apache.ibatis.ognl.OgnlContext=var1549, r10=var3802, java.lang.Object=var3704, r11=var58, $r0=var1767, org.apache.ibatis.ognl.Node=var3596, org.apache.ibatis.ognl.SimpleNode=var2305, $r2=var2489, $r43=var475, $r3=var2363, $r47=var319, $r48=var883}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ExpressionNode;	r10 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r11 := @parameter1: java.lang.Object;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent>;	if $r2 == null goto $r43 = "";	$r43 = "";	goto [?= specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r43)];	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r43);	$r3 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node[] children>;	if $r3 == null goto $r47 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent>;	$r47 = r1.<org.apache.ibatis.ognl.ExpressionNode: org.apache.ibatis.ognl.Node parent>;	if $r47 == null goto $r48 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r48 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r48
;block_num 5