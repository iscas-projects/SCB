(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3418 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-1548601273 (var3418) Int)
(declare-fun src/-1548601273 (var3418) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3418 var3418)
(declare-const null-Int Int)
(declare-const var1560 var3418) ; Statement: r0 := @this: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var1560 null-var3418)))
(declare-const var1745 Int) ; Statement: c3 := @parameter0: char 
(assert (not (= var1745 null-Int)))
(define-const var2769 Int (pos/-1548601273 var1560)) ; Statement: $i0 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> 
(define-const var634 String (src/-1548601273 var1560)) ; Statement: $r1 = r0.<freemarker.core.ExtendedDecimalFormatParser: java.lang.String src> 
(assert true)
(define-const var344 Int (length/-134980193 var634)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= $i1 goto return 0 
(assert (>= var2769 var344)) ; Cond: $i0 >= $i1 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-1548601273=([freemarker.core.ExtendedDecimalFormatParser], int), src/-1548601273=([freemarker.core.ExtendedDecimalFormatParser], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var3418=freemarker.core.ExtendedDecimalFormatParser, var1560=r0, var1745=c3, var2769=$i0, var634=$r1, var344=$i1}
; {freemarker.core.ExtendedDecimalFormatParser=var3418, r0=var1560, c3=var1745, $i0=var2769, $r1=var634, $i1=var344}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.core.ExtendedDecimalFormatParser;	c3 := @parameter0: char;	$i0 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos>;	$r1 = r0.<freemarker.core.ExtendedDecimalFormatParser: java.lang.String src>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 >= $i1 goto return 0;	return 0
;block_num 2