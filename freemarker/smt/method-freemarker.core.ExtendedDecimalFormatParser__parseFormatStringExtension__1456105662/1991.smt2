(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1560 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun src/-1548601273 (var1560) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun pos/-1548601273 (var1560) Int)
(declare-const null-var1560 var1560)
(declare-const var3038 var1560) ; Statement: r0 := @this: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var3038 null-var1560)))
(define-const var1388 String (src/-1548601273 var3038)) ; Statement: $r1 = r0.<freemarker.core.ExtendedDecimalFormatParser: java.lang.String src> 
(assert true)
(define-const var1720 Int (length/-134980193 var1388)) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var109 Int (pos/-1548601273 var3038)) ; Statement: $i1 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> 
 ; Statement: if $i1 != i0 goto r15 = null 
(assert (not (not (= var109 var1720)))) ; Negate: Cond: $i1 != i0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {src/-1548601273=([freemarker.core.ExtendedDecimalFormatParser], java.lang.String), length/-134980193=([java.lang.String], int), pos/-1548601273=([freemarker.core.ExtendedDecimalFormatParser], int)}
; {var1560=freemarker.core.ExtendedDecimalFormatParser, var3038=r0, var1388=$r1, var1720=i0, var109=$i1}
; {freemarker.core.ExtendedDecimalFormatParser=var1560, r0=var3038, $r1=var1388, i0=var1720, $i1=var109}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.core.ExtendedDecimalFormatParser;	$r1 = r0.<freemarker.core.ExtendedDecimalFormatParser: java.lang.String src>;	i0 = virtualinvoke $r1.<java.lang.String: int length()>();	$i1 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos>;	if $i1 != i0 goto r15 = null;	return
;block_num 2