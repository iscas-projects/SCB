(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3736 0)
(declare-sort var757 0)
(declare-sort var3148 0)
(declare-sort var2881 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun children/1926309034 (var3148) (Array Int var757))
(declare-fun cast-from-var3736-to-var3148 (var3736) var3148)
(declare-fun append/-1031950772 (String var2881) String)
(declare-fun cast-from-var757-to-var2881 (var757) var2881)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3736 var3736)
(declare-const var2096 var3736) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTSelectLast 
(assert (not (= var2096 null-var3736)))
(define-const var563 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var563)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var563!1 String)
(assert (= var563!1 ""))
(assert true)
(define-const var416 String (append/672562846 var563!1 "{$ ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{$ ") 
(declare-const var563!2 String)
(assert (= var563!2 (str.++ var563!1 "{$ ")))
(define-const var470 (Array Int var757) (children/1926309034 (cast-from-var3736-to-var3148 var2096))) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTSelectLast: org.apache.ibatis.ognl.Node[] children> 
(define-const var1734 var757 (select var470 0)) ; Statement: $r3 = $r2[0] 
(assert true)
(define-const var1085 String (append/-1031950772 var416 (cast-from-var757-to-var2881 var1734))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var416!1 String)
(assert (str.prefixof var416 var416!1))
(assert true)
(define-const var2117 String (append/672562846 var1085 " }")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" }") 
(declare-const var1085!1 String)
(assert (= var1085!1 (str.++ var1085 " }")))
(assert true)
(define-const var648 String (toString/-2075883882 var2117)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var3736-to-var3148=([org.apache.ibatis.ognl.ASTSelectLast], org.apache.ibatis.ognl.SimpleNode), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var757-to-var2881=([org.apache.ibatis.ognl.Node], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3736=org.apache.ibatis.ognl.ASTSelectLast, var2096=r1, var563=$r0, var416=$r4, var757=org.apache.ibatis.ognl.Node, var3148=org.apache.ibatis.ognl.SimpleNode, var470=$r2, var1734=$r3, var2881=java.lang.Object, var1085=$r5, var2117=$r6, var648=$r7}
; {org.apache.ibatis.ognl.ASTSelectLast=var3736, r1=var2096, $r0=var563, $r4=var416, org.apache.ibatis.ognl.Node=var757, org.apache.ibatis.ognl.SimpleNode=var3148, $r2=var470, $r3=var1734, java.lang.Object=var2881, $r5=var1085, $r6=var2117, $r7=var648}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTSelectLast;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{$ ");	$r2 = r1.<org.apache.ibatis.ognl.ASTSelectLast: org.apache.ibatis.ognl.Node[] children>;	$r3 = $r2[0];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" }");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1