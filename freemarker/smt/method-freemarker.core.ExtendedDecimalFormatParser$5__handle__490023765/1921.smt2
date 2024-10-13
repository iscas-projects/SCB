(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1723 0)
(declare-sort var2941 0)
(declare-sort var2774 0)
(declare-sort var3617 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3617-init () var3617)
(declare-fun <init>/-1095590605 (var3617 String) void)
(declare-const null-var1723 var1723)
(declare-const null-var2941 var2941)
(declare-const null-String String)
(declare-const var3415 var1723) ; Statement: r4 := @this: freemarker.core.ExtendedDecimalFormatParser$5 
(assert (not (= var3415 null-var1723)))
(declare-const var3523 var2941) ; Statement: r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var3523 null-var2941)))
(declare-const var2340 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2340 null-String)))
(assert true)
(define-const var2308 Int (length/-134980193 var2340)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1) 
(assert (not (= var2308 1))) ; Negate: Cond: $i0 == 1  
(define-const var1815 var3617 var3617-init) ; Statement: $r3 = new freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException 
(assert true)
;(assert (<init>/-1095590605 var1815 "Must contain exactly 1 character.")) ; Statement: specialinvoke $r3.<freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException: void <init>(java.lang.String)>("Must contain exactly 1 character.") 

(declare-const var1815!1 var3617)
(declare-const var3191 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var3617-init=([], freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException), <init>/-1095590605=([freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException, java.lang.String], void)}
; {var1723=freemarker.core.ExtendedDecimalFormatParser$5, var3415=r4, var2941=freemarker.core.ExtendedDecimalFormatParser, var3523=r1, var2340=r0, var2774=null_type, var2308=$i0, var3617=freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException, var1815=$r3, var3191="Must contain exactly 1 character."}
; {freemarker.core.ExtendedDecimalFormatParser$5=var1723, r4=var3415, freemarker.core.ExtendedDecimalFormatParser=var2941, r1=var3523, r0=var2340, null_type=var2774, $i0=var2308, freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException=var3617, $r3=var1815, "Must contain exactly 1 character."=var3191}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @this: freemarker.core.ExtendedDecimalFormatParser$5;	r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1);	$r3 = new freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException;	specialinvoke $r3.<freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException: void <init>(java.lang.String)>("Must contain exactly 1 character.");	throw $r3
;block_num 2