(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3682 0)
(declare-sort var3883 0)
(declare-sort var72 0)
(declare-sort var1354 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3883_access$200/1563765517 (var3883) var1354)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun setDecimalSeparator/694475071 (var1354 Int) void)
(declare-const null-var3682 var3682)
(declare-const null-var3883 var3883)
(declare-const null-String String)
(declare-const var1842 var3682) ; Statement: r4 := @this: freemarker.core.ExtendedDecimalFormatParser$3 
(assert (not (= var1842 null-var3682)))
(declare-const var3985 var3883) ; Statement: r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var3985 null-var3883)))
(declare-const var1718 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1718 null-String)))
(assert true)
(define-const var3227 Int (length/-134980193 var1718)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1) 
(assert (= var3227 1)) ; Cond: $i0 == 1 
(define-const var1628 var1354 (var3883_access$200/1563765517 var3985)) ; Statement: $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1) 
(assert (and true (and (> (str.len var1718) 0) (<= 0 0))))
(define-const var3365 Int (charAt/698050440 var1718 0)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert true)
;(assert (setDecimalSeparator/694475071 var1628 var3365)) ; Statement: virtualinvoke $r2.<java.text.DecimalFormatSymbols: void setDecimalSeparator(char)>($c1) 

(declare-const var1628!1 var1354)
(declare-const var3365!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var3883_access$200/1563765517=([freemarker.core.ExtendedDecimalFormatParser], java.text.DecimalFormatSymbols), charAt/698050440=([java.lang.String, int], char), setDecimalSeparator/694475071=([java.text.DecimalFormatSymbols, char], void)}
; {var3682=freemarker.core.ExtendedDecimalFormatParser$3, var1842=r4, var3883=freemarker.core.ExtendedDecimalFormatParser, var3985=r1, var1718=r0, var72=null_type, var3227=$i0, var1354=java.text.DecimalFormatSymbols, var1628=$r2, var3365=$c1}
; {freemarker.core.ExtendedDecimalFormatParser$3=var3682, r4=var1842, freemarker.core.ExtendedDecimalFormatParser=var3883, r1=var3985, r0=var1718, null_type=var72, $i0=var3227, java.text.DecimalFormatSymbols=var1354, $r2=var1628, $c1=var3365}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r4 := @this: freemarker.core.ExtendedDecimalFormatParser$3;	r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1);	$r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1);	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	virtualinvoke $r2.<java.text.DecimalFormatSymbols: void setDecimalSeparator(char)>($c1);	return
;block_num 2