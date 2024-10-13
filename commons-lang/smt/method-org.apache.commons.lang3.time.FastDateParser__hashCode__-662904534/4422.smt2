(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3681 0)
(declare-sort var3403 0)
(declare-sort var422 0)
(declare-sort var1904 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pattern/-1073810043 (var3681) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun timeZone/-1073810043 (var3681) var3403)
(declare-fun hashCode/1739917532 (var422) Int)
(declare-fun cast-from-var3403-to-var422 (var3403) var422)
(declare-fun locale/-1073810043 (var3681) var1904)
(declare-fun hashCode/1639332149 (var1904) Int)
(declare-const null-var3681 var3681)
(declare-const var353 var3681) ; Statement: r0 := @this: org.apache.commons.lang3.time.FastDateParser 
(assert (not (= var353 null-var3681)))
(define-const var701 String (pattern/-1073810043 var353)) ; Statement: $r1 = r0.<org.apache.commons.lang3.time.FastDateParser: java.lang.String pattern> 
(assert true)
(define-const var816 Int (hashCode/-467973558 var701)) ; Statement: $i5 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1288 var3403 (timeZone/-1073810043 var353)) ; Statement: $r2 = r0.<org.apache.commons.lang3.time.FastDateParser: java.util.TimeZone timeZone> 
(assert true)
(define-const var626 Int (hashCode/1739917532 (cast-from-var3403-to-var422 var1288))) ; Statement: $i2 = virtualinvoke $r2.<java.lang.Object: int hashCode()>() 
(define-const var893 var1904 (locale/-1073810043 var353)) ; Statement: $r3 = r0.<org.apache.commons.lang3.time.FastDateParser: java.util.Locale locale> 
(assert true)
(define-const var3 Int (hashCode/1639332149 var893)) ; Statement: $i0 = virtualinvoke $r3.<java.util.Locale: int hashCode()>() 
(define-const var2916 Int (* 13 var3)) ; Statement: $i1 = 13 * $i0 
(define-const var485 Int (+ var626 var2916)) ; Statement: $i3 = $i2 + $i1 
(define-const var1193 Int (* 13 var485)) ; Statement: $i4 = 13 * $i3 
(define-const var657 Int (+ var816 var1193)) ; Statement: $i6 = $i5 + $i4 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {pattern/-1073810043=([org.apache.commons.lang3.time.FastDateParser], java.lang.String), hashCode/-467973558=([java.lang.String], int), timeZone/-1073810043=([org.apache.commons.lang3.time.FastDateParser], java.util.TimeZone), hashCode/1739917532=([java.lang.Object], int), cast-from-var3403-to-var422=([java.util.TimeZone], java.lang.Object), locale/-1073810043=([org.apache.commons.lang3.time.FastDateParser], java.util.Locale), hashCode/1639332149=([java.util.Locale], int)}
; {var3681=org.apache.commons.lang3.time.FastDateParser, var353=r0, var701=$r1, var816=$i5, var3403=java.util.TimeZone, var1288=$r2, var422=java.lang.Object, var626=$i2, var1904=java.util.Locale, var893=$r3, var3=$i0, var2916=$i1, var485=$i3, var1193=$i4, var657=$i6}
; {org.apache.commons.lang3.time.FastDateParser=var3681, r0=var353, $r1=var701, $i5=var816, java.util.TimeZone=var3403, $r2=var1288, java.lang.Object=var422, $i2=var626, java.util.Locale=var1904, $r3=var893, $i0=var3, $i1=var2916, $i3=var485, $i4=var1193, $i6=var657}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.time.FastDateParser;	$r1 = r0.<org.apache.commons.lang3.time.FastDateParser: java.lang.String pattern>;	$i5 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$r2 = r0.<org.apache.commons.lang3.time.FastDateParser: java.util.TimeZone timeZone>;	$i2 = virtualinvoke $r2.<java.lang.Object: int hashCode()>();	$r3 = r0.<org.apache.commons.lang3.time.FastDateParser: java.util.Locale locale>;	$i0 = virtualinvoke $r3.<java.util.Locale: int hashCode()>();	$i1 = 13 * $i0;	$i3 = $i2 + $i1;	$i4 = 13 * $i3;	$i6 = $i5 + $i4;	return $i6
;block_num 1