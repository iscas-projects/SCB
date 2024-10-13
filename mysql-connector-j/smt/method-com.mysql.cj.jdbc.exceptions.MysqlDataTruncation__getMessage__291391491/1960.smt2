(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1770 0)
(declare-sort var2025 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMessage/849299655 (var2025) String)
(declare-fun cast-from-var1770-to-var2025 (var1770) var2025)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun message/-427423824 (var1770) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1770 var1770)
(declare-const var1906 var1770) ; Statement: r1 := @this: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation 
(assert (not (= var1906 null-var1770)))
(define-const var3291 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3291)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3291!1 String)
(assert (= var3291!1 ""))
(assert true)
(define-const var2637 String (getMessage/849299655 (cast-from-var1770-to-var2025 var1906))) ; Statement: $r2 = specialinvoke r1.<java.sql.DataTruncation: java.lang.String getMessage()>() 
(assert true)
(define-const var3233 String (append/672562846 var3291!1 var2637)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3291!2 String)
(assert (= var3291!2 (str.++ var3291!1 var2637)))
(assert true)
(define-const var1023 String (append/672562846 var3233 ": ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3233!1 String)
(assert (= var3233!1 (str.++ var3233 ": ")))
(define-const var2224 String (message/-427423824 var1906)) ; Statement: $r4 = r1.<com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: java.lang.String message> 
(assert true)
(define-const var1754 String (append/672562846 var1023 var2224)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1023!1 String)
(assert (= var1023!1 (str.++ var1023 var2224)))
(assert true)
(define-const var3143 String (toString/-2075883882 var1754)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1770-to-var2025=([com.mysql.cj.jdbc.exceptions.MysqlDataTruncation], java.lang.Throwable), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), message/-427423824=([com.mysql.cj.jdbc.exceptions.MysqlDataTruncation], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1770=com.mysql.cj.jdbc.exceptions.MysqlDataTruncation, var1906=r1, var3291=$r0, var2025=java.lang.Throwable, var2637=$r2, var3233=$r3, var1023=$r5, var2224=$r4, var1754=$r6, var3143=$r7}
; {com.mysql.cj.jdbc.exceptions.MysqlDataTruncation=var1770, r1=var1906, $r0=var3291, java.lang.Throwable=var2025, $r2=var2637, $r3=var3233, $r5=var1023, $r4=var2224, $r6=var1754, $r7=var3143}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<java.sql.DataTruncation: java.lang.String getMessage()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r4 = r1.<com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: java.lang.String message>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1