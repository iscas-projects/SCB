(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3810 0)
(declare-sort var2668 0)
(declare-sort var2785 0)
(declare-sort var3967 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2668_access$200/1563765517 (var2668) var3967)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun setPercent/416049198 (var3967 Int) void)
(declare-const null-var3810 var3810)
(declare-const null-var2668 var2668)
(declare-const null-String String)
(declare-const var3634 var3810) ; Statement: r4 := @this: freemarker.core.ExtendedDecimalFormatParser$10 
(assert (not (= var3634 null-var3810)))
(declare-const var3208 var2668) ; Statement: r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var3208 null-var2668)))
(declare-const var2068 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2068 null-String)))
(assert true)
(define-const var2408 Int (length/-134980193 var2068)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1) 
(assert (= var2408 1)) ; Cond: $i0 == 1 
(define-const var2538 var3967 (var2668_access$200/1563765517 var3208)) ; Statement: $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1) 
(assert (and true (and (> (str.len var2068) 0) (<= 0 0))))
(define-const var490 Int (charAt/698050440 var2068 0)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert true)
;(assert (setPercent/416049198 var2538 var490)) ; Statement: virtualinvoke $r2.<java.text.DecimalFormatSymbols: void setPercent(char)>($c1) 

(declare-const var2538!1 var3967)
(declare-const var490!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2668_access$200/1563765517=([freemarker.core.ExtendedDecimalFormatParser], java.text.DecimalFormatSymbols), charAt/698050440=([java.lang.String, int], char), setPercent/416049198=([java.text.DecimalFormatSymbols, char], void)}
; {var3810=freemarker.core.ExtendedDecimalFormatParser$10, var3634=r4, var2668=freemarker.core.ExtendedDecimalFormatParser, var3208=r1, var2068=r0, var2785=null_type, var2408=$i0, var3967=java.text.DecimalFormatSymbols, var2538=$r2, var490=$c1}
; {freemarker.core.ExtendedDecimalFormatParser$10=var3810, r4=var3634, freemarker.core.ExtendedDecimalFormatParser=var2668, r1=var3208, r0=var2068, null_type=var2785, $i0=var2408, java.text.DecimalFormatSymbols=var3967, $r2=var2538, $c1=var490}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r4 := @this: freemarker.core.ExtendedDecimalFormatParser$10;	r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1);	$r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1);	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	virtualinvoke $r2.<java.text.DecimalFormatSymbols: void setPercent(char)>($c1);	return
;block_num 2