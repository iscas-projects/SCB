(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var924 0)
(declare-sort var2718 0)
(declare-sort var2220 0)
(declare-sort var555 0)
(declare-sort var368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2718_builder/-311177978 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cent/-720087805 (var924) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun currency/-720087805 (var924) var555)
(declare-fun append/-1031950772 (String var368) String)
(declare-fun cast-from-var555-to-var368 (var555) var368)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var924 var924)
(declare-const var2220-separatorChar Int)
(declare-const var2888 var924) ; Statement: r1 := @this: cn.hutool.core.math.Money 
(assert (not (= var2888 null-var924)))
(define-const var3967 String var2718_builder/-311177978) ; Statement: $r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(assert true)
(define-const var468 String (append/672562846 var3967 "cent = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cent = ") 
(declare-const var3967!1 String)
(assert (= var3967!1 (str.++ var3967 "cent = ")))
(define-const var2923 Int (cent/-720087805 var2888)) ; Statement: $l0 = r1.<cn.hutool.core.math.Money: long cent> 
(assert true)
(define-const var1821 String (append/-901862667 var468 var2923)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var468!1 String)
(assert (str.prefixof var468 var468!1))
(define-const var3842 Int var2220-separatorChar) ; Statement: $c1 = <java.io.File: char separatorChar> 
(assert true)
(define-const var3737 String (append/-1166366385 var1821 var3842)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var1821!1 String)
(assert (str.prefixof var1821 var1821!1))
(assert true)
(define-const var2232 String (append/672562846 var3737 "currency = ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("currency = ") 
(declare-const var3737!1 String)
(assert (= var3737!1 (str.++ var3737 "currency = ")))
(define-const var1181 var555 (currency/-720087805 var2888)) ; Statement: $r5 = r1.<cn.hutool.core.math.Money: java.util.Currency currency> 
(assert true)
(define-const var522 String (append/-1031950772 var2232 (cast-from-var555-to-var368 var1181))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var2232!1 String)
(assert (str.prefixof var2232 var2232!1))
(assert true)
(define-const var3726 String (toString/-2075883882 var522)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2718_builder/-311177978=([], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cent/-720087805=([cn.hutool.core.math.Money], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), currency/-720087805=([cn.hutool.core.math.Money], java.util.Currency), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var555-to-var368=([java.util.Currency], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var924=cn.hutool.core.math.Money, var2888=r1, var2718=cn.hutool.core.util.StrUtil, var3967=$r0, var468=$r2, var2923=$l0, var1821=$r3, var2220=java.io.File, var3842=$c1, var3737=$r4, var2232=$r6, var555=java.util.Currency, var1181=$r5, var368=java.lang.Object, var522=$r7, var3726=$r8}
; {cn.hutool.core.math.Money=var924, r1=var2888, cn.hutool.core.util.StrUtil=var2718, $r0=var3967, $r2=var468, $l0=var2923, $r3=var1821, java.io.File=var2220, $c1=var3842, $r4=var3737, $r6=var2232, java.util.Currency=var555, $r5=var1181, java.lang.Object=var368, $r7=var522, $r8=var3726}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.math.Money;	$r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cent = ");	$l0 = r1.<cn.hutool.core.math.Money: long cent>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$c1 = <java.io.File: char separatorChar>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("currency = ");	$r5 = r1.<cn.hutool.core.math.Money: java.util.Currency currency>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1