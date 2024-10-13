(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var948 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun src/-1548601273 (var948) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun pos/-1548601273 (var948) Int)
(declare-const null-var948 var948)
(declare-const var549 var948) ; Statement: r0 := @this: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var549 null-var948)))
(define-const var3225 String (src/-1548601273 var549)) ; Statement: $r1 = r0.<freemarker.core.ExtendedDecimalFormatParser: java.lang.String src> 
(assert true)
(define-const var2064 Int (length/-134980193 var3225)) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
(define-const var2716 Int (pos/-1548601273 var549)) ; Statement: $i1 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> 
 ; Statement: if $i1 >= i0 goto return 
(assert (>= var2716 var2064)) ; Cond: $i1 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {src/-1548601273=([freemarker.core.ExtendedDecimalFormatParser], java.lang.String), length/-134980193=([java.lang.String], int), pos/-1548601273=([freemarker.core.ExtendedDecimalFormatParser], int)}
; {var948=freemarker.core.ExtendedDecimalFormatParser, var549=r0, var3225=$r1, var2064=i0, var2716=$i1}
; {freemarker.core.ExtendedDecimalFormatParser=var948, r0=var549, $r1=var3225, i0=var2064, $i1=var2716}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.core.ExtendedDecimalFormatParser;	$r1 = r0.<freemarker.core.ExtendedDecimalFormatParser: java.lang.String src>;	i0 = virtualinvoke $r1.<java.lang.String: int length()>();	$i1 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos>;	if $i1 >= i0 goto return;	return
;block_num 3