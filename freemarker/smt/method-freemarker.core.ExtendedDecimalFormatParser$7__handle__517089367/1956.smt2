(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2129 0)
(declare-sort var1504 0)
(declare-sort var3160 0)
(declare-sort var1378 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1504_access$200/1563765517 (var1504) var1378)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun setMinusSign/220674342 (var1378 Int) void)
(declare-const null-var2129 var2129)
(declare-const null-var1504 var1504)
(declare-const null-String String)
(declare-const var2134 var2129) ; Statement: r4 := @this: freemarker.core.ExtendedDecimalFormatParser$7 
(assert (not (= var2134 null-var2129)))
(declare-const var1052 var1504) ; Statement: r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var1052 null-var1504)))
(declare-const var1494 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1494 null-String)))
(assert true)
(define-const var1696 Int (length/-134980193 var1494)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1) 
(assert (= var1696 1)) ; Cond: $i0 == 1 
(define-const var2209 var1378 (var1504_access$200/1563765517 var1052)) ; Statement: $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1) 
(assert (and true (and (> (str.len var1494) 0) (<= 0 0))))
(define-const var1316 Int (charAt/698050440 var1494 0)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert true)
;(assert (setMinusSign/220674342 var2209 var1316)) ; Statement: virtualinvoke $r2.<java.text.DecimalFormatSymbols: void setMinusSign(char)>($c1) 

(declare-const var2209!1 var1378)
(declare-const var1316!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1504_access$200/1563765517=([freemarker.core.ExtendedDecimalFormatParser], java.text.DecimalFormatSymbols), charAt/698050440=([java.lang.String, int], char), setMinusSign/220674342=([java.text.DecimalFormatSymbols, char], void)}
; {var2129=freemarker.core.ExtendedDecimalFormatParser$7, var2134=r4, var1504=freemarker.core.ExtendedDecimalFormatParser, var1052=r1, var1494=r0, var3160=null_type, var1696=$i0, var1378=java.text.DecimalFormatSymbols, var2209=$r2, var1316=$c1}
; {freemarker.core.ExtendedDecimalFormatParser$7=var2129, r4=var2134, freemarker.core.ExtendedDecimalFormatParser=var1504, r1=var1052, r0=var1494, null_type=var3160, $i0=var1696, java.text.DecimalFormatSymbols=var1378, $r2=var2209, $c1=var1316}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r4 := @this: freemarker.core.ExtendedDecimalFormatParser$7;	r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1);	$r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1);	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	virtualinvoke $r2.<java.text.DecimalFormatSymbols: void setMinusSign(char)>($c1);	return
;block_num 2