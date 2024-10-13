(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2280 0)
(declare-sort var2462 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun src/-1548601273 (var2280) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun pos/-1548601273 (var2280) Int)
(declare-const null-var2280 var2280)
(declare-const null-String String)
(declare-const var3575 var2280) ; Statement: r0 := @this: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var3575 null-var2280)))
(define-const var3401 String (src/-1548601273 var3575)) ; Statement: $r1 = r0.<freemarker.core.ExtendedDecimalFormatParser: java.lang.String src> 
(assert true)
(define-const var2960 Int (length/-134980193 var3401)) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var2817 Int (pos/-1548601273 var3575)) ; Statement: i1 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> 
(define-const var661 Bool (ite (= 1 1) true false)) ; Statement: z2 = 1 
(define-const var2446 Bool (ite (= 1 1) true false)) ; Statement: z4 = 1 
(define-const var2897 Bool (ite (= 1 1) true false)) ; Statement: z3 = 1 
(assert true) ; Non Conditional
(define-const var1948 Int (pos/-1548601273 var3575)) ; Statement: $i2 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> 
 ; Statement: if $i2 >= i0 goto (branch) 
(assert (>= var1948 var2960)) ; Cond: $i2 >= i0 
 ; Statement: if z4 != 0 goto $r4 = null 
(assert (not (= (ite var2446 1 0) 0))) ; Cond: z4 != 0 
(define-const var222 String null-String) ; Statement: $r4 = null 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {src/-1548601273=([freemarker.core.ExtendedDecimalFormatParser], java.lang.String), length/-134980193=([java.lang.String], int), pos/-1548601273=([freemarker.core.ExtendedDecimalFormatParser], int)}
; {var2280=freemarker.core.ExtendedDecimalFormatParser, var3575=r0, var3401=$r1, var2960=i0, var2817=i1, var661=z2, var2446=z4, var2897=z3, var1948=$i2, var2462=null_type, var222=$r4}
; {freemarker.core.ExtendedDecimalFormatParser=var2280, r0=var3575, $r1=var3401, i0=var2960, i1=var2817, z2=var661, z4=var2446, z3=var2897, $i2=var1948, null_type=var2462, $r4=var222}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.core.ExtendedDecimalFormatParser;	$r1 = r0.<freemarker.core.ExtendedDecimalFormatParser: java.lang.String src>;	i0 = virtualinvoke $r1.<java.lang.String: int length()>();	i1 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos>;	z2 = 1;	z4 = 1;	z3 = 1;	$i2 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos>;	if $i2 >= i0 goto (branch);	if z4 != 0 goto $r4 = null;	$r4 = null;	return $r4
;block_num 5