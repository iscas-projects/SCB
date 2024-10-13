(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2328 0)
(declare-sort var3679 0)
(declare-sort var3791 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun maxLengthEstimate/1549876084 (var2328) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun applyRules/-1090986906 (var2328 var3679 var3791) var3791)
(declare-fun cast-from-String-to-var3791 (String) var3791)
(declare-fun cast-from-var3791-to-String (var3791) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2328 var2328)
(declare-const null-var3679 var3679)
(declare-const var1761 var2328) ; Statement: r0 := @this: org.apache.commons.lang3.time.FastDatePrinter 
(assert (not (= var1761 null-var2328)))
(declare-const var1727 var3679) ; Statement: r1 := @parameter0: java.util.Calendar 
(assert (not (= var1727 null-var3679)))
(define-const var2211 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(define-const var327 Int (maxLengthEstimate/1549876084 var1761)) ; Statement: $i0 = r0.<org.apache.commons.lang3.time.FastDatePrinter: int maxLengthEstimate> 
(assert true)
;(assert (<init>/543593434 var2211 var327)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i0) 

(declare-const var2211!1 String)
(declare-const var327!1 Int)
(assert true)
(define-const var630 var3791 (applyRules/-1090986906 var1761 var1727 (cast-from-String-to-var3791 var2211!1))) ; Statement: $r3 = specialinvoke r0.<org.apache.commons.lang3.time.FastDatePrinter: java.lang.Appendable applyRules(java.util.Calendar,java.lang.Appendable)>(r1, $r2) 
(define-const var3577 String (cast-from-var3791-to-String var630)) ; Statement: $r4 = (java.lang.StringBuilder) $r3 
(assert true)
(define-const var3075 String (toString/-2075883882 var3577)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), maxLengthEstimate/1549876084=([org.apache.commons.lang3.time.FastDatePrinter], int), <init>/543593434=([java.lang.StringBuilder, int], void), applyRules/-1090986906=([org.apache.commons.lang3.time.FastDatePrinter, java.util.Calendar, java.lang.Appendable], java.lang.Appendable), cast-from-String-to-var3791=([java.lang.StringBuilder], java.lang.Appendable), cast-from-var3791-to-String=([java.lang.Appendable], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2328=org.apache.commons.lang3.time.FastDatePrinter, var1761=r0, var3679=java.util.Calendar, var1727=r1, var2211=$r2, var327=$i0, var3791=java.lang.Appendable, var630=$r3, var3577=$r4, var3075=$r5}
; {org.apache.commons.lang3.time.FastDatePrinter=var2328, r0=var1761, java.util.Calendar=var3679, r1=var1727, $r2=var2211, $i0=var327, java.lang.Appendable=var3791, $r3=var630, $r4=var3577, $r5=var3075}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.time.FastDatePrinter;	r1 := @parameter0: java.util.Calendar;	$r2 = new java.lang.StringBuilder;	$i0 = r0.<org.apache.commons.lang3.time.FastDatePrinter: int maxLengthEstimate>;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i0);	$r3 = specialinvoke r0.<org.apache.commons.lang3.time.FastDatePrinter: java.lang.Appendable applyRules(java.util.Calendar,java.lang.Appendable)>(r1, $r2);	$r4 = (java.lang.StringBuilder) $r3;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1