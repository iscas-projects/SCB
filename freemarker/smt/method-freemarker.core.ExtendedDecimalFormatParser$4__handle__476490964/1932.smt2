(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1085 0)
(declare-sort var3501 0)
(declare-sort var1254 0)
(declare-sort var1762 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3501_access$200/1563765517 (var3501) var1762)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun setMonetaryDecimalSeparator/1730494130 (var1762 Int) void)
(declare-const null-var1085 var1085)
(declare-const null-var3501 var3501)
(declare-const null-String String)
(declare-const var367 var1085) ; Statement: r4 := @this: freemarker.core.ExtendedDecimalFormatParser$4 
(assert (not (= var367 null-var1085)))
(declare-const var433 var3501) ; Statement: r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var433 null-var3501)))
(declare-const var3907 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3907 null-String)))
(assert true)
(define-const var2715 Int (length/-134980193 var3907)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1) 
(assert (= var2715 1)) ; Cond: $i0 == 1 
(define-const var2050 var1762 (var3501_access$200/1563765517 var433)) ; Statement: $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1) 
(assert (and true (and (> (str.len var3907) 0) (<= 0 0))))
(define-const var2909 Int (charAt/698050440 var3907 0)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert true)
;(assert (setMonetaryDecimalSeparator/1730494130 var2050 var2909)) ; Statement: virtualinvoke $r2.<java.text.DecimalFormatSymbols: void setMonetaryDecimalSeparator(char)>($c1) 

(declare-const var2050!1 var1762)
(declare-const var2909!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var3501_access$200/1563765517=([freemarker.core.ExtendedDecimalFormatParser], java.text.DecimalFormatSymbols), charAt/698050440=([java.lang.String, int], char), setMonetaryDecimalSeparator/1730494130=([java.text.DecimalFormatSymbols, char], void)}
; {var1085=freemarker.core.ExtendedDecimalFormatParser$4, var367=r4, var3501=freemarker.core.ExtendedDecimalFormatParser, var433=r1, var3907=r0, var1254=null_type, var2715=$i0, var1762=java.text.DecimalFormatSymbols, var2050=$r2, var2909=$c1}
; {freemarker.core.ExtendedDecimalFormatParser$4=var1085, r4=var367, freemarker.core.ExtendedDecimalFormatParser=var3501, r1=var433, r0=var3907, null_type=var1254, $i0=var2715, java.text.DecimalFormatSymbols=var1762, $r2=var2050, $c1=var2909}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r4 := @this: freemarker.core.ExtendedDecimalFormatParser$4;	r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1);	$r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1);	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	virtualinvoke $r2.<java.text.DecimalFormatSymbols: void setMonetaryDecimalSeparator(char)>($c1);	return
;block_num 2