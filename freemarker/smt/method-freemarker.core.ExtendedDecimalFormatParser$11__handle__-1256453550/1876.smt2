(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3384 0)
(declare-sort var856 0)
(declare-sort var3554 0)
(declare-sort var461 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var461-init () var461)
(declare-fun <init>/-1095590605 (var461 String) void)
(declare-const null-var3384 var3384)
(declare-const null-var856 var856)
(declare-const null-String String)
(declare-const var277 var3384) ; Statement: r4 := @this: freemarker.core.ExtendedDecimalFormatParser$11 
(assert (not (= var277 null-var3384)))
(declare-const var2747 var856) ; Statement: r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var2747 null-var856)))
(declare-const var1698 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1698 null-String)))
(assert true)
(define-const var1690 Int (length/-134980193 var1698)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1) 
(assert (not (= var1690 1))) ; Negate: Cond: $i0 == 1  
(define-const var145 var461 var461-init) ; Statement: $r3 = new freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException 
(assert true)
;(assert (<init>/-1095590605 var145 "Must contain exactly 1 character.")) ; Statement: specialinvoke $r3.<freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException: void <init>(java.lang.String)>("Must contain exactly 1 character.") 

(declare-const var145!1 var461)
(declare-const var3675 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var461-init=([], freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException), <init>/-1095590605=([freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException, java.lang.String], void)}
; {var3384=freemarker.core.ExtendedDecimalFormatParser$11, var277=r4, var856=freemarker.core.ExtendedDecimalFormatParser, var2747=r1, var1698=r0, var3554=null_type, var1690=$i0, var461=freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException, var145=$r3, var3675="Must contain exactly 1 character."}
; {freemarker.core.ExtendedDecimalFormatParser$11=var3384, r4=var277, freemarker.core.ExtendedDecimalFormatParser=var856, r1=var2747, r0=var1698, null_type=var3554, $i0=var1690, freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException=var461, $r3=var145, "Must contain exactly 1 character."=var3675}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @this: freemarker.core.ExtendedDecimalFormatParser$11;	r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1);	$r3 = new freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException;	specialinvoke $r3.<freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException: void <init>(java.lang.String)>("Must contain exactly 1 character.");	throw $r3
;block_num 2