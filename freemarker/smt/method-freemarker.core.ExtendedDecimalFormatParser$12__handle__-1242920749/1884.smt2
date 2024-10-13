(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2220 0)
(declare-sort var454 0)
(declare-sort var2308 0)
(declare-sort var1492 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1492-init () var1492)
(declare-fun <init>/-1095590605 (var1492 String) void)
(declare-const null-var2220 var2220)
(declare-const null-var454 var454)
(declare-const null-String String)
(declare-const var2358 var2220) ; Statement: r4 := @this: freemarker.core.ExtendedDecimalFormatParser$12 
(assert (not (= var2358 null-var2220)))
(declare-const var206 var454) ; Statement: r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var206 null-var454)))
(declare-const var3406 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3406 null-String)))
(assert true)
(define-const var1707 Int (length/-134980193 var3406)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1) 
(assert (not (= var1707 1))) ; Negate: Cond: $i0 == 1  
(define-const var176 var1492 var1492-init) ; Statement: $r3 = new freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException 
(assert true)
;(assert (<init>/-1095590605 var176 "Must contain exactly 1 character.")) ; Statement: specialinvoke $r3.<freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException: void <init>(java.lang.String)>("Must contain exactly 1 character.") 

(declare-const var176!1 var1492)
(declare-const var222 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1492-init=([], freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException), <init>/-1095590605=([freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException, java.lang.String], void)}
; {var2220=freemarker.core.ExtendedDecimalFormatParser$12, var2358=r4, var454=freemarker.core.ExtendedDecimalFormatParser, var206=r1, var3406=r0, var2308=null_type, var1707=$i0, var1492=freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException, var176=$r3, var222="Must contain exactly 1 character."}
; {freemarker.core.ExtendedDecimalFormatParser$12=var2220, r4=var2358, freemarker.core.ExtendedDecimalFormatParser=var454, r1=var206, r0=var3406, null_type=var2308, $i0=var1707, freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException=var1492, $r3=var176, "Must contain exactly 1 character."=var222}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @this: freemarker.core.ExtendedDecimalFormatParser$12;	r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1);	$r3 = new freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException;	specialinvoke $r3.<freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException: void <init>(java.lang.String)>("Must contain exactly 1 character.");	throw $r3
;block_num 2