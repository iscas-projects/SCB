(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var39 0)
(declare-sort var3414 0)
(declare-sort var647 0)
(declare-sort var1771 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1771-init () var1771)
(declare-fun <init>/-1095590605 (var1771 String) void)
(declare-const null-var39 var39)
(declare-const null-var3414 var3414)
(declare-const null-String String)
(declare-const var531 var39) ; Statement: r4 := @this: freemarker.core.ExtendedDecimalFormatParser$10 
(assert (not (= var531 null-var39)))
(declare-const var2040 var3414) ; Statement: r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var2040 null-var3414)))
(declare-const var344 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var344 null-String)))
(assert true)
(define-const var345 Int (length/-134980193 var344)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1) 
(assert (not (= var345 1))) ; Negate: Cond: $i0 == 1  
(define-const var43 var1771 var1771-init) ; Statement: $r3 = new freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException 
(assert true)
;(assert (<init>/-1095590605 var43 "Must contain exactly 1 character.")) ; Statement: specialinvoke $r3.<freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException: void <init>(java.lang.String)>("Must contain exactly 1 character.") 

(declare-const var43!1 var1771)
(declare-const var1185 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1771-init=([], freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException), <init>/-1095590605=([freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException, java.lang.String], void)}
; {var39=freemarker.core.ExtendedDecimalFormatParser$10, var531=r4, var3414=freemarker.core.ExtendedDecimalFormatParser, var2040=r1, var344=r0, var647=null_type, var345=$i0, var1771=freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException, var43=$r3, var1185="Must contain exactly 1 character."}
; {freemarker.core.ExtendedDecimalFormatParser$10=var39, r4=var531, freemarker.core.ExtendedDecimalFormatParser=var3414, r1=var2040, r0=var344, null_type=var647, $i0=var345, freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException=var1771, $r3=var43, "Must contain exactly 1 character."=var1185}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @this: freemarker.core.ExtendedDecimalFormatParser$10;	r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1);	$r3 = new freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException;	specialinvoke $r3.<freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException: void <init>(java.lang.String)>("Must contain exactly 1 character.");	throw $r3
;block_num 2