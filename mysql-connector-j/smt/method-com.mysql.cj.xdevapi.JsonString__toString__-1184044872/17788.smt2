(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2414 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun val/-766364904 (var2414) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2414 var2414)
(declare-const var204 var2414) ; Statement: r1 := @this: com.mysql.cj.xdevapi.JsonString 
(assert (not (= var204 null-var2414)))
(define-const var3325 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3325 "\u0022")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("\"") 
(declare-const var3325!1 String)
(assert (= var3325!1 "\u0022"))
(define-const var3796 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var1767 String (val/-766364904 var204)) ; Statement: $r2 = r1.<com.mysql.cj.xdevapi.JsonString: java.lang.String val> 
(assert true)
(define-const var3972 Int (length/-134980193 var1767)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(assert (>= var3796 var3972)) ; Cond: i4 >= $i0 
(assert true)
;(assert (append/672562846 var3325!1 "\u0022")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3325!2 String)
(assert (= var3325!2 (str.++ var3325!1 "\u0022")))
(assert true)
(define-const var115 String (toString/-2075883882 var3325!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), val/-766364904=([com.mysql.cj.xdevapi.JsonString], java.lang.String), length/-134980193=([java.lang.String], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2414=com.mysql.cj.xdevapi.JsonString, var204=r1, var3325=$r0, var3796=i4, var1767=$r2, var3972=$i0, var115=$r3}
; {com.mysql.cj.xdevapi.JsonString=var2414, r1=var204, $r0=var3325, i4=var3796, $r2=var1767, $i0=var3972, $r3=var115}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.xdevapi.JsonString;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("\"");	i4 = 0;	$r2 = r1.<com.mysql.cj.xdevapi.JsonString: java.lang.String val>;	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	if i4 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3