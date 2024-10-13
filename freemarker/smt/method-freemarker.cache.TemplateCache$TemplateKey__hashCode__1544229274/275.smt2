(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1568 0)
(declare-sort var2361 0)
(declare-sort var557 0)
(declare-sort var259 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1109542891 (var1568) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun locale/-1109542891 (var1568) var2361)
(declare-fun hashCode/1639332149 (var2361) Int)
(declare-fun encoding/-1109542891 (var1568) String)
(declare-fun customLookupCondition/-1109542891 (var1568) var557)
(declare-fun parse/-1109542891 (var1568) Bool)
(declare-fun var259_valueOf/1602327315 (Bool) var259)
(declare-fun hashCode/661673523 (var259) Int)
(declare-const null-var1568 var1568)
(declare-const null-var557 var557)
(declare-const var439 var1568) ; Statement: r0 := @this: freemarker.cache.TemplateCache$TemplateKey 
(assert (not (= var439 null-var1568)))
(define-const var3764 String (name/-1109542891 var439)) ; Statement: $r1 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.String name> 
(assert true)
(define-const var777 Int (hashCode/-467973558 var3764)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var3664 var2361 (locale/-1109542891 var439)) ; Statement: $r2 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.util.Locale locale> 
(assert true)
(define-const var3973 Int (hashCode/1639332149 var3664)) ; Statement: $i0 = virtualinvoke $r2.<java.util.Locale: int hashCode()>() 
(define-const var3747 Int (bv2nat (bvxor ((_ int2bv 64) var777) ((_ int2bv 64) var3973)))) ; Statement: $i3 = $i1 ^ $i0 
(define-const var1080 String (encoding/-1109542891 var439)) ; Statement: $r3 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.String encoding> 
(assert true)
(define-const var2669 Int (hashCode/-467973558 var1080)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var728 Int (bv2nat (bvxor ((_ int2bv 64) var3747) ((_ int2bv 64) var2669)))) ; Statement: $i4 = $i3 ^ $i2 
(define-const var2772 var557 (customLookupCondition/-1109542891 var439)) ; Statement: $r4 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.Object customLookupCondition> 
 ; Statement: if $r4 == null goto $i8 = 0 
(assert (= var2772 null-var557)) ; Cond: $r4 == null 
(define-const var3414 Int 0) ; Statement: $i8 = 0 
(assert true) ; Non Conditional
(define-const var3348 Int (bv2nat (bvxor ((_ int2bv 64) var728) ((_ int2bv 64) var3414)))) ; Statement: $i6 = $i4 ^ $i8 
(define-const var1263 Bool (parse/-1109542891 var439)) ; Statement: $z0 = r0.<freemarker.cache.TemplateCache$TemplateKey: boolean parse> 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var1263 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3620 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var3278 var259 (var259_valueOf/1602327315 var3620)) ; Statement: $r5 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1) 
(assert true)
(define-const var1805 Int (hashCode/661673523 var3278)) ; Statement: $i5 = virtualinvoke $r5.<java.lang.Boolean: int hashCode()>() 
(define-const var188 Int (bv2nat (bvxor ((_ int2bv 64) var3348) ((_ int2bv 64) var1805)))) ; Statement: $i7 = $i6 ^ $i5 
 ; Statement: return $i7 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1109542891=([freemarker.cache.TemplateCache$TemplateKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), locale/-1109542891=([freemarker.cache.TemplateCache$TemplateKey], java.util.Locale), hashCode/1639332149=([java.util.Locale], int), encoding/-1109542891=([freemarker.cache.TemplateCache$TemplateKey], java.lang.String), customLookupCondition/-1109542891=([freemarker.cache.TemplateCache$TemplateKey], java.lang.Object), parse/-1109542891=([freemarker.cache.TemplateCache$TemplateKey], boolean), var259_valueOf/1602327315=([boolean], java.lang.Boolean), hashCode/661673523=([java.lang.Boolean], int)}
; {var1568=freemarker.cache.TemplateCache$TemplateKey, var439=r0, var3764=$r1, var777=$i1, var2361=java.util.Locale, var3664=$r2, var3973=$i0, var3747=$i3, var1080=$r3, var2669=$i2, var728=$i4, var557=java.lang.Object, var2772=$r4, var3414=$i8, var3348=$i6, var1263=$z0, var3620=$z1, var259=java.lang.Boolean, var3278=$r5, var1805=$i5, var188=$i7}
; {freemarker.cache.TemplateCache$TemplateKey=var1568, r0=var439, $r1=var3764, $i1=var777, java.util.Locale=var2361, $r2=var3664, $i0=var3973, $i3=var3747, $r3=var1080, $i2=var2669, $i4=var728, java.lang.Object=var557, $r4=var2772, $i8=var3414, $i6=var3348, $z0=var1263, $z1=var3620, java.lang.Boolean=var259, $r5=var3278, $i5=var1805, $i7=var188}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: freemarker.cache.TemplateCache$TemplateKey;	$r1 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.String name>;	$i1 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$r2 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.util.Locale locale>;	$i0 = virtualinvoke $r2.<java.util.Locale: int hashCode()>();	$i3 = $i1 ^ $i0;	$r3 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.String encoding>;	$i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i4 = $i3 ^ $i2;	$r4 = r0.<freemarker.cache.TemplateCache$TemplateKey: java.lang.Object customLookupCondition>;	if $r4 == null goto $i8 = 0;	$i8 = 0;	$i6 = $i4 ^ $i8;	$z0 = r0.<freemarker.cache.TemplateCache$TemplateKey: boolean parse>;	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	$r5 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1);	$i5 = virtualinvoke $r5.<java.lang.Boolean: int hashCode()>();	$i7 = $i6 ^ $i5;	return $i7
;block_num 5