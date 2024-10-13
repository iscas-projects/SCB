(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3649 0)
(declare-sort var3926 0)
(declare-sort var43 0)
(declare-sort var771 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1109542891 (var3649) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun locale/-1109542891 (var3649) var3926)
(declare-fun hashCode/1639332149 (var3926) Int)
(declare-fun encoding/-1109542891 (var3649) String)
(declare-fun customLookupCondition/-1109542891 (var3649) var43)
(declare-fun hashCode/1739917532 (var43) Int)
(declare-fun parse/-1109542891 (var3649) Bool)
(declare-fun var771_valueOf/1602327315 (Bool) var771)
(declare-fun hashCode/661673523 (var771) Int)
(declare-const null-var3649 var3649)
(declare-const null-var43 var43)
(declare-const var1606 var3649) ; Statement: r0 := @this: freemarker.cache.TemplateCache$TemplateKey 
(assert (not (= var1606 null-var3649)))
(define-const var3232 String (name/-1109542891 var1606)) ; Statement: $r1 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.String name> 
(assert true)
(define-const var3140 Int (hashCode/-467973558 var3232)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1332 var3926 (locale/-1109542891 var1606)) ; Statement: $r2 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.util.Locale locale> 
(assert true)
(define-const var3063 Int (hashCode/1639332149 var1332)) ; Statement: $i0 = virtualinvoke $r2.<java.util.Locale: int hashCode()>() 
(define-const var547 Int (bv2nat (bvxor ((_ int2bv 64) var3140) ((_ int2bv 64) var3063)))) ; Statement: $i3 = $i1 ^ $i0 
(define-const var3098 String (encoding/-1109542891 var1606)) ; Statement: $r3 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.String encoding> 
(assert true)
(define-const var971 Int (hashCode/-467973558 var3098)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2193 Int (bv2nat (bvxor ((_ int2bv 64) var547) ((_ int2bv 64) var971)))) ; Statement: $i4 = $i3 ^ $i2 
(define-const var2726 var43 (customLookupCondition/-1109542891 var1606)) ; Statement: $r4 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.Object customLookupCondition> 
 ; Statement: if $r4 == null goto $i8 = 0 
(assert (not (= var2726 null-var43))) ; Negate: Cond: $r4 == null  
(define-const var1966 var43 (customLookupCondition/-1109542891 var1606)) ; Statement: $r6 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.Object customLookupCondition> 
(assert true)
(define-const var612 Int (hashCode/1739917532 var1966)) ; Statement: $i8 = virtualinvoke $r6.<java.lang.Object: int hashCode()>() 
 ; Statement: goto [?= $i6 = $i4 ^ $i8] 
(assert true) ; Non Conditional
(define-const var3364 Int (bv2nat (bvxor ((_ int2bv 64) var2193) ((_ int2bv 64) var612)))) ; Statement: $i6 = $i4 ^ $i8 
(define-const var181 Bool (parse/-1109542891 var1606)) ; Statement: $z0 = r0.<freemarker.cache.TemplateCache$TemplateKey: boolean parse> 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var181 1 0) 0))) ; Cond: $z0 != 0 
(define-const var675 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var2359 var771 (var771_valueOf/1602327315 var675)) ; Statement: $r5 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1) 
(assert true)
(define-const var3371 Int (hashCode/661673523 var2359)) ; Statement: $i5 = virtualinvoke $r5.<java.lang.Boolean: int hashCode()>() 
(define-const var3830 Int (bv2nat (bvxor ((_ int2bv 64) var3364) ((_ int2bv 64) var3371)))) ; Statement: $i7 = $i6 ^ $i5 
 ; Statement: return $i7 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1109542891=([freemarker.cache.TemplateCache$TemplateKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), locale/-1109542891=([freemarker.cache.TemplateCache$TemplateKey], java.util.Locale), hashCode/1639332149=([java.util.Locale], int), encoding/-1109542891=([freemarker.cache.TemplateCache$TemplateKey], java.lang.String), customLookupCondition/-1109542891=([freemarker.cache.TemplateCache$TemplateKey], java.lang.Object), hashCode/1739917532=([java.lang.Object], int), parse/-1109542891=([freemarker.cache.TemplateCache$TemplateKey], boolean), var771_valueOf/1602327315=([boolean], java.lang.Boolean), hashCode/661673523=([java.lang.Boolean], int)}
; {var3649=freemarker.cache.TemplateCache$TemplateKey, var1606=r0, var3232=$r1, var3140=$i1, var3926=java.util.Locale, var1332=$r2, var3063=$i0, var547=$i3, var3098=$r3, var971=$i2, var2193=$i4, var43=java.lang.Object, var2726=$r4, var1966=$r6, var612=$i8, var3364=$i6, var181=$z0, var675=$z1, var771=java.lang.Boolean, var2359=$r5, var3371=$i5, var3830=$i7}
; {freemarker.cache.TemplateCache$TemplateKey=var3649, r0=var1606, $r1=var3232, $i1=var3140, java.util.Locale=var3926, $r2=var1332, $i0=var3063, $i3=var547, $r3=var3098, $i2=var971, $i4=var2193, java.lang.Object=var43, $r4=var2726, $r6=var1966, $i8=var612, $i6=var3364, $z0=var181, $z1=var675, java.lang.Boolean=var771, $r5=var2359, $i5=var3371, $i7=var3830}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: freemarker.cache.TemplateCache$TemplateKey;	$r1 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.String name>;	$i1 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$r2 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.util.Locale locale>;	$i0 = virtualinvoke $r2.<java.util.Locale: int hashCode()>();	$i3 = $i1 ^ $i0;	$r3 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.String encoding>;	$i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i4 = $i3 ^ $i2;	$r4 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.Object customLookupCondition>;	if $r4 == null goto $i8 = 0;	$r6 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.Object customLookupCondition>;	$i8 = virtualinvoke $r6.<java.lang.Object: int hashCode()>();	goto [?= $i6 = $i4 ^ $i8];	$i6 = $i4 ^ $i8;	$z0 = r0.<freemarker.cache.TemplateCache$TemplateKey: boolean parse>;	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	$r5 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1);	$i5 = virtualinvoke $r5.<java.lang.Boolean: int hashCode()>();	$i7 = $i6 ^ $i5;	return $i7
;block_num 5