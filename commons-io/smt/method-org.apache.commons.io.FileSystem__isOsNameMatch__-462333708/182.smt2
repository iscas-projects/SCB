(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2537 0)
(declare-sort var2994 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toUpperCase/398655892 (String var2994) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var2994-ROOT var2994)
(declare-const var2309 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2309 null-String)))
(declare-const var3750 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3750 null-String)))
 ; Statement: if r0 != null goto $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert (not (= var2309 null-String))) ; Cond: r0 != null 
(define-const var3152 var2994 var2994-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var843 String (toUpperCase/398655892 var2309 var3152)) ; Statement: $r5 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1) 
(define-const var154 var2994 var2994-ROOT) ; Statement: $r3 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3348 String (toUpperCase/398655892 var3750 var154)) ; Statement: $r4 = virtualinvoke r2.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r3) 
(assert true)
(define-const var2590 Bool (startsWith/-1785782452 var843 var3348)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>($r4) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2309=r0, var2537=null_type, var3750=r2, var2994=java.util.Locale, var3152=$r1, var843=$r5, var154=$r3, var3348=$r4, var2590=$z0}
; {r0=var2309, null_type=var2537, r2=var3750, java.util.Locale=var2994, $r1=var3152, $r5=var843, $r3=var154, $r4=var3348, $z0=var2590}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>;	<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 2,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	if r0 != null goto $r1 = <java.util.Locale: java.util.Locale ROOT>;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r5 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1);	$r3 = <java.util.Locale: java.util.Locale ROOT>;	$r4 = virtualinvoke r2.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r3);	$z0 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>($r4);	return $z0
;block_num 2