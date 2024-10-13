(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var635 0)
(declare-sort var1243 0)
(declare-sort var2025 0)
(declare-sort var1730 0)
(declare-sort var2929 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIndex/-2136393185 (var2929) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun setErrorIndex/-1773443795 (var2929 Int) void)
(declare-const null-var635 var635)
(declare-const null-var1243 var1243)
(declare-const null-var2025 var2025)
(declare-const null-String String)
(declare-const null-var2929 var2929)
(declare-const null-Int Int)
(declare-const var855 var635) ; Statement: r4 := @this: cn.hutool.core.date.format.FastDateParser$NumberStrategy 
(assert (not (= var855 null-var635)))
(declare-const var2236 var1243) ; Statement: r5 := @parameter0: cn.hutool.core.date.format.FastDateParser 
(assert (not (= var2236 null-var1243)))
(declare-const var1627 var2025) ; Statement: r3 := @parameter1: java.util.Calendar 
(assert (not (= var1627 null-var2025)))
(declare-const var1094 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var1094 null-String)))
(declare-const var3517 var2929) ; Statement: r0 := @parameter3: java.text.ParsePosition 
(assert (not (= var3517 null-var2929)))
(declare-const var1457 Int) ; Statement: i0 := @parameter4: int 
(assert (not (= var1457 null-Int)))
(assert true)
(define-const var2801 Int (getIndex/-2136393185 var3517)) ; Statement: i5 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
(define-const var3177 Int (length/-134980193 var1094)) ; Statement: i6 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i0 != 0 goto i8 = i5 + i0 
(assert (not (= var1457 0))) ; Cond: i0 != 0 
(define-const var1548 Int (+ var2801 var1457)) ; Statement: i8 = i5 + i0 
 ; Statement: if i6 <= i8 goto (branch) 
(assert (<= var3177 var1548)) ; Cond: i6 <= i8 
 ; Statement: if i5 >= i6 goto $i1 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert (>= var2801 var3177)) ; Cond: i5 >= i6 
(assert true)
(define-const var33 Int (getIndex/-2136393185 var3517)) ; Statement: $i1 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
 ; Statement: if $i1 != i5 goto $i2 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert (not (not (= var33 var2801)))) ; Negate: Cond: $i1 != i5  
(assert true)
;(assert (setErrorIndex/-1773443795 var3517 var2801)) ; Statement: virtualinvoke r0.<java.text.ParsePosition: void setErrorIndex(int)>(i5) 

(declare-const var3517!1 var2929)
(declare-const var2801!1 Int)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getIndex/-2136393185=([java.text.ParsePosition], int), length/-134980193=([java.lang.String], int), setErrorIndex/-1773443795=([java.text.ParsePosition, int], void)}
; {var635=cn.hutool.core.date.format.FastDateParser$NumberStrategy, var855=r4, var1243=cn.hutool.core.date.format.FastDateParser, var2236=r5, var2025=java.util.Calendar, var1627=r3, var1094=r1, var1730=null_type, var2929=java.text.ParsePosition, var3517=r0, var1457=i0, var2801=i5, var3177=i6, var1548=i8, var33=$i1}
; {cn.hutool.core.date.format.FastDateParser$NumberStrategy=var635, r4=var855, cn.hutool.core.date.format.FastDateParser=var1243, r5=var2236, java.util.Calendar=var2025, r3=var1627, r1=var1094, null_type=var1730, java.text.ParsePosition=var2929, r0=var3517, i0=var1457, i5=var2801, i6=var3177, i8=var1548, $i1=var33}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @this: cn.hutool.core.date.format.FastDateParser$NumberStrategy;	r5 := @parameter0: cn.hutool.core.date.format.FastDateParser;	r3 := @parameter1: java.util.Calendar;	r1 := @parameter2: java.lang.String;	r0 := @parameter3: java.text.ParsePosition;	i0 := @parameter4: int;	i5 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	i6 = virtualinvoke r1.<java.lang.String: int length()>();	if i0 != 0 goto i8 = i5 + i0;	i8 = i5 + i0;	if i6 <= i8 goto (branch);	if i5 >= i6 goto $i1 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	$i1 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	if $i1 != i5 goto $i2 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	virtualinvoke r0.<java.text.ParsePosition: void setErrorIndex(int)>(i5);	return 0
;block_num 5