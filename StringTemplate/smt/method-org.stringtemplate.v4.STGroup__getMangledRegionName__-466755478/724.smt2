(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2731 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var913 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var913 null-String)))
(declare-const var3279 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3279 null-String)))
(assert (and true (and (> (str.len var913) 0) (<= 0 0))))
(define-const var281 Int (charAt/698050440 var913 0)) ; Statement: $c0 = virtualinvoke r10.<java.lang.String: char charAt(int)>(0) 
(define-const var3471 Int (cast-from-Int-to-Int var281)) ; Statement: $i1 = (int) $c0 
 ; Statement: if $i1 == 47 goto $r12 = new java.lang.StringBuilder 
(assert (= var3471 47)) ; Cond: $i1 == 47 
(define-const var539 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var539)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var539!1 String)
(assert (= var539!1 ""))
(assert true)
(define-const var391 String (append/672562846 var539!1 "/region__")) ; Statement: $r1 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/region__") 
(declare-const var539!2 String)
(assert (= var539!2 (str.++ var539!1 "/region__")))
(assert true)
(define-const var612 String (append/672562846 var391 var913)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var391!1 String)
(assert (= var391!1 (str.++ var391 var913)))
(assert true)
(define-const var1032 String (append/672562846 var612 "__")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("__") 
(declare-const var612!1 String)
(assert (= var612!1 (str.++ var612 "__")))
(assert true)
(define-const var1293 String (append/672562846 var1032 var3279)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1032!1 String)
(assert (= var1032!1 (str.++ var1032 var3279)))
(assert true)
(define-const var2086 String (toString/-2075883882 var1293)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var913=r10, var2731=null_type, var3279=r3, var281=$c0, var3471=$i1, var539=$r12, var391=$r1, var612=$r2, var1032=$r4, var1293=$r5, var2086=$r6}
; {r10=var913, null_type=var2731, r3=var3279, $c0=var281, $i1=var3471, $r12=var539, $r1=var391, $r2=var612, $r4=var1032, $r5=var1293, $r6=var2086}
;seq <java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$c0 = virtualinvoke r10.<java.lang.String: char charAt(int)>(0);	$i1 = (int) $c0;	if $i1 == 47 goto $r12 = new java.lang.StringBuilder;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/region__");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("__");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2