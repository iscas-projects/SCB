(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1316 0)
(declare-sort var3132 0)
(declare-sort var824 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun mMaxLengthEstimate/1913166096 (var1316) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun format/1341056416 (var1316 var3132 var824) var824)
(declare-fun cast-from-String-to-var824 (String) var824)
(declare-fun cast-from-var824-to-String (var824) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1316 var1316)
(declare-const null-var3132 var3132)
(declare-const var2482 var1316) ; Statement: r0 := @this: cn.hutool.core.date.format.FastDatePrinter 
(assert (not (= var2482 null-var1316)))
(declare-const var2402 var3132) ; Statement: r1 := @parameter0: java.util.Calendar 
(assert (not (= var2402 null-var3132)))
(define-const var3859 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(define-const var841 Int (mMaxLengthEstimate/1913166096 var2482)) ; Statement: $i0 = r0.<cn.hutool.core.date.format.FastDatePrinter: int mMaxLengthEstimate> 
(assert true)
;(assert (<init>/543593434 var3859 var841)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i0) 

(declare-const var3859!1 String)
(declare-const var841!1 Int)
(assert true)
(define-const var3696 var824 (format/1341056416 var2482 var2402 (cast-from-String-to-var824 var3859!1))) ; Statement: $r3 = virtualinvoke r0.<cn.hutool.core.date.format.FastDatePrinter: java.lang.Appendable format(java.util.Calendar,java.lang.Appendable)>(r1, $r2) 
(define-const var2413 String (cast-from-var824-to-String var3696)) ; Statement: $r4 = (java.lang.StringBuilder) $r3 
(assert true)
(define-const var1489 String (toString/-2075883882 var2413)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), mMaxLengthEstimate/1913166096=([cn.hutool.core.date.format.FastDatePrinter], int), <init>/543593434=([java.lang.StringBuilder, int], void), format/1341056416=([cn.hutool.core.date.format.FastDatePrinter, java.util.Calendar, java.lang.Appendable], java.lang.Appendable), cast-from-String-to-var824=([java.lang.StringBuilder], java.lang.Appendable), cast-from-var824-to-String=([java.lang.Appendable], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1316=cn.hutool.core.date.format.FastDatePrinter, var2482=r0, var3132=java.util.Calendar, var2402=r1, var3859=$r2, var841=$i0, var824=java.lang.Appendable, var3696=$r3, var2413=$r4, var1489=$r5}
; {cn.hutool.core.date.format.FastDatePrinter=var1316, r0=var2482, java.util.Calendar=var3132, r1=var2402, $r2=var3859, $i0=var841, java.lang.Appendable=var824, $r3=var3696, $r4=var2413, $r5=var1489}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.date.format.FastDatePrinter;	r1 := @parameter0: java.util.Calendar;	$r2 = new java.lang.StringBuilder;	$i0 = r0.<cn.hutool.core.date.format.FastDatePrinter: int mMaxLengthEstimate>;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i0);	$r3 = virtualinvoke r0.<cn.hutool.core.date.format.FastDatePrinter: java.lang.Appendable format(java.util.Calendar,java.lang.Appendable)>(r1, $r2);	$r4 = (java.lang.StringBuilder) $r3;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1