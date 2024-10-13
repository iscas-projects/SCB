(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1799 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCountry/-945186178 (var1799) String)
(declare-fun getVariant/1821738799 (var1799) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1799 var1799)
(declare-const var580 var1799) ; Statement: r0 := @parameter0: java.util.Locale 
(assert (not (= var580 null-var1799)))
(assert true)
(define-const var829 String (getCountry/-945186178 var580)) ; Statement: r1 = virtualinvoke r0.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var2754 String (getVariant/1821738799 var580)) ; Statement: $r2 = virtualinvoke r0.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var2306 Int (length/-134980193 var2754)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (= var2306 0)) ; Cond: $i0 == 0 
(assert true)
(define-const var3596 Int (length/-134980193 var829)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i1 == 0 goto return null 
(assert (= var3596 0)) ; Cond: $i1 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getCountry/-945186178=([java.util.Locale], java.lang.String), getVariant/1821738799=([java.util.Locale], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var1799=java.util.Locale, var580=r0, var829=r1, var2754=$r2, var2306=$i0, var3596=$i1}
; {java.util.Locale=var1799, r0=var580, r1=var829, $r2=var2754, $i0=var2306, $i1=var3596}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.util.Locale;	r1 = virtualinvoke r0.<java.util.Locale: java.lang.String getCountry()>();	$r2 = virtualinvoke r0.<java.util.Locale: java.lang.String getVariant()>();	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	if $i0 == 0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	if $i1 == 0 goto return null;	return null
;block_num 3