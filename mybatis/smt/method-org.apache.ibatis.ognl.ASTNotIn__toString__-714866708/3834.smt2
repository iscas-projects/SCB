(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2193 0)
(declare-sort var2296 0)
(declare-sort var2217 0)
(declare-sort var3624 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun children/1926309034 (var2217) (Array Int var2296))
(declare-fun cast-from-var2193-to-var2217 (var2193) var2217)
(declare-fun append/-1031950772 (String var3624) String)
(declare-fun cast-from-var2296-to-var3624 (var2296) var3624)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2193 var2193)
(declare-const var2878 var2193) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTNotIn 
(assert (not (= var2878 null-var2193)))
(define-const var2015 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2015)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2015!1 String)
(assert (= var2015!1 ""))
(define-const var23 (Array Int var2296) (children/1926309034 (cast-from-var2193-to-var2217 var2878))) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTNotIn: org.apache.ibatis.ognl.Node[] children> 
(define-const var3593 var2296 (select var23 0)) ; Statement: $r3 = $r2[0] 
(assert true)
(define-const var180 String (append/-1031950772 var2015!1 (cast-from-var2296-to-var3624 var3593))) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var2015!2 String)
(assert (str.prefixof var2015!1 var2015!2))
(assert true)
(define-const var1591 String (append/672562846 var180 " not in ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not in ") 
(declare-const var180!1 String)
(assert (= var180!1 (str.++ var180 " not in ")))
(define-const var2385 (Array Int var2296) (children/1926309034 (cast-from-var2193-to-var2217 var2878))) ; Statement: $r5 = r1.<org.apache.ibatis.ognl.ASTNotIn: org.apache.ibatis.ognl.Node[] children> 
(define-const var1062 var2296 (select var2385 1)) ; Statement: $r6 = $r5[1] 
(assert true)
(define-const var2258 String (append/-1031950772 var1591 (cast-from-var2296-to-var3624 var1062))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var1591!1 String)
(assert (str.prefixof var1591 var1591!1))
(assert true)
(define-const var3130 String (toString/-2075883882 var2258)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var2193-to-var2217=([org.apache.ibatis.ognl.ASTNotIn], org.apache.ibatis.ognl.SimpleNode), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2296-to-var3624=([org.apache.ibatis.ognl.Node], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2193=org.apache.ibatis.ognl.ASTNotIn, var2878=r1, var2015=$r0, var2296=org.apache.ibatis.ognl.Node, var2217=org.apache.ibatis.ognl.SimpleNode, var23=$r2, var3593=$r3, var3624=java.lang.Object, var180=$r4, var1591=$r7, var2385=$r5, var1062=$r6, var2258=$r8, var3130=$r9}
; {org.apache.ibatis.ognl.ASTNotIn=var2193, r1=var2878, $r0=var2015, org.apache.ibatis.ognl.Node=var2296, org.apache.ibatis.ognl.SimpleNode=var2217, $r2=var23, $r3=var3593, java.lang.Object=var3624, $r4=var180, $r7=var1591, $r5=var2385, $r6=var1062, $r8=var2258, $r9=var3130}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTNotIn;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.ibatis.ognl.ASTNotIn: org.apache.ibatis.ognl.Node[] children>;	$r3 = $r2[0];	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not in ");	$r5 = r1.<org.apache.ibatis.ognl.ASTNotIn: org.apache.ibatis.ognl.Node[] children>;	$r6 = $r5[1];	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1