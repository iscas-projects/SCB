(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1949 0)
(declare-sort var1444 0)
(declare-sort var3439 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCause/-638798464 (var1444) var1444)
(declare-fun cast-from-var1949-to-var1444 (var1949) var1444)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-1112415476 (var1444) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3439) String)
(declare-fun cast-from-var1444-to-var3439 (var1444) var3439)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1949 var1949)
(declare-const null-var1444 var1444)
(declare-const var1135 var1949) ; Statement: r0 := @this: org.apache.ibatis.ognl.OgnlException 
(assert (not (= var1135 null-var1949)))
(assert true)
(define-const var3965 var1444 (getCause/-638798464 (cast-from-var1949-to-var1444 var1135))) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.ognl.OgnlException: java.lang.Throwable getCause()>() 
 ; Statement: if $r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var3965 null-var1444))) ; Cond: $r1 != null 
(define-const var1543 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1543)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1543!1 String)
(assert (= var1543!1 ""))
(assert true)
(define-const var68 String (toString/-1112415476 (cast-from-var1949-to-var1444 var1135))) ; Statement: $r3 = specialinvoke r0.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
(define-const var2005 String (append/672562846 var1543!1 var68)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1543!2 String)
(assert (= var1543!2 (str.++ var1543!1 var68)))
(assert true)
(define-const var1875 String (append/672562846 var2005 " [")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(declare-const var2005!1 String)
(assert (= var2005!1 (str.++ var2005 " [")))
(assert true)
(define-const var3006 var1444 (getCause/-638798464 (cast-from-var1949-to-var1444 var1135))) ; Statement: $r5 = virtualinvoke r0.<org.apache.ibatis.ognl.OgnlException: java.lang.Throwable getCause()>() 
(assert true)
(define-const var1468 String (append/-1031950772 var1875 (cast-from-var1444-to-var3439 var3006))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var1875!1 String)
(assert (str.prefixof var1875 var1875!1))
(assert true)
(define-const var2651 String (append/672562846 var1468 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1468!1 String)
(assert (= var1468!1 (str.++ var1468 "]")))
(assert true)
(define-const var1114 String (toString/-2075883882 var2651)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getCause/-638798464=([java.lang.Throwable], java.lang.Throwable), cast-from-var1949-to-var1444=([org.apache.ibatis.ognl.OgnlException], java.lang.Throwable), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-1112415476=([java.lang.Throwable], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1444-to-var3439=([java.lang.Throwable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1949=org.apache.ibatis.ognl.OgnlException, var1135=r0, var1444=java.lang.Throwable, var3965=$r1, var1543=$r2, var68=$r3, var2005=$r4, var1875=$r6, var3006=$r5, var3439=java.lang.Object, var1468=$r7, var2651=$r8, var1114=$r9}
; {org.apache.ibatis.ognl.OgnlException=var1949, r0=var1135, java.lang.Throwable=var1444, $r1=var3965, $r2=var1543, $r3=var68, $r4=var2005, $r6=var1875, $r5=var3006, java.lang.Object=var3439, $r7=var1468, $r8=var2651, $r9=var1114}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.OgnlException;	$r1 = virtualinvoke r0.<org.apache.ibatis.ognl.OgnlException: java.lang.Throwable getCause()>();	if $r1 != null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = specialinvoke r0.<java.lang.Exception: java.lang.String toString()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	$r5 = virtualinvoke r0.<org.apache.ibatis.ognl.OgnlException: java.lang.Throwable getCause()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2