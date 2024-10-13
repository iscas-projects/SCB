(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2896 0)
(declare-sort var3612 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pattern/1481696474 (var2896) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun locale/1481696474 (var2896) var3612)
(declare-fun hashCode/1639332149 (var3612) Int)
(declare-const null-var2896 var2896)
(declare-const var3717 var2896) ; Statement: r0 := @this: freemarker.core.JavaTemplateNumberFormatFactory$CacheKey 
(assert (not (= var3717 null-var2896)))
(define-const var3632 String (pattern/1481696474 var3717)) ; Statement: $r1 = r0.<freemarker.core.JavaTemplateNumberFormatFactory$CacheKey: java.lang.String pattern> 
(assert true)
(define-const var197 Int (hashCode/-467973558 var3632)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var3638 var3612 (locale/1481696474 var3717)) ; Statement: $r2 = r0.<freemarker.core.JavaTemplateNumberFormatFactory$CacheKey: java.util.Locale locale> 
(assert true)
(define-const var3445 Int (hashCode/1639332149 var3638)) ; Statement: $i0 = virtualinvoke $r2.<java.util.Locale: int hashCode()>() 
(define-const var2832 Int (bv2nat (bvxor ((_ int2bv 64) var197) ((_ int2bv 64) var3445)))) ; Statement: $i2 = $i1 ^ $i0 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {pattern/1481696474=([freemarker.core.JavaTemplateNumberFormatFactory$CacheKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), locale/1481696474=([freemarker.core.JavaTemplateNumberFormatFactory$CacheKey], java.util.Locale), hashCode/1639332149=([java.util.Locale], int)}
; {var2896=freemarker.core.JavaTemplateNumberFormatFactory$CacheKey, var3717=r0, var3632=$r1, var197=$i1, var3612=java.util.Locale, var3638=$r2, var3445=$i0, var2832=$i2}
; {freemarker.core.JavaTemplateNumberFormatFactory$CacheKey=var2896, r0=var3717, $r1=var3632, $i1=var197, java.util.Locale=var3612, $r2=var3638, $i0=var3445, $i2=var2832}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: freemarker.core.JavaTemplateNumberFormatFactory$CacheKey;	$r1 = r0.<freemarker.core.JavaTemplateNumberFormatFactory$CacheKey: java.lang.String pattern>;	$i1 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$r2 = r0.<freemarker.core.JavaTemplateNumberFormatFactory$CacheKey: java.util.Locale locale>;	$i0 = virtualinvoke $r2.<java.util.Locale: int hashCode()>();	$i2 = $i1 ^ $i0;	return $i2
;block_num 1