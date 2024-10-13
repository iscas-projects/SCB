(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1420 0)
(declare-sort var2807 0)
(declare-sort var18 0)
(declare-sort var1391 0)
(declare-sort var2088 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun formatField/551809035 (var1420) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getIndex/-2136393185 (var2088) Int)
(declare-fun setIndex/-453939609 (var2088 Int) void)
(declare-const null-var1420 var1420)
(declare-const null-var2807 var2807)
(declare-const null-var18 var18)
(declare-const null-String String)
(declare-const null-var2088 var2088)
(declare-const null-Int Int)
(declare-const var1569 var1420) ; Statement: r0 := @this: cn.hutool.core.date.format.FastDateParser$CopyQuotedStrategy 
(assert (not (= var1569 null-var1420)))
(declare-const var2889 var2807) ; Statement: r6 := @parameter0: cn.hutool.core.date.format.FastDateParser 
(assert (not (= var2889 null-var2807)))
(declare-const var317 var18) ; Statement: r7 := @parameter1: java.util.Calendar 
(assert (not (= var317 null-var18)))
(declare-const var681 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var681 null-String)))
(declare-const var2576 var2088) ; Statement: r2 := @parameter3: java.text.ParsePosition 
(assert (not (= var2576 null-var2088)))
(declare-const var2289 Int) ; Statement: i9 := @parameter4: int 
(assert (not (= var2289 null-Int)))
(define-const var2494 Int 0) ; Statement: i10 = 0 
(assert true) ; Non Conditional
(define-const var2749 String (formatField/551809035 var1569)) ; Statement: $r1 = r0.<cn.hutool.core.date.format.FastDateParser$CopyQuotedStrategy: java.lang.String formatField> 
(assert true)
(define-const var2570 Int (length/-134980193 var2749)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if i10 >= $i0 goto $r3 = r0.<cn.hutool.core.date.format.FastDateParser$CopyQuotedStrategy: java.lang.String formatField> 
(assert (>= var2494 var2570)) ; Cond: i10 >= $i0 
(define-const var2601 String (formatField/551809035 var1569)) ; Statement: $r3 = r0.<cn.hutool.core.date.format.FastDateParser$CopyQuotedStrategy: java.lang.String formatField> 
(assert true)
(define-const var3435 Int (length/-134980193 var2601)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int length()>() 
(assert true)
(define-const var2715 Int (getIndex/-2136393185 var2576)) ; Statement: $i1 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>() 
(define-const var1402 Int (+ var3435 var2715)) ; Statement: $i3 = $i2 + $i1 
(assert true)
;(assert (setIndex/-453939609 var2576 var1402)) ; Statement: virtualinvoke r2.<java.text.ParsePosition: void setIndex(int)>($i3) 

(declare-const var2576!1 var2088)
(declare-const var1402!1 Int)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {formatField/551809035=([cn.hutool.core.date.format.FastDateParser$CopyQuotedStrategy], java.lang.String), length/-134980193=([java.lang.String], int), getIndex/-2136393185=([java.text.ParsePosition], int), setIndex/-453939609=([java.text.ParsePosition, int], void)}
; {var1420=cn.hutool.core.date.format.FastDateParser$CopyQuotedStrategy, var1569=r0, var2807=cn.hutool.core.date.format.FastDateParser, var2889=r6, var18=java.util.Calendar, var317=r7, var681=r4, var1391=null_type, var2088=java.text.ParsePosition, var2576=r2, var2289=i9, var2494=i10, var2749=$r1, var2570=$i0, var2601=$r3, var3435=$i2, var2715=$i1, var1402=$i3}
; {cn.hutool.core.date.format.FastDateParser$CopyQuotedStrategy=var1420, r0=var1569, cn.hutool.core.date.format.FastDateParser=var2807, r6=var2889, java.util.Calendar=var18, r7=var317, r4=var681, null_type=var1391, java.text.ParsePosition=var2088, r2=var2576, i9=var2289, i10=var2494, $r1=var2749, $i0=var2570, $r3=var2601, $i2=var3435, $i1=var2715, $i3=var1402}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @this: cn.hutool.core.date.format.FastDateParser$CopyQuotedStrategy;	r6 := @parameter0: cn.hutool.core.date.format.FastDateParser;	r7 := @parameter1: java.util.Calendar;	r4 := @parameter2: java.lang.String;	r2 := @parameter3: java.text.ParsePosition;	i9 := @parameter4: int;	i10 = 0;	$r1 = r0.<cn.hutool.core.date.format.FastDateParser$CopyQuotedStrategy: java.lang.String formatField>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	if i10 >= $i0 goto $r3 = r0.<cn.hutool.core.date.format.FastDateParser$CopyQuotedStrategy: java.lang.String formatField>;	$r3 = r0.<cn.hutool.core.date.format.FastDateParser$CopyQuotedStrategy: java.lang.String formatField>;	$i2 = virtualinvoke $r3.<java.lang.String: int length()>();	$i1 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>();	$i3 = $i2 + $i1;	virtualinvoke r2.<java.text.ParsePosition: void setIndex(int)>($i3);	return 1
;block_num 3