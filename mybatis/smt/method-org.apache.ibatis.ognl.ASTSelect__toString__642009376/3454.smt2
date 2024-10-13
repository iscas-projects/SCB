(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2109 0)
(declare-sort var2849 0)
(declare-sort var484 0)
(declare-sort var3460 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun children/1926309034 (var484) (Array Int var2849))
(declare-fun cast-from-var2109-to-var484 (var2109) var484)
(declare-fun append/-1031950772 (String var3460) String)
(declare-fun cast-from-var2849-to-var3460 (var2849) var3460)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2109 var2109)
(declare-const var1817 var2109) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTSelect 
(assert (not (= var1817 null-var2109)))
(define-const var635 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var635)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var635!1 String)
(assert (= var635!1 ""))
(assert true)
(define-const var2380 String (append/672562846 var635!1 "{? ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{? ") 
(declare-const var635!2 String)
(assert (= var635!2 (str.++ var635!1 "{? ")))
(define-const var2426 (Array Int var2849) (children/1926309034 (cast-from-var2109-to-var484 var1817))) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTSelect: org.apache.ibatis.ognl.Node[] children> 
(define-const var2195 var2849 (select var2426 0)) ; Statement: $r3 = $r2[0] 
(assert true)
(define-const var418 String (append/-1031950772 var2380 (cast-from-var2849-to-var3460 var2195))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var2380!1 String)
(assert (str.prefixof var2380 var2380!1))
(assert true)
(define-const var214 String (append/672562846 var418 " }")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" }") 
(declare-const var418!1 String)
(assert (= var418!1 (str.++ var418 " }")))
(assert true)
(define-const var3194 String (toString/-2075883882 var214)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var2109-to-var484=([org.apache.ibatis.ognl.ASTSelect], org.apache.ibatis.ognl.SimpleNode), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2849-to-var3460=([org.apache.ibatis.ognl.Node], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2109=org.apache.ibatis.ognl.ASTSelect, var1817=r1, var635=$r0, var2380=$r4, var2849=org.apache.ibatis.ognl.Node, var484=org.apache.ibatis.ognl.SimpleNode, var2426=$r2, var2195=$r3, var3460=java.lang.Object, var418=$r5, var214=$r6, var3194=$r7}
; {org.apache.ibatis.ognl.ASTSelect=var2109, r1=var1817, $r0=var635, $r4=var2380, org.apache.ibatis.ognl.Node=var2849, org.apache.ibatis.ognl.SimpleNode=var484, $r2=var2426, $r3=var2195, java.lang.Object=var3460, $r5=var418, $r6=var214, $r7=var3194}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTSelect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{? ");	$r2 = r1.<org.apache.ibatis.ognl.ASTSelect: org.apache.ibatis.ognl.Node[] children>;	$r3 = $r2[0];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" }");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1