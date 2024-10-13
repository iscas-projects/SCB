(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1212 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toLowerCase/1946809429 (String var1212) String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-String String)
(declare-const var1212-ROOT var1212)
(declare-const var2433 (Array Int String)) ; Statement: r1 := @parameter0: java.lang.String[] 
(assert (not (= var2433 null-__Array__Int__String__)))
(declare-const var1130 String) ; Statement: r0 := @parameter1: java.lang.StringBuilder 
(assert (not (= var1130 null-String)))
(define-const var2349 String (select var2433 0)) ; Statement: $r2 = r1[0] 
(assert true)
;(assert (append/672562846 var1130 var2349)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1130!1 String)
(assert (= var1130!1 (str.++ var1130 var2349)))
(define-const var3954 String "select") ; Statement: $r6 = "select" 
(define-const var3979 String (select var2433 0)) ; Statement: $r4 = r1[0] 
(define-const var2563 var1212 var1212-ROOT) ; Statement: $r3 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var818 String (toLowerCase/1946809429 var3979 var2563)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3) 
(assert true)
(define-const var2613 Bool (= var3954 var818)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r5) 
 ; Statement: if $z0 != 0 goto i2 = 1 
(assert (not (not (= (ite var2613 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var2433=r1, var1130=r0, var2349=$r2, var3954=$r6, var3979=$r4, var1212=java.util.Locale, var2563=$r3, var818=$r5, var2613=$z0}
; {r1=var2433, r0=var1130, $r2=var2349, $r6=var3954, $r4=var3979, java.util.Locale=var1212, $r3=var2563, $r5=var818, $z0=var2613}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.lang.String[];	r0 := @parameter1: java.lang.StringBuilder;	$r2 = r1[0];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = "select";	$r4 = r1[0];	$r3 = <java.util.Locale: java.util.Locale ROOT>;	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3);	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r5);	if $z0 != 0 goto i2 = 1;	return 1
;block_num 2