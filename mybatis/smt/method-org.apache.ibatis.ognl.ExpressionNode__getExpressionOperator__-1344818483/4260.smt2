(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var16 0)
(declare-sort var3091 0)
(declare-sort var1659 0)
(declare-sort var2612 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3091-init () var3091)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun id/1926309034 (var2612) Int)
(declare-fun cast-from-var16-to-var2612 (var16) var2612)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var3091 String) void)
(declare-const null-var16 var16)
(declare-const null-Int Int)
(declare-const var1659-jjtNodeName (Array Int String))
(declare-const var475 var16) ; Statement: r2 := @this: org.apache.ibatis.ognl.ExpressionNode 
(assert (not (= var475 null-var16)))
(declare-const var2325 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var2325 null-Int)))
(define-const var3753 var3091 var3091-init) ; Statement: $r0 = new java.lang.RuntimeException 
(define-const var3140 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3140)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3140!1 String)
(assert (= var3140!1 ""))
(assert true)
(define-const var1169 String (append/672562846 var3140!1 "unknown operator for ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown operator for ") 
(declare-const var3140!2 String)
(assert (= var3140!2 (str.++ var3140!1 "unknown operator for ")))
(define-const var1079 (Array Int String) var1659-jjtNodeName) ; Statement: $r3 = <org.apache.ibatis.ognl.OgnlParserTreeConstants: java.lang.String[] jjtNodeName> 
(define-const var3522 Int (id/1926309034 (cast-from-var16-to-var2612 var475))) ; Statement: $i0 = r2.<org.apache.ibatis.ognl.ExpressionNode: int id> 
(define-const var3102 String (select var1079 var3522)) ; Statement: $r4 = $r3[$i0] 
(assert true)
(define-const var3682 String (append/672562846 var1169 var3102)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1169!1 String)
(assert (= var1169!1 (str.++ var1169 var3102)))
(assert true)
(define-const var2195 String (toString/-2075883882 var3682)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var3753 var2195)) ; Statement: specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r7) 

(declare-const var3753!1 var3091)
(declare-const var2195!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3091-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), id/1926309034=([org.apache.ibatis.ognl.SimpleNode], int), cast-from-var16-to-var2612=([org.apache.ibatis.ognl.ExpressionNode], org.apache.ibatis.ognl.SimpleNode), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var16=org.apache.ibatis.ognl.ExpressionNode, var475=r2, var2325=i1, var3091=java.lang.RuntimeException, var3753=$r0, var3140=$r1, var1169=$r5, var1659=org.apache.ibatis.ognl.OgnlParserTreeConstants, var1079=$r3, var2612=org.apache.ibatis.ognl.SimpleNode, var3522=$i0, var3102=$r4, var3682=$r6, var2195=$r7}
; {org.apache.ibatis.ognl.ExpressionNode=var16, r2=var475, i1=var2325, java.lang.RuntimeException=var3091, $r0=var3753, $r1=var3140, $r5=var1169, org.apache.ibatis.ognl.OgnlParserTreeConstants=var1659, $r3=var1079, org.apache.ibatis.ognl.SimpleNode=var2612, $i0=var3522, $r4=var3102, $r6=var3682, $r7=var2195}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.ibatis.ognl.ExpressionNode;	i1 := @parameter0: int;	$r0 = new java.lang.RuntimeException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown operator for ");	$r3 = <org.apache.ibatis.ognl.OgnlParserTreeConstants: java.lang.String[] jjtNodeName>;	$i0 = r2.<org.apache.ibatis.ognl.ExpressionNode: int id>;	$r4 = $r3[$i0];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1