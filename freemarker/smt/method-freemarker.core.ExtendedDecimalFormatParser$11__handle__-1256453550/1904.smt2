(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1432 0)
(declare-sort var1318 0)
(declare-sort var1599 0)
(declare-sort var116 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1318_access$200/1563765517 (var1318) var116)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun setPerMill/-1229419750 (var116 Int) void)
(declare-const null-var1432 var1432)
(declare-const null-var1318 var1318)
(declare-const null-String String)
(declare-const var3810 var1432) ; Statement: r4 := @this: freemarker.core.ExtendedDecimalFormatParser$11 
(assert (not (= var3810 null-var1432)))
(declare-const var3143 var1318) ; Statement: r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var3143 null-var1318)))
(declare-const var1894 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1894 null-String)))
(assert true)
(define-const var1468 Int (length/-134980193 var1894)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1) 
(assert (= var1468 1)) ; Cond: $i0 == 1 
(define-const var310 var116 (var1318_access$200/1563765517 var3143)) ; Statement: $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1) 
(assert (and true (and (> (str.len var1894) 0) (<= 0 0))))
(define-const var3944 Int (charAt/698050440 var1894 0)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert true)
;(assert (setPerMill/-1229419750 var310 var3944)) ; Statement: virtualinvoke $r2.<java.text.DecimalFormatSymbols: void setPerMill(char)>($c1) 

(declare-const var310!1 var116)
(declare-const var3944!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1318_access$200/1563765517=([freemarker.core.ExtendedDecimalFormatParser], java.text.DecimalFormatSymbols), charAt/698050440=([java.lang.String, int], char), setPerMill/-1229419750=([java.text.DecimalFormatSymbols, char], void)}
; {var1432=freemarker.core.ExtendedDecimalFormatParser$11, var3810=r4, var1318=freemarker.core.ExtendedDecimalFormatParser, var3143=r1, var1894=r0, var1599=null_type, var1468=$i0, var116=java.text.DecimalFormatSymbols, var310=$r2, var3944=$c1}
; {freemarker.core.ExtendedDecimalFormatParser$11=var1432, r4=var3810, freemarker.core.ExtendedDecimalFormatParser=var1318, r1=var3143, r0=var1894, null_type=var1599, $i0=var1468, java.text.DecimalFormatSymbols=var116, $r2=var310, $c1=var3944}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r4 := @this: freemarker.core.ExtendedDecimalFormatParser$11;	r1 := @parameter0: freemarker.core.ExtendedDecimalFormatParser;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 1 goto $r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1);	$r2 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser: java.text.DecimalFormatSymbols access$200(freemarker.core.ExtendedDecimalFormatParser)>(r1);	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	virtualinvoke $r2.<java.text.DecimalFormatSymbols: void setPerMill(char)>($c1);	return
;block_num 2