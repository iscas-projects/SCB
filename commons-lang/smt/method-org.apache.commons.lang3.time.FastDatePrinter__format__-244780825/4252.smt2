(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var925 0)
(declare-sort var1017 0)
(declare-sort var2237 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun maxLengthEstimate/1549876084 (var925) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun format/2070255028 (var925 var1017 var2237) var2237)
(declare-fun cast-from-String-to-var2237 (String) var2237)
(declare-fun cast-from-var2237-to-String (var2237) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var925 var925)
(declare-const null-var1017 var1017)
(declare-const var3096 var925) ; Statement: r0 := @this: org.apache.commons.lang3.time.FastDatePrinter 
(assert (not (= var3096 null-var925)))
(declare-const var1558 var1017) ; Statement: r1 := @parameter0: java.util.Calendar 
(assert (not (= var1558 null-var1017)))
(define-const var1832 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(define-const var2565 Int (maxLengthEstimate/1549876084 var3096)) ; Statement: $i0 = r0.<org.apache.commons.lang3.time.FastDatePrinter: int maxLengthEstimate> 
(assert true)
;(assert (<init>/543593434 var1832 var2565)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i0) 

(declare-const var1832!1 String)
(declare-const var2565!1 Int)
(assert true)
(define-const var3221 var2237 (format/2070255028 var3096 var1558 (cast-from-String-to-var2237 var1832!1))) ; Statement: $r3 = virtualinvoke r0.<org.apache.commons.lang3.time.FastDatePrinter: java.lang.Appendable format(java.util.Calendar,java.lang.Appendable)>(r1, $r2) 
(define-const var2542 String (cast-from-var2237-to-String var3221)) ; Statement: $r4 = (java.lang.StringBuilder) $r3 
(assert true)
(define-const var1341 String (toString/-2075883882 var2542)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), maxLengthEstimate/1549876084=([org.apache.commons.lang3.time.FastDatePrinter], int), <init>/543593434=([java.lang.StringBuilder, int], void), format/2070255028=([org.apache.commons.lang3.time.FastDatePrinter, java.util.Calendar, java.lang.Appendable], java.lang.Appendable), cast-from-String-to-var2237=([java.lang.StringBuilder], java.lang.Appendable), cast-from-var2237-to-String=([java.lang.Appendable], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var925=org.apache.commons.lang3.time.FastDatePrinter, var3096=r0, var1017=java.util.Calendar, var1558=r1, var1832=$r2, var2565=$i0, var2237=java.lang.Appendable, var3221=$r3, var2542=$r4, var1341=$r5}
; {org.apache.commons.lang3.time.FastDatePrinter=var925, r0=var3096, java.util.Calendar=var1017, r1=var1558, $r2=var1832, $i0=var2565, java.lang.Appendable=var2237, $r3=var3221, $r4=var2542, $r5=var1341}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.time.FastDatePrinter;	r1 := @parameter0: java.util.Calendar;	$r2 = new java.lang.StringBuilder;	$i0 = r0.<org.apache.commons.lang3.time.FastDatePrinter: int maxLengthEstimate>;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i0);	$r3 = virtualinvoke r0.<org.apache.commons.lang3.time.FastDatePrinter: java.lang.Appendable format(java.util.Calendar,java.lang.Appendable)>(r1, $r2);	$r4 = (java.lang.StringBuilder) $r3;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1