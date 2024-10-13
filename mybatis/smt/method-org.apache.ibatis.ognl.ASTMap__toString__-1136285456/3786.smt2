(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var81 0)
(declare-sort var1335 0)
(declare-sort var1052 0)
(declare-sort var174 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun className/-1410767792 (var81) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun jjtGetNumChildren/-748122913 (var1052) Int)
(declare-fun cast-from-var81-to-var1052 (var81) var1052)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var174) String)
(declare-fun cast-from-String-to-var174 (String) var174)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var81 var81)
(declare-const null-String String)
(declare-const var2285 var81) ; Statement: r1 := @this: org.apache.ibatis.ognl.ASTMap 
(assert (not (= var2285 null-var81)))
(define-const var2440 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2440 "#")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("#") 
(declare-const var2440!1 String)
(assert (= var2440!1 "#"))
(define-const var2792 String (className/-1410767792 var2285)) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.ASTMap: java.lang.String className> 
 ; Statement: if $r2 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{ ") 
(assert (= var2792 null-String)) ; Cond: $r2 == null 
(assert true)
;(assert (append/672562846 var2440!1 "{ ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{ ") 
(declare-const var2440!2 String)
(assert (= var2440!2 (str.++ var2440!1 "{ ")))
(define-const var1167 Int 0) ; Statement: i0 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3406 Int (jjtGetNumChildren/-748122913 (cast-from-var81-to-var1052 var2285))) ; Statement: $i1 = virtualinvoke r1.<org.apache.ibatis.ognl.ASTMap: int jjtGetNumChildren()>() 
 ; Statement: if i0 >= $i1 goto $r3 = new java.lang.StringBuilder 
(assert (>= var1167 var3406)) ; Cond: i0 >= $i1 
(define-const var2263 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2263)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2263!1 String)
(assert (= var2263!1 ""))
(assert true)
(define-const var94 String (append/-1031950772 var2263!1 (cast-from-String-to-var174 var2440!2))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0) 
(declare-const var2263!2 String)
(assert (str.prefixof var2263!1 var2263!2))
(assert true)
(define-const var3695 String (append/672562846 var94 " }")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" }") 
(declare-const var94!1 String)
(assert (= var94!1 (str.++ var94 " }")))
(assert true)
(define-const var915 String (toString/-2075883882 var3695)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), className/-1410767792=([org.apache.ibatis.ognl.ASTMap], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), jjtGetNumChildren/-748122913=([org.apache.ibatis.ognl.SimpleNode], int), cast-from-var81-to-var1052=([org.apache.ibatis.ognl.ASTMap], org.apache.ibatis.ognl.SimpleNode), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var174=([java.lang.StringBuilder], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var81=org.apache.ibatis.ognl.ASTMap, var2285=r1, var2440=$r0, var2792=$r2, var1335=null_type, var1167=i0, var1052=org.apache.ibatis.ognl.SimpleNode, var3406=$i1, var2263=$r3, var174=java.lang.Object, var94=$r4, var3695=$r5, var915=$r6}
; {org.apache.ibatis.ognl.ASTMap=var81, r1=var2285, $r0=var2440, $r2=var2792, null_type=var1335, i0=var1167, org.apache.ibatis.ognl.SimpleNode=var1052, $i1=var3406, $r3=var2263, java.lang.Object=var174, $r4=var94, $r5=var3695, $r6=var915}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.ASTMap;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("#");	$r2 = r1.<org.apache.ibatis.ognl.ASTMap: java.lang.String className>;	if $r2 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{ ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{ ");	i0 = 0;	$i1 = virtualinvoke r1.<org.apache.ibatis.ognl.ASTMap: int jjtGetNumChildren()>();	if i0 >= $i1 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" }");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 4