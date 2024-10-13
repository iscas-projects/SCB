(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1478 0)
(declare-sort var2511 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1478 var1478)
(declare-const null-String String)
(declare-const var195 var1478) ; Statement: r6 := @this: org.junit.jupiter.api.AssertLinesMatch$LinesMatcher 
(assert (not (= var195 null-var1478)))
(declare-const var2288 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2288 null-String)))
(assert true)
(define-const var2337 Int (length/-134980193 var2288)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 > 21 goto $r1 = new java.lang.StringBuilder 
(assert (> var2337 21)) ; Cond: $i0 > 21 
(define-const var286 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var286)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var286!1 String)
(assert (= var286!1 ""))
(assert (and true (and (>= 0 0) (>= (str.len var2288) 16) (>= 16 0))))
(define-const var1962 String (substring/-1240304868 var2288 0 16)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, 16) 
(assert true)
(define-const var2875 String (append/672562846 var286!1 var1962)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var286!2 String)
(assert (= var286!2 (str.++ var286!1 var1962)))
(assert true)
(define-const var2172 String (append/672562846 var2875 "[...]")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[...]") 
(declare-const var2875!1 String)
(assert (= var2875!1 (str.++ var2875 "[...]")))
(assert true)
(define-const var3690 String (toString/-2075883882 var2172)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1478=org.junit.jupiter.api.AssertLinesMatch$LinesMatcher, var195=r6, var2288=r0, var2511=null_type, var2337=$i0, var286=$r1, var1962=$r2, var2875=$r3, var2172=$r4, var3690=$r5}
; {org.junit.jupiter.api.AssertLinesMatch$LinesMatcher=var1478, r6=var195, r0=var2288, null_type=var2511, $i0=var2337, $r1=var286, $r2=var1962, $r3=var2875, $r4=var2172, $r5=var3690}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.junit.jupiter.api.AssertLinesMatch$LinesMatcher;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 > 21 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, 16);	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[...]");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 2