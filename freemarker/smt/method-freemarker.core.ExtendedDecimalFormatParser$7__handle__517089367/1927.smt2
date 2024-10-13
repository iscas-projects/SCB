(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var921 0)
(declare-sort var3203 0)
(declare-sort var845 0)
(declare-sort var1048 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1048-init () var1048)
(declare-fun <init>/-1095590605 (var1048 String) void)
(declare-const null-var921 var921)
(declare-const null-var3203 var3203)
(declare-const null-String String)
(declare-const var1609 var921) ; Statement: r4 := @this: freemarker.core.ExtendedDecimalFormatParser$7 
(assert (not (= var1609 null-var921)))
(declare-const var3123 var3203) ; Statement: r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var3123 null-var3203)))
(declare-const var597 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var597 null-String)))
(assert true)
(define-const var891 Int (length/-134980193 var597)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1) 
(assert (not (= var891 1))) ; Negate: Cond: $i0 == 1  
(define-const var1499 var1048 var1048-init) ; Statement: $r3 = new freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException 
(assert true)
;(assert (<init>/-1095590605 var1499 "Must contain exactly 1 character.")) ; Statement: specialinvoke $r3.<freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException: void <init>(java.lang.String)>("Must contain exactly 1 character.") 

(declare-const var1499!1 var1048)
(declare-const var3022 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1048-init=([], freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException), <init>/-1095590605=([freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException, java.lang.String], void)}
; {var921=freemarker.core.ExtendedDecimalFormatParser$7, var1609=r4, var3203=freemarker.core.ExtendedDecimalFormatParser, var3123=r1, var597=r0, var845=null_type, var891=$i0, var1048=freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException, var1499=$r3, var3022="Must contain exactly 1 character."}
; {freemarker.core.ExtendedDecimalFormatParser$7=var921, r4=var1609, freemarker.core.ExtendedDecimalFormatParser=var3203, r1=var3123, r0=var597, null_type=var845, $i0=var891, freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException=var1048, $r3=var1499, "Must contain exactly 1 character."=var3022}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @this: freemarker.core.ExtendedDecimalFormatParser$7;	r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1);	$r3 = new freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException;	specialinvoke $r3.<freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException: void <init>(java.lang.String)>("Must contain exactly 1 character.");	throw $r3
;block_num 2