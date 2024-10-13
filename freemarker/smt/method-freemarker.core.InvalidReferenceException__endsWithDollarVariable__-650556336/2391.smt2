(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3314 0)
(declare-sort var2998 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3314-to-var2998 (var3314) var2998)
(declare-fun getName/1196240517 (var2998) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3314 var3314)
(declare-const var943 var3314) ; Statement: r0 := @parameter0: freemarker.core.Expression 
(assert (not (= var943 null-var3314)))
(define-const var3632 Bool false) ; Statement: $z0 = r0 instanceof freemarker.core.Identifier 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof freemarker.core.Dot 
(assert (not (= (ite var3632 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3420 var2998 (cast-from-var3314-to-var2998 var943)) ; Statement: $r3 = (freemarker.core.Identifier) r0 
(assert true)
(define-const var1734 String (getName/1196240517 var3420)) ; Statement: $r4 = virtualinvoke $r3.<freemarker.core.Identifier: java.lang.String getName()>() 
(assert true)
(define-const var1932 Bool (startsWith/-1785782452 var1734 "$")) ; Statement: $z3 = virtualinvoke $r4.<java.lang.String: boolean startsWith(java.lang.String)>("$") 
 ; Statement: if $z3 != 0 goto $z4 = 1 
(assert (not (= (ite var1932 1 0) 0))) ; Cond: $z3 != 0 
(define-const var124 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= return $z4] 
(assert true) ; Non Conditional
 ; Statement: return $z4 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3314-to-var2998=([freemarker.core.Expression], freemarker.core.Identifier), getName/1196240517=([freemarker.core.Identifier], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3314=freemarker.core.Expression, var943=r0, var3632=$z0, var2998=freemarker.core.Identifier, var3420=$r3, var1734=$r4, var1932=$z3, var124=$z4}
; {freemarker.core.Expression=var3314, r0=var943, $z0=var3632, freemarker.core.Identifier=var2998, $r3=var3420, $r4=var1734, $z3=var1932, $z4=var124}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: freemarker.core.Expression;	$z0 = r0 instanceof freemarker.core.Identifier;	if $z0 == 0 goto $z1 = r0 instanceof freemarker.core.Dot;	$r3 = (freemarker.core.Identifier) r0;	$r4 = virtualinvoke $r3.<freemarker.core.Identifier: java.lang.String getName()>();	$z3 = virtualinvoke $r4.<java.lang.String: boolean startsWith(java.lang.String)>("$");	if $z3 != 0 goto $z4 = 1;	$z4 = 1;	goto [?= return $z4];	return $z4
;block_num 4