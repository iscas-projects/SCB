(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3713 0)
(declare-sort var71 0)
(declare-sort var1885 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun mMaxLengthEstimate/1913166096 (var3713) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun applyRules/-1925163438 (var3713 var71 var1885) var1885)
(declare-fun cast-from-String-to-var1885 (String) var1885)
(declare-fun cast-from-var1885-to-String (var1885) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3713 var3713)
(declare-const null-var71 var71)
(declare-const var343 var3713) ; Statement: r0 := @this: cn.hutool.core.date.format.FastDatePrinter 
(assert (not (= var343 null-var3713)))
(declare-const var1816 var71) ; Statement: r1 := @parameter0: java.util.Calendar 
(assert (not (= var1816 null-var71)))
(define-const var1092 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(define-const var2303 Int (mMaxLengthEstimate/1913166096 var343)) ; Statement: $i0 = r0.<cn.hutool.core.date.format.FastDatePrinter: int mMaxLengthEstimate> 
(assert true)
;(assert (<init>/543593434 var1092 var2303)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i0) 

(declare-const var1092!1 String)
(declare-const var2303!1 Int)
(assert true)
(define-const var2017 var1885 (applyRules/-1925163438 var343 var1816 (cast-from-String-to-var1885 var1092!1))) ; Statement: $r3 = specialinvoke r0.<cn.hutool.core.date.format.FastDatePrinter: java.lang.Appendable applyRules(java.util.Calendar,java.lang.Appendable)>(r1, $r2) 
(define-const var3137 String (cast-from-var1885-to-String var2017)) ; Statement: $r4 = (java.lang.StringBuilder) $r3 
(assert true)
(define-const var2995 String (toString/-2075883882 var3137)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), mMaxLengthEstimate/1913166096=([cn.hutool.core.date.format.FastDatePrinter], int), <init>/543593434=([java.lang.StringBuilder, int], void), applyRules/-1925163438=([cn.hutool.core.date.format.FastDatePrinter, java.util.Calendar, java.lang.Appendable], java.lang.Appendable), cast-from-String-to-var1885=([java.lang.StringBuilder], java.lang.Appendable), cast-from-var1885-to-String=([java.lang.Appendable], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3713=cn.hutool.core.date.format.FastDatePrinter, var343=r0, var71=java.util.Calendar, var1816=r1, var1092=$r2, var2303=$i0, var1885=java.lang.Appendable, var2017=$r3, var3137=$r4, var2995=$r5}
; {cn.hutool.core.date.format.FastDatePrinter=var3713, r0=var343, java.util.Calendar=var71, r1=var1816, $r2=var1092, $i0=var2303, java.lang.Appendable=var1885, $r3=var2017, $r4=var3137, $r5=var2995}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.date.format.FastDatePrinter;	r1 := @parameter0: java.util.Calendar;	$r2 = new java.lang.StringBuilder;	$i0 = r0.<cn.hutool.core.date.format.FastDatePrinter: int mMaxLengthEstimate>;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i0);	$r3 = specialinvoke r0.<cn.hutool.core.date.format.FastDatePrinter: java.lang.Appendable applyRules(java.util.Calendar,java.lang.Appendable)>(r1, $r2);	$r4 = (java.lang.StringBuilder) $r3;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1