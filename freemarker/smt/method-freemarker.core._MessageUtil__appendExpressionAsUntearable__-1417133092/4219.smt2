(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3031 0)
(declare-sort var3489 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCanonicalForm/-1714059646 (var3489) String)
(declare-fun cast-from-var3031-to-var3489 (var3031) var3489)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const null-var3031 var3031)
(declare-const var2157 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2157 null-String)))
(declare-const var2607 var3031) ; Statement: r0 := @parameter1: freemarker.core.Expression 
(assert (not (= var2607 null-var3031)))
(define-const var2579 Bool false) ; Statement: $z0 = r0 instanceof freemarker.core.NumberLiteral 
 ; Statement: if $z0 != 0 goto $z15 = 0 
(assert (not (= (ite var2579 1 0) 0))) ; Cond: $z0 != 0 
(define-const var451 Bool (ite (= 1 0) true false)) ; Statement: $z15 = 0 
(define-const var1256 Bool (ite (= 1 0) true false)) ; Statement: $z14 = 0 
(assert true) ; Non Conditional
(define-const var834 Bool var1256) ; Statement: z1 = $z14 
 ; Statement: if $z15 == 0 goto $r2 = virtualinvoke r0.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert (= (ite var451 1 0) 0)) ; Cond: $z15 == 0 
(assert true)
(define-const var2158 String (getCanonicalForm/-1714059646 (cast-from-var3031-to-var3489 var2607))) ; Statement: $r2 = virtualinvoke r0.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
;(assert (append/672562846 var2157 var2158)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2157!1 String)
(assert (= var2157!1 (str.++ var2157 var2158)))
 ; Statement: if z1 == 0 goto return r1 
(assert (= (ite var834 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var3031-to-var3489=([freemarker.core.Expression], freemarker.core.TemplateObject), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2157=r1, var3031=freemarker.core.Expression, var2607=r0, var2579=$z0, var451=$z15, var1256=$z14, var834=z1, var3489=freemarker.core.TemplateObject, var2158=$r2}
; {r1=var2157, freemarker.core.Expression=var3031, r0=var2607, $z0=var2579, $z15=var451, $z14=var1256, z1=var834, freemarker.core.TemplateObject=var3489, $r2=var2158}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: freemarker.core.Expression;	$z0 = r0 instanceof freemarker.core.NumberLiteral;	if $z0 != 0 goto $z15 = 0;	$z15 = 0;	$z14 = 0;	z1 = $z14;	if $z15 == 0 goto $r2 = virtualinvoke r0.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r2 = virtualinvoke r0.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	if z1 == 0 goto return r1;	return r1
;block_num 5