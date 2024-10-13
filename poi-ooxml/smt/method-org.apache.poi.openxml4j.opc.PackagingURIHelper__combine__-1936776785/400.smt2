(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3605 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var124 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var124 null-String)))
(declare-const var126 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var126 null-String)))
(assert true)
(define-const var498 Bool (endsWith/985337093 var124 "/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
 ; Statement: if $z0 != 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
(assert (not (= (ite var498 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1832 Bool (endsWith/985337093 var124 "/")) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
(assert true)
(define-const var1566 Bool (startsWith/-1785782452 var126 "/")) ; Statement: $z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
(define-const var3484 Bool (ite (= 1 (bv2nat (bvxor ((_ int2bv 64) (ite var1832 1 0)) ((_ int2bv 64) (ite var1566 1 0))))) true false)) ; Statement: $z3 = $z2 ^ $z1 
 ; Statement: if $z3 == 0 goto return "" 
(assert (not (= (ite var3484 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var1734 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1734)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1734!1 String)
(assert (= var1734!1 ""))
(assert true)
(define-const var2146 String (append/672562846 var1734!1 var124)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1734!2 String)
(assert (= var1734!2 (str.++ var1734!1 var124)))
(assert true)
(define-const var3287 String (append/672562846 var2146 var126)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2146!1 String)
(assert (= var2146!1 (str.++ var2146 var126)))
(assert true)
(define-const var3510 String (toString/-2075883882 var3287)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var124=r0, var3605=null_type, var126=r1, var498=$z0, var1832=$z2, var1566=$z1, var3484=$z3, var1734=$r2, var2146=$r3, var3287=$r4, var3510=$r5}
; {r0=var124, null_type=var3605, r1=var126, $z0=var498, $z2=var1832, $z1=var1566, $z3=var3484, $r2=var1734, $r3=var2146, $r4=var3287, $r5=var3510}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 2,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/");	if $z0 != 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/");	$z2 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/");	$z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("/");	$z3 = $z2 ^ $z1;	if $z3 == 0 goto return "";	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3