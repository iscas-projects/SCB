(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2641 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCountry/-945186178 (var2641) String)
(declare-fun getVariant/1821738799 (var2641) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2641-init () var2641)
(declare-fun getLanguage/1066037614 (var2641) String)
(declare-fun <init>/-1053635008 (var2641 String) void)
(declare-const null-var2641 var2641)
(declare-const var3589 var2641) ; Statement: r0 := @parameter0: java.util.Locale 
(assert (not (= var3589 null-var2641)))
(assert true)
(define-const var331 String (getCountry/-945186178 var3589)) ; Statement: r1 = virtualinvoke r0.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var114 String (getVariant/1821738799 var3589)) ; Statement: $r2 = virtualinvoke r0.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var969 Int (length/-134980193 var114)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (= var969 0)) ; Cond: $i0 == 0 
(assert true)
(define-const var683 Int (length/-134980193 var331)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i1 == 0 goto return null 
(assert (not (= var683 0))) ; Negate: Cond: $i1 == 0  
(define-const var2353 var2641 var2641-init) ; Statement: $r3 = new java.util.Locale 
(assert true)
(define-const var263 String (getLanguage/1066037614 var3589)) ; Statement: $r4 = virtualinvoke r0.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
;(assert (<init>/-1053635008 var2353 var263)) ; Statement: specialinvoke $r3.<java.util.Locale: void <init>(java.lang.String)>($r4) 

(declare-const var2353!1 var2641)
(declare-const var263!1 String)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getCountry/-945186178=([java.util.Locale], java.lang.String), getVariant/1821738799=([java.util.Locale], java.lang.String), length/-134980193=([java.lang.String], int), var2641-init=([], java.util.Locale), getLanguage/1066037614=([java.util.Locale], java.lang.String), <init>/-1053635008=([java.util.Locale, java.lang.String], void)}
; {var2641=java.util.Locale, var3589=r0, var331=r1, var114=$r2, var969=$i0, var683=$i1, var2353=$r3, var263=$r4}
; {java.util.Locale=var2641, r0=var3589, r1=var331, $r2=var114, $i0=var969, $i1=var683, $r3=var2353, $r4=var263}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.util.Locale;	r1 = virtualinvoke r0.<java.util.Locale: java.lang.String getCountry()>();	$r2 = virtualinvoke r0.<java.util.Locale: java.lang.String getVariant()>();	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	if $i0 == 0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	if $i1 == 0 goto return null;	$r3 = new java.util.Locale;	$r4 = virtualinvoke r0.<java.util.Locale: java.lang.String getLanguage()>();	specialinvoke $r3.<java.util.Locale: void <init>(java.lang.String)>($r4);	return $r3
;block_num 3