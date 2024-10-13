(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3734 0)
(declare-sort var2883 0)
(declare-sort var1822 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun children/1926309034 (var1822) (Array Int var2883))
(declare-fun cast-from-var3734-to-var1822 (var3734) var1822)
(declare-fun getLength-Arr-var2883-1 ((Array Int var2883)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3734 var3734)
(declare-const var390 var3734) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTSequence 
(assert (not (= var390 null-var3734)))
(define-const var3172 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3172)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3172!1 String)
(assert (= var3172!1 ""))
(define-const var3924 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var845 (Array Int var2883) (children/1926309034 (cast-from-var3734-to-var1822 var390))) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTSequence: org.apache.ibatis.ognl.Node[] children> 
(define-const var3445 Int (getLength-Arr-var2883-1 var845)) ; Statement: $i0 = lengthof $r2 
 ; Statement: if i1 >= $i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3924 var3445)) ; Cond: i1 >= $i0 
(assert true)
(define-const var1188 String (toString/-2075883882 var3172!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var3734-to-var1822=([org.apache.ibatis.ognl.ASTSequence], org.apache.ibatis.ognl.SimpleNode), getLength-Arr-var2883-1=([org.apache.ibatis.ognl.Node[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3734=org.apache.ibatis.ognl.ASTSequence, var390=r1, var3172=$r0, var3924=i1, var2883=org.apache.ibatis.ognl.Node, var1822=org.apache.ibatis.ognl.SimpleNode, var845=$r2, var3445=$i0, var1188=$r3}
; {org.apache.ibatis.ognl.ASTSequence=var3734, r1=var390, $r0=var3172, i1=var3924, org.apache.ibatis.ognl.Node=var2883, org.apache.ibatis.ognl.SimpleNode=var1822, $r2=var845, $i0=var3445, $r3=var1188}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTSequence;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i1 = 0;	$r2 = r1.<org.apache.ibatis.ognl.ASTSequence: org.apache.ibatis.ognl.Node[] children>;	$i0 = lengthof $r2;	if i1 >= $i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3