(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2406 0)
(declare-sort var3906 0)
(declare-sort var2086 0)
(declare-sort var1838 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1109542891 (var2406) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun locale/-1109542891 (var2406) var3906)
(declare-fun hashCode/1639332149 (var3906) Int)
(declare-fun encoding/-1109542891 (var2406) String)
(declare-fun customLookupCondition/-1109542891 (var2406) var2086)
(declare-fun hashCode/1739917532 (var2086) Int)
(declare-fun parse/-1109542891 (var2406) Bool)
(declare-fun var1838_valueOf/1602327315 (Bool) var1838)
(declare-fun hashCode/661673523 (var1838) Int)
(declare-const null-var2406 var2406)
(declare-const null-var2086 var2086)
(declare-const var923 var2406) ; Statement: r0 := @this: freemarker.cache.TemplateCache$TemplateKey 
(assert (not (= var923 null-var2406)))
(define-const var3912 String (name/-1109542891 var923)) ; Statement: $r1 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.String name> 
(assert true)
(define-const var3853 Int (hashCode/-467973558 var3912)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var2213 var3906 (locale/-1109542891 var923)) ; Statement: $r2 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.util.Locale locale> 
(assert true)
(define-const var2259 Int (hashCode/1639332149 var2213)) ; Statement: $i0 = virtualinvoke $r2.<java.util.Locale: int hashCode()>() 
(define-const var2479 Int (bv2nat (bvxor ((_ int2bv 64) var3853) ((_ int2bv 64) var2259)))) ; Statement: $i3 = $i1 ^ $i0 
(define-const var618 String (encoding/-1109542891 var923)) ; Statement: $r3 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.String encoding> 
(assert true)
(define-const var3812 Int (hashCode/-467973558 var618)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1712 Int (bv2nat (bvxor ((_ int2bv 64) var2479) ((_ int2bv 64) var3812)))) ; Statement: $i4 = $i3 ^ $i2 
(define-const var1325 var2086 (customLookupCondition/-1109542891 var923)) ; Statement: $r4 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.Object customLookupCondition> 
 ; Statement: if $r4 == null goto $i8 = 0 
(assert (not (= var1325 null-var2086))) ; Negate: Cond: $r4 == null  
(define-const var530 var2086 (customLookupCondition/-1109542891 var923)) ; Statement: $r6 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.Object customLookupCondition> 
(assert true)
(define-const var540 Int (hashCode/1739917532 var530)) ; Statement: $i8 = virtualinvoke $r6.<java.lang.Object: int hashCode()>() 
 ; Statement: goto [?= $i6 = $i4 ^ $i8] 
(assert true) ; Non Conditional
(define-const var1969 Int (bv2nat (bvxor ((_ int2bv 64) var1712) ((_ int2bv 64) var540)))) ; Statement: $i6 = $i4 ^ $i8 
(define-const var2753 Bool (parse/-1109542891 var923)) ; Statement: $z0 = r0.<freemarker.cache.TemplateCache$TemplateKey: boolean parse> 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var2753 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3213 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= $r5 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1)] 
(assert true) ; Non Conditional
(define-const var2269 var1838 (var1838_valueOf/1602327315 var3213)) ; Statement: $r5 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1) 
(assert true)
(define-const var1765 Int (hashCode/661673523 var2269)) ; Statement: $i5 = virtualinvoke $r5.<java.lang.Boolean: int hashCode()>() 
(define-const var3426 Int (bv2nat (bvxor ((_ int2bv 64) var1969) ((_ int2bv 64) var1765)))) ; Statement: $i7 = $i6 ^ $i5 
 ; Statement: return $i7 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1109542891=([freemarker.cache.TemplateCache$TemplateKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), locale/-1109542891=([freemarker.cache.TemplateCache$TemplateKey], java.util.Locale), hashCode/1639332149=([java.util.Locale], int), encoding/-1109542891=([freemarker.cache.TemplateCache$TemplateKey], java.lang.String), customLookupCondition/-1109542891=([freemarker.cache.TemplateCache$TemplateKey], java.lang.Object), hashCode/1739917532=([java.lang.Object], int), parse/-1109542891=([freemarker.cache.TemplateCache$TemplateKey], boolean), var1838_valueOf/1602327315=([boolean], java.lang.Boolean), hashCode/661673523=([java.lang.Boolean], int)}
; {var2406=freemarker.cache.TemplateCache$TemplateKey, var923=r0, var3912=$r1, var3853=$i1, var3906=java.util.Locale, var2213=$r2, var2259=$i0, var2479=$i3, var618=$r3, var3812=$i2, var1712=$i4, var2086=java.lang.Object, var1325=$r4, var530=$r6, var540=$i8, var1969=$i6, var2753=$z0, var3213=$z1, var1838=java.lang.Boolean, var2269=$r5, var1765=$i5, var3426=$i7}
; {freemarker.cache.TemplateCache$TemplateKey=var2406, r0=var923, $r1=var3912, $i1=var3853, java.util.Locale=var3906, $r2=var2213, $i0=var2259, $i3=var2479, $r3=var618, $i2=var3812, $i4=var1712, java.lang.Object=var2086, $r4=var1325, $r6=var530, $i8=var540, $i6=var1969, $z0=var2753, $z1=var3213, java.lang.Boolean=var1838, $r5=var2269, $i5=var1765, $i7=var3426}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: freemarker.cache.TemplateCache$TemplateKey;	$r1 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.String name>;	$i1 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$r2 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.util.Locale locale>;	$i0 = virtualinvoke $r2.<java.util.Locale: int hashCode()>();	$i3 = $i1 ^ $i0;	$r3 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.String encoding>;	$i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i4 = $i3 ^ $i2;	$r4 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.Object customLookupCondition>;	if $r4 == null goto $i8 = 0;	$r6 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.Object customLookupCondition>;	$i8 = virtualinvoke $r6.<java.lang.Object: int hashCode()>();	goto [?= $i6 = $i4 ^ $i8];	$i6 = $i4 ^ $i8;	$z0 = r0.<freemarker.cache.TemplateCache$TemplateKey: boolean parse>;	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= $r5 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1)];	$r5 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1);	$i5 = virtualinvoke $r5.<java.lang.Boolean: int hashCode()>();	$i7 = $i6 ^ $i5;	return $i7
;block_num 5