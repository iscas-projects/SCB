(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3399 0)
(declare-sort var2384 0)
(declare-sort var3510 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3510) void)
(declare-fun cast-from-var3399-to-var3510 (var3399) var3510)
(declare-fun patternString/-1588191161 (var3399) String)
(declare-fun flags/-1588191161 (var3399) Int)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun hashCode/-1588191161 (var3399) Int)
(declare-const null-var3399 var3399)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2251 var3399) ; Statement: r0 := @this: freemarker.core.RegexpHelper$PatternCacheKey 
(assert (not (= var2251 null-var3399)))
(declare-const var2022 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2022 null-String)))
(declare-const var2780 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2780 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3399-to-var3510 var2251))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2251!1 var3399)
(declare-const var2251!2 var3399)
(assert (not (= var2251!2 null-var3399)))
(assert (= (patternString/-1588191161 var2251!2) var2022)) ; Statement: r0.<freemarker.core.RegexpHelper$PatternCacheKey: java.lang.String patternString> = r1 
(declare-const var2251!3 var3399)
(assert (not (= var2251!3 null-var3399)))
(assert (= (flags/-1588191161 var2251!3) var2780)) ; Statement: r0.<freemarker.core.RegexpHelper$PatternCacheKey: int flags> = i0 
(assert true)
(define-const var2475 Int (hashCode/-467973558 var2022)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
(define-const var470 Int (* 31 var2780)) ; Statement: $i1 = 31 * i0 
(define-const var1777 Int (+ var2475 var470)) ; Statement: $i3 = $i2 + $i1 
(declare-const var2251!4 var3399)
(assert (not (= var2251!4 null-var3399)))
(assert (= (hashCode/-1588191161 var2251!4) var1777)) ; Statement: r0.<freemarker.core.RegexpHelper$PatternCacheKey: int hashCode> = $i3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3399-to-var3510=([freemarker.core.RegexpHelper$PatternCacheKey], java.lang.Object), patternString/-1588191161=([freemarker.core.RegexpHelper$PatternCacheKey], java.lang.String), flags/-1588191161=([freemarker.core.RegexpHelper$PatternCacheKey], int), hashCode/-467973558=([java.lang.String], int), hashCode/-1588191161=([freemarker.core.RegexpHelper$PatternCacheKey], int)}
; {var3399=freemarker.core.RegexpHelper$PatternCacheKey, var2251=r0, var2022=r1, var2384=null_type, var2780=i0, var3510=java.lang.Object, var2475=$i2, var470=$i1, var1777=$i3}
; {freemarker.core.RegexpHelper$PatternCacheKey=var3399, r0=var2251, r1=var2022, null_type=var2384, i0=var2780, java.lang.Object=var3510, $i2=var2475, $i1=var470, $i3=var1777}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: freemarker.core.RegexpHelper$PatternCacheKey;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<freemarker.core.RegexpHelper$PatternCacheKey: java.lang.String patternString> = r1;	r0.<freemarker.core.RegexpHelper$PatternCacheKey: int flags> = i0;	$i2 = virtualinvoke r1.<java.lang.String: int hashCode()>();	$i1 = 31 * i0;	$i3 = $i2 + $i1;	r0.<freemarker.core.RegexpHelper$PatternCacheKey: int hashCode> = $i3;	return
;block_num 1