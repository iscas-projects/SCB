(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var379 0)
(declare-sort var2661 0)
(declare-sort var2367 0)
(declare-sort var2599 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dateType/1337826367 (var379) Int)
(declare-fun pattern/1337826367 (var379) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun locale/1337826367 (var379) var2661)
(declare-fun hashCode/1639332149 (var2661) Int)
(declare-fun timeZone/1337826367 (var379) var2367)
(declare-fun hashCode/1739917532 (var2599) Int)
(declare-fun cast-from-var2367-to-var2599 (var2367) var2599)
(declare-const null-var379 var379)
(declare-const var3133 var379) ; Statement: r0 := @this: freemarker.core.JavaTemplateDateFormatFactory$CacheKey 
(assert (not (= var3133 null-var379)))
(define-const var1956 Int (dateType/1337826367 var3133)) ; Statement: $i0 = r0.<freemarker.core.JavaTemplateDateFormatFactory$CacheKey: int dateType> 
(define-const var1419 String (pattern/1337826367 var3133)) ; Statement: $r1 = r0.<freemarker.core.JavaTemplateDateFormatFactory$CacheKey: java.lang.String pattern> 
(assert true)
(define-const var2821 Int (hashCode/-467973558 var1419)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var2686 Int (bv2nat (bvxor ((_ int2bv 64) var1956) ((_ int2bv 64) var2821)))) ; Statement: $i3 = $i0 ^ $i1 
(define-const var3644 var2661 (locale/1337826367 var3133)) ; Statement: $r2 = r0.<freemarker.core.JavaTemplateDateFormatFactory$CacheKey: java.util.Locale locale> 
(assert true)
(define-const var853 Int (hashCode/1639332149 var3644)) ; Statement: $i2 = virtualinvoke $r2.<java.util.Locale: int hashCode()>() 
(define-const var1563 Int (bv2nat (bvxor ((_ int2bv 64) var2686) ((_ int2bv 64) var853)))) ; Statement: $i5 = $i3 ^ $i2 
(define-const var1053 var2367 (timeZone/1337826367 var3133)) ; Statement: $r3 = r0.<freemarker.core.JavaTemplateDateFormatFactory$CacheKey: java.util.TimeZone timeZone> 
(assert true)
(define-const var1789 Int (hashCode/1739917532 (cast-from-var2367-to-var2599 var1053))) ; Statement: $i4 = virtualinvoke $r3.<java.lang.Object: int hashCode()>() 
(define-const var429 Int (bv2nat (bvxor ((_ int2bv 64) var1563) ((_ int2bv 64) var1789)))) ; Statement: $i6 = $i5 ^ $i4 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {dateType/1337826367=([freemarker.core.JavaTemplateDateFormatFactory$CacheKey], int), pattern/1337826367=([freemarker.core.JavaTemplateDateFormatFactory$CacheKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), locale/1337826367=([freemarker.core.JavaTemplateDateFormatFactory$CacheKey], java.util.Locale), hashCode/1639332149=([java.util.Locale], int), timeZone/1337826367=([freemarker.core.JavaTemplateDateFormatFactory$CacheKey], java.util.TimeZone), hashCode/1739917532=([java.lang.Object], int), cast-from-var2367-to-var2599=([java.util.TimeZone], java.lang.Object)}
; {var379=freemarker.core.JavaTemplateDateFormatFactory$CacheKey, var3133=r0, var1956=$i0, var1419=$r1, var2821=$i1, var2686=$i3, var2661=java.util.Locale, var3644=$r2, var853=$i2, var1563=$i5, var2367=java.util.TimeZone, var1053=$r3, var2599=java.lang.Object, var1789=$i4, var429=$i6}
; {freemarker.core.JavaTemplateDateFormatFactory$CacheKey=var379, r0=var3133, $i0=var1956, $r1=var1419, $i1=var2821, $i3=var2686, java.util.Locale=var2661, $r2=var3644, $i2=var853, $i5=var1563, java.util.TimeZone=var2367, $r3=var1053, java.lang.Object=var2599, $i4=var1789, $i6=var429}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: freemarker.core.JavaTemplateDateFormatFactory$CacheKey;	$i0 = r0.<freemarker.core.JavaTemplateDateFormatFactory$CacheKey: int dateType>;	$r1 = r0.<freemarker.core.JavaTemplateDateFormatFactory$CacheKey: java.lang.String pattern>;	$i1 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$i3 = $i0 ^ $i1;	$r2 = r0.<freemarker.core.JavaTemplateDateFormatFactory$CacheKey: java.util.Locale locale>;	$i2 = virtualinvoke $r2.<java.util.Locale: int hashCode()>();	$i5 = $i3 ^ $i2;	$r3 = r0.<freemarker.core.JavaTemplateDateFormatFactory$CacheKey: java.util.TimeZone timeZone>;	$i4 = virtualinvoke $r3.<java.lang.Object: int hashCode()>();	$i6 = $i5 ^ $i4;	return $i6
;block_num 1