(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1707 0)
(declare-sort var3406 0)
(declare-sort var1488 0)
(declare-sort var1975 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isIndexedAccess/-181581683 (var1707) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun children/1926309034 (var1488) (Array Int var3406))
(declare-fun cast-from-var1707-to-var1488 (var1707) var1488)
(declare-fun append/-1031950772 (String var1975) String)
(declare-fun cast-from-var3406-to-var1975 (var3406) var1975)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1707 var1707)
(declare-const var2679 var1707) ; Statement: r0 := @this: org.apache.ibatis.ognl.ASTProperty 
(assert (not (= var2679 null-var1707)))
(assert true)
(define-const var1803 Bool (isIndexedAccess/-181581683 var2679)) ; Statement: $z0 = virtualinvoke r0.<org.apache.ibatis.ognl.ASTProperty: boolean isIndexedAccess()>() 
 ; Statement: if $z0 == 0 goto $r1 = r0.<org.apache.ibatis.ognl.ASTProperty: org.apache.ibatis.ognl.Node[] children> 
(assert (not (= (ite var1803 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var767 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var767)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var767!1 String)
(assert (= var767!1 ""))
(assert true)
(define-const var138 String (append/672562846 var767!1 "[")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var767!2 String)
(assert (= var767!2 (str.++ var767!1 "[")))
(define-const var196 (Array Int var3406) (children/1926309034 (cast-from-var1707-to-var1488 var2679))) ; Statement: $r6 = r0.<org.apache.ibatis.ognl.ASTProperty: org.apache.ibatis.ognl.Node[] children> 
(define-const var2353 var3406 (select var196 0)) ; Statement: $r7 = $r6[0] 
(assert true)
(define-const var337 String (append/-1031950772 var138 (cast-from-var3406-to-var1975 var2353))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var138!1 String)
(assert (str.prefixof var138 var138!1))
(assert true)
(define-const var146 String (append/672562846 var337 "]")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var337!1 String)
(assert (= var337!1 (str.++ var337 "]")))
(assert true)
(define-const var1831 String (toString/-2075883882 var146)) ; Statement: r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return r11] 
(assert true) ; Non Conditional
 ; Statement: return r11 
(check-sat)
(get-model)
(get-unsat-core)
; {isIndexedAccess/-181581683=([org.apache.ibatis.ognl.ASTProperty], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var1707-to-var1488=([org.apache.ibatis.ognl.ASTProperty], org.apache.ibatis.ognl.SimpleNode), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3406-to-var1975=([org.apache.ibatis.ognl.Node], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1707=org.apache.ibatis.ognl.ASTProperty, var2679=r0, var1803=$z0, var767=$r5, var138=$r8, var3406=org.apache.ibatis.ognl.Node, var1488=org.apache.ibatis.ognl.SimpleNode, var196=$r6, var2353=$r7, var1975=java.lang.Object, var337=$r9, var146=$r10, var1831=r11}
; {org.apache.ibatis.ognl.ASTProperty=var1707, r0=var2679, $z0=var1803, $r5=var767, $r8=var138, org.apache.ibatis.ognl.Node=var3406, org.apache.ibatis.ognl.SimpleNode=var1488, $r6=var196, $r7=var2353, java.lang.Object=var1975, $r9=var337, $r10=var146, r11=var1831}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.ASTProperty;	$z0 = virtualinvoke r0.<org.apache.ibatis.ognl.ASTProperty: boolean isIndexedAccess()>();	if $z0 == 0 goto $r1 = r0.<org.apache.ibatis.ognl.ASTProperty: org.apache.ibatis.ognl.Node[] children>;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r6 = r0.<org.apache.ibatis.ognl.ASTProperty: org.apache.ibatis.ognl.Node[] children>;	$r7 = $r6[0];	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return r11];	return r11
;block_num 3