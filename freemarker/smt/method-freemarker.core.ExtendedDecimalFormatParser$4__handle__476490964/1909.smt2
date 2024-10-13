(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2061 0)
(declare-sort var1476 0)
(declare-sort var66 0)
(declare-sort var863 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var863-init () var863)
(declare-fun <init>/-1095590605 (var863 String) void)
(declare-const null-var2061 var2061)
(declare-const null-var1476 var1476)
(declare-const null-String String)
(declare-const var3585 var2061) ; Statement: r4 := @this: freemarker.core.ExtendedDecimalFormatParser$4 
(assert (not (= var3585 null-var2061)))
(declare-const var3061 var1476) ; Statement: r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var3061 null-var1476)))
(declare-const var3245 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3245 null-String)))
(assert true)
(define-const var2850 Int (length/-134980193 var3245)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1) 
(assert (not (= var2850 1))) ; Negate: Cond: $i0 == 1  
(define-const var2750 var863 var863-init) ; Statement: $r3 = new freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException 
(assert true)
;(assert (<init>/-1095590605 var2750 "Must contain exactly 1 character.")) ; Statement: specialinvoke $r3.<freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException: void <init>(java.lang.String)>("Must contain exactly 1 character.") 

(declare-const var2750!1 var863)
(declare-const var625 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var863-init=([], freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException), <init>/-1095590605=([freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException, java.lang.String], void)}
; {var2061=freemarker.core.ExtendedDecimalFormatParser$4, var3585=r4, var1476=freemarker.core.ExtendedDecimalFormatParser, var3061=r1, var3245=r0, var66=null_type, var2850=$i0, var863=freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException, var2750=$r3, var625="Must contain exactly 1 character."}
; {freemarker.core.ExtendedDecimalFormatParser$4=var2061, r4=var3585, freemarker.core.ExtendedDecimalFormatParser=var1476, r1=var3061, r0=var3245, null_type=var66, $i0=var2850, freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException=var863, $r3=var2750, "Must contain exactly 1 character."=var625}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @this: freemarker.core.ExtendedDecimalFormatParser$4;	r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1);	$r3 = new freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException;	specialinvoke $r3.<freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException: void <init>(java.lang.String)>("Must contain exactly 1 character.");	throw $r3
;block_num 2