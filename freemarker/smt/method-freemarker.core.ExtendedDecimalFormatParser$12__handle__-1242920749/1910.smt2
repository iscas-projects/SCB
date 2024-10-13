(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var946 0)
(declare-sort var357 0)
(declare-sort var1805 0)
(declare-sort var3732 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var357_access$200/1563765517 (var357) var3732)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun setZeroDigit/466476302 (var3732 Int) void)
(declare-const null-var946 var946)
(declare-const null-var357 var357)
(declare-const null-String String)
(declare-const var2712 var946) ; Statement: r4 := @this: freemarker.core.ExtendedDecimalFormatParser$12 
(assert (not (= var2712 null-var946)))
(declare-const var2158 var357) ; Statement: r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var2158 null-var357)))
(declare-const var1780 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1780 null-String)))
(assert true)
(define-const var3002 Int (length/-134980193 var1780)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1) 
(assert (= var3002 1)) ; Cond: $i0 == 1 
(define-const var632 var3732 (var357_access$200/1563765517 var2158)) ; Statement: $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1) 
(assert (and true (and (> (str.len var1780) 0) (<= 0 0))))
(define-const var3896 Int (charAt/698050440 var1780 0)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert true)
;(assert (setZeroDigit/466476302 var632 var3896)) ; Statement: virtualinvoke $r2.<java.text.DecimalFormatSymbols: void setZeroDigit(char)>($c1) 

(declare-const var632!1 var3732)
(declare-const var3896!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var357_access$200/1563765517=([freemarker.core.ExtendedDecimalFormatParser], java.text.DecimalFormatSymbols), charAt/698050440=([java.lang.String, int], char), setZeroDigit/466476302=([java.text.DecimalFormatSymbols, char], void)}
; {var946=freemarker.core.ExtendedDecimalFormatParser$12, var2712=r4, var357=freemarker.core.ExtendedDecimalFormatParser, var2158=r1, var1780=r0, var1805=null_type, var3002=$i0, var3732=java.text.DecimalFormatSymbols, var632=$r2, var3896=$c1}
; {freemarker.core.ExtendedDecimalFormatParser$12=var946, r4=var2712, freemarker.core.ExtendedDecimalFormatParser=var357, r1=var2158, r0=var1780, null_type=var1805, $i0=var3002, java.text.DecimalFormatSymbols=var3732, $r2=var632, $c1=var3896}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r4 := @this: freemarker.core.ExtendedDecimalFormatParser$12;	r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1);	$r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1);	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	virtualinvoke $r2.<java.text.DecimalFormatSymbols: void setZeroDigit(char)>($c1);	return
;block_num 2