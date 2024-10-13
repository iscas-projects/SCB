(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var713 0)
(declare-sort var2059 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun quoted/568060284 (var713) Bool)
(declare-fun name/568060284 (var713) String)
(declare-fun toLowerCase/1946809429 (String var2059) String)
(declare-const null-var713 var713)
(declare-const var2059-ROOT var2059)
(declare-const var2726 var713) ; Statement: r0 := @this: org.hibernate.mapping.Column 
(assert (not (= var2726 null-var713)))
(define-const var3909 Bool (quoted/568060284 var2726)) ; Statement: $z0 = r0.<org.hibernate.mapping.Column: boolean quoted> 
 ; Statement: if $z0 == 0 goto $r2 = r0.<org.hibernate.mapping.Column: java.lang.String name> 
(assert (= (ite var3909 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1386 String (name/568060284 var2726)) ; Statement: $r2 = r0.<org.hibernate.mapping.Column: java.lang.String name> 
(define-const var3517 var2059 var2059-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2015 String (toLowerCase/1946809429 var1386 var3517)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {quoted/568060284=([org.hibernate.mapping.Column], boolean), name/568060284=([org.hibernate.mapping.Column], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var713=org.hibernate.mapping.Column, var2726=r0, var3909=$z0, var1386=$r2, var2059=java.util.Locale, var3517=$r1, var2015=$r3}
; {org.hibernate.mapping.Column=var713, r0=var2726, $z0=var3909, $r2=var1386, java.util.Locale=var2059, $r1=var3517, $r3=var2015}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.hibernate.mapping.Column;	$z0 = r0.<org.hibernate.mapping.Column: boolean quoted>;	if $z0 == 0 goto $r2 = r0.<org.hibernate.mapping.Column: java.lang.String name>;	$r2 = r0.<org.hibernate.mapping.Column: java.lang.String name>;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	return $r3
;block_num 3