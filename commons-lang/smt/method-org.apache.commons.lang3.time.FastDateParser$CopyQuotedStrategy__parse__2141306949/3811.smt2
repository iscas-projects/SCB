(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3704 0)
(declare-sort var188 0)
(declare-sort var3678 0)
(declare-sort var982 0)
(declare-sort var2984 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun formatField/1302741359 (var3704) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getIndex/-2136393185 (var2984) Int)
(declare-fun setIndex/-453939609 (var2984 Int) void)
(declare-const null-var3704 var3704)
(declare-const null-var188 var188)
(declare-const null-var3678 var3678)
(declare-const null-String String)
(declare-const null-var2984 var2984)
(declare-const null-Int Int)
(declare-const var2073 var3704) ; Statement: r0 := @this: org.apache.commons.lang3.time.FastDateParser$CopyQuotedStrategy 
(assert (not (= var2073 null-var3704)))
(declare-const var3862 var188) ; Statement: r6 := @parameter0: org.apache.commons.lang3.time.FastDateParser 
(assert (not (= var3862 null-var188)))
(declare-const var2743 var3678) ; Statement: r7 := @parameter1: java.util.Calendar 
(assert (not (= var2743 null-var3678)))
(declare-const var483 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var483 null-String)))
(declare-const var3392 var2984) ; Statement: r2 := @parameter3: java.text.ParsePosition 
(assert (not (= var3392 null-var2984)))
(declare-const var1376 Int) ; Statement: i9 := @parameter4: int 
(assert (not (= var1376 null-Int)))
(define-const var1778 Int 0) ; Statement: i10 = 0 
(assert true) ; Non Conditional
(define-const var3445 String (formatField/1302741359 var2073)) ; Statement: $r1 = r0.<org.apache.commons.lang3.time.FastDateParser$CopyQuotedStrategy: java.lang.String formatField> 
(assert true)
(define-const var1009 Int (length/-134980193 var3445)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if i10 >= $i0 goto $r3 = r0.<org.apache.commons.lang3.time.FastDateParser$CopyQuotedStrategy: java.lang.String formatField> 
(assert (>= var1778 var1009)) ; Cond: i10 >= $i0 
(define-const var2641 String (formatField/1302741359 var2073)) ; Statement: $r3 = r0.<org.apache.commons.lang3.time.FastDateParser$CopyQuotedStrategy: java.lang.String formatField> 
(assert true)
(define-const var3296 Int (length/-134980193 var2641)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int length()>() 
(assert true)
(define-const var3540 Int (getIndex/-2136393185 var3392)) ; Statement: $i1 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>() 
(define-const var3889 Int (+ var3296 var3540)) ; Statement: $i3 = $i2 + $i1 
(assert true)
;(assert (setIndex/-453939609 var3392 var3889)) ; Statement: virtualinvoke r2.<java.text.ParsePosition: void setIndex(int)>($i3) 

(declare-const var3392!1 var2984)
(declare-const var3889!1 Int)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {formatField/1302741359=([org.apache.commons.lang3.time.FastDateParser$CopyQuotedStrategy], java.lang.String), length/-134980193=([java.lang.String], int), getIndex/-2136393185=([java.text.ParsePosition], int), setIndex/-453939609=([java.text.ParsePosition, int], void)}
; {var3704=org.apache.commons.lang3.time.FastDateParser$CopyQuotedStrategy, var2073=r0, var188=org.apache.commons.lang3.time.FastDateParser, var3862=r6, var3678=java.util.Calendar, var2743=r7, var483=r4, var982=null_type, var2984=java.text.ParsePosition, var3392=r2, var1376=i9, var1778=i10, var3445=$r1, var1009=$i0, var2641=$r3, var3296=$i2, var3540=$i1, var3889=$i3}
; {org.apache.commons.lang3.time.FastDateParser$CopyQuotedStrategy=var3704, r0=var2073, org.apache.commons.lang3.time.FastDateParser=var188, r6=var3862, java.util.Calendar=var3678, r7=var2743, r4=var483, null_type=var982, java.text.ParsePosition=var2984, r2=var3392, i9=var1376, i10=var1778, $r1=var3445, $i0=var1009, $r3=var2641, $i2=var3296, $i1=var3540, $i3=var3889}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @this: org.apache.commons.lang3.time.FastDateParser$CopyQuotedStrategy;	r6 := @parameter0: org.apache.commons.lang3.time.FastDateParser;	r7 := @parameter1: java.util.Calendar;	r4 := @parameter2: java.lang.String;	r2 := @parameter3: java.text.ParsePosition;	i9 := @parameter4: int;	i10 = 0;	$r1 = r0.<org.apache.commons.lang3.time.FastDateParser$CopyQuotedStrategy: java.lang.String formatField>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	if i10 >= $i0 goto $r3 = r0.<org.apache.commons.lang3.time.FastDateParser$CopyQuotedStrategy: java.lang.String formatField>;	$r3 = r0.<org.apache.commons.lang3.time.FastDateParser$CopyQuotedStrategy: java.lang.String formatField>;	$i2 = virtualinvoke $r3.<java.lang.String: int length()>();	$i1 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>();	$i3 = $i2 + $i1;	virtualinvoke r2.<java.text.ParsePosition: void setIndex(int)>($i3);	return 1
;block_num 3