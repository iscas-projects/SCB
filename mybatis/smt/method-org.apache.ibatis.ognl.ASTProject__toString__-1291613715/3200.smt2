(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1029 0)
(declare-sort var2016 0)
(declare-sort var813 0)
(declare-sort var2718 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun children/1926309034 (var813) (Array Int var2016))
(declare-fun cast-from-var1029-to-var813 (var1029) var813)
(declare-fun append/-1031950772 (String var2718) String)
(declare-fun cast-from-var2016-to-var2718 (var2016) var2718)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1029 var1029)
(declare-const var2998 var1029) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTProject 
(assert (not (= var2998 null-var1029)))
(define-const var1585 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1585)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1585!1 String)
(assert (= var1585!1 ""))
(assert true)
(define-const var3123 String (append/672562846 var1585!1 "{ ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{ ") 
(declare-const var1585!2 String)
(assert (= var1585!2 (str.++ var1585!1 "{ ")))
(define-const var1017 (Array Int var2016) (children/1926309034 (cast-from-var1029-to-var813 var2998))) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTProject: org.apache.ibatis.ognl.Node[] children> 
(define-const var3791 var2016 (select var1017 0)) ; Statement: $r3 = $r2[0] 
(assert true)
(define-const var832 String (append/-1031950772 var3123 (cast-from-var2016-to-var2718 var3791))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var3123!1 String)
(assert (str.prefixof var3123 var3123!1))
(assert true)
(define-const var1290 String (append/672562846 var832 " }")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" }") 
(declare-const var832!1 String)
(assert (= var832!1 (str.++ var832 " }")))
(assert true)
(define-const var536 String (toString/-2075883882 var1290)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var1029-to-var813=([org.apache.ibatis.ognl.ASTProject], org.apache.ibatis.ognl.SimpleNode), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2016-to-var2718=([org.apache.ibatis.ognl.Node], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1029=org.apache.ibatis.ognl.ASTProject, var2998=r1, var1585=$r0, var3123=$r4, var2016=org.apache.ibatis.ognl.Node, var813=org.apache.ibatis.ognl.SimpleNode, var1017=$r2, var3791=$r3, var2718=java.lang.Object, var832=$r5, var1290=$r6, var536=$r7}
; {org.apache.ibatis.ognl.ASTProject=var1029, r1=var2998, $r0=var1585, $r4=var3123, org.apache.ibatis.ognl.Node=var2016, org.apache.ibatis.ognl.SimpleNode=var813, $r2=var1017, $r3=var3791, java.lang.Object=var2718, $r5=var832, $r6=var1290, $r7=var536}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTProject;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{ ");	$r2 = r1.<org.apache.ibatis.ognl.ASTProject: org.apache.ibatis.ognl.Node[] children>;	$r3 = $r2[0];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" }");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1