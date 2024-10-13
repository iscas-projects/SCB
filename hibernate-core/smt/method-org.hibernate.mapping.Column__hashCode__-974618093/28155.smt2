(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3509 0)
(declare-sort var2193 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isQuoted/-101612203 (var3509) Bool)
(declare-fun name/568060284 (var3509) String)
(declare-fun toLowerCase/1946809429 (String var2193) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3509 var3509)
(declare-const var2193-ROOT var2193)
(declare-const var1644 var3509) ; Statement: r0 := @this: org.hibernate.mapping.Column 
(assert (not (= var1644 null-var3509)))
(assert true)
(define-const var1373 Bool (isQuoted/-101612203 var1644)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.mapping.Column: boolean isQuoted()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<org.hibernate.mapping.Column: java.lang.String name> 
(assert (= (ite var1373 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2422 String (name/568060284 var1644)) ; Statement: $r2 = r0.<org.hibernate.mapping.Column: java.lang.String name> 
(define-const var736 var2193 var2193-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var292 String (toLowerCase/1946809429 var2422 var736)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true)
(define-const var81 Int (hashCode/-467973558 var292)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {isQuoted/-101612203=([org.hibernate.mapping.Column], boolean), name/568060284=([org.hibernate.mapping.Column], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3509=org.hibernate.mapping.Column, var1644=r0, var1373=$z0, var2422=$r2, var2193=java.util.Locale, var736=$r1, var292=$r3, var81=$i0}
; {org.hibernate.mapping.Column=var3509, r0=var1644, $z0=var1373, $r2=var2422, java.util.Locale=var2193, $r1=var736, $r3=var292, $i0=var81}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.mapping.Column;	$z0 = virtualinvoke r0.<org.hibernate.mapping.Column: boolean isQuoted()>();	if $z0 == 0 goto $r2 = r0.<org.hibernate.mapping.Column: java.lang.String name>;	$r2 = r0.<org.hibernate.mapping.Column: java.lang.String name>;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	return $i0
;block_num 3