(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var638 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1642 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1642 null-String)))
(declare-const var2565 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2565 null-Int)))
(define-const var3324 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3324)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3324!1 String)
(assert (= var3324!1 ""))
(assert true)
;(assert (append/672562846 var3324!1 var1642)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3324!2 String)
(assert (= var3324!2 (str.++ var3324!1 var1642)))
(define-const var3378 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3422 Int (length/-134980193 var1642)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1359 Int (- var2565 var3422)) ; Statement: $i2 = i0 - $i1 
 ; Statement: if i3 >= $i2 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3378 var1359)) ; Cond: i3 >= $i2 
(assert true)
(define-const var1181 String (toString/-2075883882 var3324!2)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1642=r1, var638=null_type, var2565=i0, var3324=$r0, var3378=i3, var3422=$i1, var1359=$i2, var1181=$r2}
; {r1=var1642, null_type=var638, i0=var2565, $r0=var3324, i3=var3378, $i1=var3422, $i2=var1359, $r2=var1181}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	i3 = 0;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = i0 - $i1;	if i3 >= $i2 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3