(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var112 0)
(declare-sort var3093 0)
(declare-sort var3099 0)
(declare-sort var3615 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun children/1926309034 (var3099) (Array Int var3093))
(declare-fun cast-from-var112-to-var3099 (var112) var3099)
(declare-fun append/-1031950772 (String var3615) String)
(declare-fun cast-from-var3093-to-var3615 (var3093) var3615)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var112 var112)
(declare-const var2446 var112) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTNegate 
(assert (not (= var2446 null-var112)))
(define-const var3908 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3908)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3908!1 String)
(assert (= var3908!1 ""))
(assert true)
(define-const var2887 String (append/672562846 var3908!1 "-")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var3908!2 String)
(assert (= var3908!2 (str.++ var3908!1 "-")))
(define-const var184 (Array Int var3093) (children/1926309034 (cast-from-var112-to-var3099 var2446))) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTNegate: org.apache.ibatis.ognl.Node[] children> 
(define-const var1398 var3093 (select var184 0)) ; Statement: $r3 = $r2[0] 
(assert true)
(define-const var3127 String (append/-1031950772 var2887 (cast-from-var3093-to-var3615 var1398))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var2887!1 String)
(assert (str.prefixof var2887 var2887!1))
(assert true)
(define-const var3429 String (toString/-2075883882 var3127)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var112-to-var3099=([org.apache.ibatis.ognl.ASTNegate], org.apache.ibatis.ognl.SimpleNode), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3093-to-var3615=([org.apache.ibatis.ognl.Node], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var112=org.apache.ibatis.ognl.ASTNegate, var2446=r1, var3908=$r0, var2887=$r4, var3093=org.apache.ibatis.ognl.Node, var3099=org.apache.ibatis.ognl.SimpleNode, var184=$r2, var1398=$r3, var3615=java.lang.Object, var3127=$r5, var3429=$r6}
; {org.apache.ibatis.ognl.ASTNegate=var112, r1=var2446, $r0=var3908, $r4=var2887, org.apache.ibatis.ognl.Node=var3093, org.apache.ibatis.ognl.SimpleNode=var3099, $r2=var184, $r3=var1398, java.lang.Object=var3615, $r5=var3127, $r6=var3429}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTNegate;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r2 = r1.<org.apache.ibatis.ognl.ASTNegate: org.apache.ibatis.ognl.Node[] children>;	$r3 = $r2[0];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1