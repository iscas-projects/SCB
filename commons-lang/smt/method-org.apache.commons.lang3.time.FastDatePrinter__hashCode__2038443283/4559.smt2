(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2165 0)
(declare-sort var3597 0)
(declare-sort var2820 0)
(declare-sort var3141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pattern/1549876084 (var2165) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun timeZone/1549876084 (var2165) var3597)
(declare-fun hashCode/1739917532 (var2820) Int)
(declare-fun cast-from-var3597-to-var2820 (var3597) var2820)
(declare-fun locale/1549876084 (var2165) var3141)
(declare-fun hashCode/1639332149 (var3141) Int)
(declare-const null-var2165 var2165)
(declare-const var2096 var2165) ; Statement: r0 := @this: org.apache.commons.lang3.time.FastDatePrinter 
(assert (not (= var2096 null-var2165)))
(define-const var84 String (pattern/1549876084 var2096)) ; Statement: $r1 = r0.<org.apache.commons.lang3.time.FastDatePrinter: java.lang.String pattern> 
(assert true)
(define-const var433 Int (hashCode/-467973558 var84)) ; Statement: $i5 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1427 var3597 (timeZone/1549876084 var2096)) ; Statement: $r2 = r0.<org.apache.commons.lang3.time.FastDatePrinter: java.util.TimeZone timeZone> 
(assert true)
(define-const var3967 Int (hashCode/1739917532 (cast-from-var3597-to-var2820 var1427))) ; Statement: $i2 = virtualinvoke $r2.<java.lang.Object: int hashCode()>() 
(define-const var690 var3141 (locale/1549876084 var2096)) ; Statement: $r3 = r0.<org.apache.commons.lang3.time.FastDatePrinter: java.util.Locale locale> 
(assert true)
(define-const var522 Int (hashCode/1639332149 var690)) ; Statement: $i0 = virtualinvoke $r3.<java.util.Locale: int hashCode()>() 
(define-const var1360 Int (* 13 var522)) ; Statement: $i1 = 13 * $i0 
(define-const var1608 Int (+ var3967 var1360)) ; Statement: $i3 = $i2 + $i1 
(define-const var2607 Int (* 13 var1608)) ; Statement: $i4 = 13 * $i3 
(define-const var1588 Int (+ var433 var2607)) ; Statement: $i6 = $i5 + $i4 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {pattern/1549876084=([org.apache.commons.lang3.time.FastDatePrinter], java.lang.String), hashCode/-467973558=([java.lang.String], int), timeZone/1549876084=([org.apache.commons.lang3.time.FastDatePrinter], java.util.TimeZone), hashCode/1739917532=([java.lang.Object], int), cast-from-var3597-to-var2820=([java.util.TimeZone], java.lang.Object), locale/1549876084=([org.apache.commons.lang3.time.FastDatePrinter], java.util.Locale), hashCode/1639332149=([java.util.Locale], int)}
; {var2165=org.apache.commons.lang3.time.FastDatePrinter, var2096=r0, var84=$r1, var433=$i5, var3597=java.util.TimeZone, var1427=$r2, var2820=java.lang.Object, var3967=$i2, var3141=java.util.Locale, var690=$r3, var522=$i0, var1360=$i1, var1608=$i3, var2607=$i4, var1588=$i6}
; {org.apache.commons.lang3.time.FastDatePrinter=var2165, r0=var2096, $r1=var84, $i5=var433, java.util.TimeZone=var3597, $r2=var1427, java.lang.Object=var2820, $i2=var3967, java.util.Locale=var3141, $r3=var690, $i0=var522, $i1=var1360, $i3=var1608, $i4=var2607, $i6=var1588}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.time.FastDatePrinter;	$r1 = r0.<org.apache.commons.lang3.time.FastDatePrinter: java.lang.String pattern>;	$i5 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$r2 = r0.<org.apache.commons.lang3.time.FastDatePrinter: java.util.TimeZone timeZone>;	$i2 = virtualinvoke $r2.<java.lang.Object: int hashCode()>();	$r3 = r0.<org.apache.commons.lang3.time.FastDatePrinter: java.util.Locale locale>;	$i0 = virtualinvoke $r3.<java.util.Locale: int hashCode()>();	$i1 = 13 * $i0;	$i3 = $i2 + $i1;	$i4 = 13 * $i3;	$i6 = $i5 + $i4;	return $i6
;block_num 1