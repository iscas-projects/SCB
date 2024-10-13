(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3990 0)
(declare-sort var2096 0)
(declare-sort var1670 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getKey/-1110653940 (var3990) var2096)
(declare-fun append/-1031950772 (String var1670) String)
(declare-fun cast-from-var2096-to-var1670 (var2096) var1670)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getValue/250149946 (var3990) var2096)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3990 var3990)
(declare-const var29 var3990) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTKeyValue 
(assert (not (= var29 null-var3990)))
(define-const var2947 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2947)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2947!1 String)
(assert (= var2947!1 ""))
(assert true)
(define-const var3787 var2096 (getKey/-1110653940 var29)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.ognl.ASTKeyValue: org.apache.ibatis.ognl.Node getKey()>() 
(assert true)
(define-const var3185 String (append/-1031950772 var2947!1 (cast-from-var2096-to-var1670 var3787))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2947!2 String)
(assert (str.prefixof var2947!1 var2947!2))
(assert true)
(define-const var3253 String (append/672562846 var3185 " -> ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var3185!1 String)
(assert (= var3185!1 (str.++ var3185 " -> ")))
(assert true)
(define-const var991 var2096 (getValue/250149946 var29)) ; Statement: $r4 = virtualinvoke r1.<org.apache.ibatis.ognl.ASTKeyValue: org.apache.ibatis.ognl.Node getValue()>() 
(assert true)
(define-const var2231 String (append/-1031950772 var3253 (cast-from-var2096-to-var1670 var991))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var3253!1 String)
(assert (str.prefixof var3253 var3253!1))
(assert true)
(define-const var2709 String (toString/-2075883882 var2231)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getKey/-1110653940=([org.apache.ibatis.ognl.ASTKeyValue], org.apache.ibatis.ognl.Node), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2096-to-var1670=([org.apache.ibatis.ognl.Node], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getValue/250149946=([org.apache.ibatis.ognl.ASTKeyValue], org.apache.ibatis.ognl.Node), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3990=org.apache.ibatis.ognl.ASTKeyValue, var29=r1, var2947=$r0, var2096=org.apache.ibatis.ognl.Node, var3787=$r2, var1670=java.lang.Object, var3185=$r3, var3253=$r5, var991=$r4, var2231=$r6, var2709=$r7}
; {org.apache.ibatis.ognl.ASTKeyValue=var3990, r1=var29, $r0=var2947, org.apache.ibatis.ognl.Node=var2096, $r2=var3787, java.lang.Object=var1670, $r3=var3185, $r5=var3253, $r4=var991, $r6=var2231, $r7=var2709}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTKeyValue;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.apache.ibatis.ognl.ASTKeyValue: org.apache.ibatis.ognl.Node getKey()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$r4 = virtualinvoke r1.<org.apache.ibatis.ognl.ASTKeyValue: org.apache.ibatis.ognl.Node getValue()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1