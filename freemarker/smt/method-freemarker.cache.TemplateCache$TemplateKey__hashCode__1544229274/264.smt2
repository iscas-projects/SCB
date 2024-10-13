(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var319 0)
(declare-sort var1175 0)
(declare-sort var2496 0)
(declare-sort var150 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1109542891 (var319) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun locale/-1109542891 (var319) var1175)
(declare-fun hashCode/1639332149 (var1175) Int)
(declare-fun encoding/-1109542891 (var319) String)
(declare-fun customLookupCondition/-1109542891 (var319) var2496)
(declare-fun parse/-1109542891 (var319) Bool)
(declare-fun var150_valueOf/1602327315 (Bool) var150)
(declare-fun hashCode/661673523 (var150) Int)
(declare-const null-var319 var319)
(declare-const null-var2496 var2496)
(declare-const var1974 var319) ; Statement: r0 := @this: freemarker.cache.TemplateCache$TemplateKey 
(assert (not (= var1974 null-var319)))
(define-const var2501 String (name/-1109542891 var1974)) ; Statement: $r1 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.String name> 
(assert true)
(define-const var914 Int (hashCode/-467973558 var2501)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1672 var1175 (locale/-1109542891 var1974)) ; Statement: $r2 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.util.Locale locale> 
(assert true)
(define-const var1961 Int (hashCode/1639332149 var1672)) ; Statement: $i0 = virtualinvoke $r2.<java.util.Locale: int hashCode()>() 
(define-const var2524 Int (bv2nat (bvxor ((_ int2bv 64) var914) ((_ int2bv 64) var1961)))) ; Statement: $i3 = $i1 ^ $i0 
(define-const var1315 String (encoding/-1109542891 var1974)) ; Statement: $r3 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.String encoding> 
(assert true)
(define-const var1082 Int (hashCode/-467973558 var1315)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3792 Int (bv2nat (bvxor ((_ int2bv 64) var2524) ((_ int2bv 64) var1082)))) ; Statement: $i4 = $i3 ^ $i2 
(define-const var118 var2496 (customLookupCondition/-1109542891 var1974)) ; Statement: $r4 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.Object customLookupCondition> 
 ; Statement: if $r4 == null goto $i8 = 0 
(assert (= var118 null-var2496)) ; Cond: $r4 == null 
(define-const var3674 Int 0) ; Statement: $i8 = 0 
(assert true) ; Non Conditional
(define-const var3787 Int (bv2nat (bvxor ((_ int2bv 64) var3792) ((_ int2bv 64) var3674)))) ; Statement: $i6 = $i4 ^ $i8 
(define-const var3536 Bool (parse/-1109542891 var1974)) ; Statement: $z0 = r0.<freemarker.cache.TemplateCache$TemplateKey: boolean parse> 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var3536 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var327 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= $r5 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1)] 
(assert true) ; Non Conditional
(define-const var2707 var150 (var150_valueOf/1602327315 var327)) ; Statement: $r5 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1) 
(assert true)
(define-const var3747 Int (hashCode/661673523 var2707)) ; Statement: $i5 = virtualinvoke $r5.<java.lang.Boolean: int hashCode()>() 
(define-const var3213 Int (bv2nat (bvxor ((_ int2bv 64) var3787) ((_ int2bv 64) var3747)))) ; Statement: $i7 = $i6 ^ $i5 
 ; Statement: return $i7 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1109542891=([freemarker.cache.TemplateCache$TemplateKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), locale/-1109542891=([freemarker.cache.TemplateCache$TemplateKey], java.util.Locale), hashCode/1639332149=([java.util.Locale], int), encoding/-1109542891=([freemarker.cache.TemplateCache$TemplateKey], java.lang.String), customLookupCondition/-1109542891=([freemarker.cache.TemplateCache$TemplateKey], java.lang.Object), parse/-1109542891=([freemarker.cache.TemplateCache$TemplateKey], boolean), var150_valueOf/1602327315=([boolean], java.lang.Boolean), hashCode/661673523=([java.lang.Boolean], int)}
; {var319=freemarker.cache.TemplateCache$TemplateKey, var1974=r0, var2501=$r1, var914=$i1, var1175=java.util.Locale, var1672=$r2, var1961=$i0, var2524=$i3, var1315=$r3, var1082=$i2, var3792=$i4, var2496=java.lang.Object, var118=$r4, var3674=$i8, var3787=$i6, var3536=$z0, var327=$z1, var150=java.lang.Boolean, var2707=$r5, var3747=$i5, var3213=$i7}
; {freemarker.cache.TemplateCache$TemplateKey=var319, r0=var1974, $r1=var2501, $i1=var914, java.util.Locale=var1175, $r2=var1672, $i0=var1961, $i3=var2524, $r3=var1315, $i2=var1082, $i4=var3792, java.lang.Object=var2496, $r4=var118, $i8=var3674, $i6=var3787, $z0=var3536, $z1=var327, java.lang.Boolean=var150, $r5=var2707, $i5=var3747, $i7=var3213}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: freemarker.cache.TemplateCache$TemplateKey;	$r1 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.String name>;	$i1 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$r2 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.util.Locale locale>;	$i0 = virtualinvoke $r2.<java.util.Locale: int hashCode()>();	$i3 = $i1 ^ $i0;	$r3 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.String encoding>;	$i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i4 = $i3 ^ $i2;	$r4 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.Object customLookupCondition>;	if $r4 == null goto $i8 = 0;	$i8 = 0;	$i6 = $i4 ^ $i8;	$z0 = r0.<freemarker.cache.TemplateCache$TemplateKey: boolean parse>;	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= $r5 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1)];	$r5 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1);	$i5 = virtualinvoke $r5.<java.lang.Boolean: int hashCode()>();	$i7 = $i6 ^ $i5;	return $i7
;block_num 5