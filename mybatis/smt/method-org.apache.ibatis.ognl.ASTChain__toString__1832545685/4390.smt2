(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1784 0)
(declare-sort var3423 0)
(declare-sort var3283 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun children/1926309034 (var3283) (Array Int var3423))
(declare-fun cast-from-var1784-to-var3283 (var1784) var3283)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1784 var1784)
(declare-const null-__Array__Int__var3423__ (Array Int var3423))
(declare-const var3770 var1784) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTChain 
(assert (not (= var3770 null-var1784)))
(define-const var141 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var141)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var141!1 String)
(assert (= var141!1 ""))
(define-const var1667 (Array Int var3423) (children/1926309034 (cast-from-var1784-to-var3283 var3770))) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTChain: org.apache.ibatis.ognl.Node[] children> 
 ; Statement: if $r2 == null goto $r13 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1667 null-__Array__Int__var3423__)) ; Cond: $r2 == null 
(assert true)
(define-const var2556 String (toString/-2075883882 var141!1)) ; Statement: $r13 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var1784-to-var3283=([org.apache.ibatis.ognl.ASTChain], org.apache.ibatis.ognl.SimpleNode), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1784=org.apache.ibatis.ognl.ASTChain, var3770=r1, var141=$r0, var3423=org.apache.ibatis.ognl.Node, var3283=org.apache.ibatis.ognl.SimpleNode, var1667=$r2, var2556=$r13}
; {org.apache.ibatis.ognl.ASTChain=var1784, r1=var3770, $r0=var141, org.apache.ibatis.ognl.Node=var3423, org.apache.ibatis.ognl.SimpleNode=var3283, $r2=var1667, $r13=var2556}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTChain;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.ibatis.ognl.ASTChain: org.apache.ibatis.ognl.Node[] children>;	if $r2 == null goto $r13 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 2