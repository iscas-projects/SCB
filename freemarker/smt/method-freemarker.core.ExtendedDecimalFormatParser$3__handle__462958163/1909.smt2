(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1375 0)
(declare-sort var874 0)
(declare-sort var2897 0)
(declare-sort var3703 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3703-init () var3703)
(declare-fun <init>/-1095590605 (var3703 String) void)
(declare-const null-var1375 var1375)
(declare-const null-var874 var874)
(declare-const null-String String)
(declare-const var3721 var1375) ; Statement: r4 := @this: freemarker.core.ExtendedDecimalFormatParser$3 
(assert (not (= var3721 null-var1375)))
(declare-const var3079 var874) ; Statement: r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var3079 null-var874)))
(declare-const var822 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var822 null-String)))
(assert true)
(define-const var3552 Int (length/-134980193 var822)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1) 
(assert (not (= var3552 1))) ; Negate: Cond: $i0 == 1  
(define-const var2747 var3703 var3703-init) ; Statement: $r3 = new freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException 
(assert true)
;(assert (<init>/-1095590605 var2747 "Must contain exactly 1 character.")) ; Statement: specialinvoke $r3.<freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException: void <init>(java.lang.String)>("Must contain exactly 1 character.") 

(declare-const var2747!1 var3703)
(declare-const var442 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var3703-init=([], freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException), <init>/-1095590605=([freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException, java.lang.String], void)}
; {var1375=freemarker.core.ExtendedDecimalFormatParser$3, var3721=r4, var874=freemarker.core.ExtendedDecimalFormatParser, var3079=r1, var822=r0, var2897=null_type, var3552=$i0, var3703=freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException, var2747=$r3, var442="Must contain exactly 1 character."}
; {freemarker.core.ExtendedDecimalFormatParser$3=var1375, r4=var3721, freemarker.core.ExtendedDecimalFormatParser=var874, r1=var3079, r0=var822, null_type=var2897, $i0=var3552, freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException=var3703, $r3=var2747, "Must contain exactly 1 character."=var442}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @this: freemarker.core.ExtendedDecimalFormatParser$3;	r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1);	$r3 = new freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException;	specialinvoke $r3.<freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException: void <init>(java.lang.String)>("Must contain exactly 1 character.");	throw $r3
;block_num 2