(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var571 0)
(declare-sort var2541 0)
(declare-sort var291 0)
(declare-sort var3317 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2541_access$200/1563765517 (var2541) var3317)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun setGroupingSeparator/-1799513935 (var3317 Int) void)
(declare-const null-var571 var571)
(declare-const null-var2541 var2541)
(declare-const null-String String)
(declare-const var457 var571) ; Statement: r4 := @this: freemarker.core.ExtendedDecimalFormatParser$5 
(assert (not (= var457 null-var571)))
(declare-const var1809 var2541) ; Statement: r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var1809 null-var2541)))
(declare-const var1366 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1366 null-String)))
(assert true)
(define-const var450 Int (length/-134980193 var1366)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1) 
(assert (= var450 1)) ; Cond: $i0 == 1 
(define-const var105 var3317 (var2541_access$200/1563765517 var1809)) ; Statement: $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1) 
(assert (and true (and (> (str.len var1366) 0) (<= 0 0))))
(define-const var1441 Int (charAt/698050440 var1366 0)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert true)
;(assert (setGroupingSeparator/-1799513935 var105 var1441)) ; Statement: virtualinvoke $r2.<java.text.DecimalFormatSymbols: void setGroupingSeparator(char)>($c1) 

(declare-const var105!1 var3317)
(declare-const var1441!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2541_access$200/1563765517=([freemarker.core.ExtendedDecimalFormatParser], java.text.DecimalFormatSymbols), charAt/698050440=([java.lang.String, int], char), setGroupingSeparator/-1799513935=([java.text.DecimalFormatSymbols, char], void)}
; {var571=freemarker.core.ExtendedDecimalFormatParser$5, var457=r4, var2541=freemarker.core.ExtendedDecimalFormatParser, var1809=r1, var1366=r0, var291=null_type, var450=$i0, var3317=java.text.DecimalFormatSymbols, var105=$r2, var1441=$c1}
; {freemarker.core.ExtendedDecimalFormatParser$5=var571, r4=var457, freemarker.core.ExtendedDecimalFormatParser=var2541, r1=var1809, r0=var1366, null_type=var291, $i0=var450, java.text.DecimalFormatSymbols=var3317, $r2=var105, $c1=var1441}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r4 := @this: freemarker.core.ExtendedDecimalFormatParser$5;	r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1);	$r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1);	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	virtualinvoke $r2.<java.text.DecimalFormatSymbols: void setGroupingSeparator(char)>($c1);	return
;block_num 2