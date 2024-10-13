(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3000 0)
(declare-sort var376 0)
(declare-sort var3177 0)
(declare-sort var2092 0)
(declare-sort var1643 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun get/1569769113 (var3000 var376) var3177)
(declare-fun var2092-init () var2092)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1643) ClassObject)
(declare-fun cast-from-var3177-to-var1643 (var3177) var1643)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2092 String) void)
(declare-const null-var3000 var3000)
(declare-const null-var376 var376)
(declare-const var1338 var3000) ; Statement: r0 := @this: cn.hutool.cron.pattern.matcher.PatternMatcher 
(assert (not (= var1338 null-var3000)))
(declare-const var892 var376) ; Statement: r1 := @parameter0: cn.hutool.cron.pattern.Part 
(assert (not (= var892 null-var376)))
(assert true)
(define-const var2219 var3177 (get/1569769113 var1338 var892)) ; Statement: r2 = virtualinvoke r0.<cn.hutool.cron.pattern.matcher.PatternMatcher: cn.hutool.cron.pattern.matcher.PartMatcher get(cn.hutool.cron.pattern.Part)>(r1) 
(define-const var362 Bool true) ; Statement: $z0 = r2 instanceof cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher 
 ; Statement: if $z0 == 0 goto $z1 = r2 instanceof cn.hutool.cron.pattern.matcher.BoolArrayMatcher 
(assert (= (ite var362 1 0) 0)) ; Cond: $z0 == 0 
(define-const var171 Bool true) ; Statement: $z1 = r2 instanceof cn.hutool.cron.pattern.matcher.BoolArrayMatcher 
 ; Statement: if $z1 == 0 goto $r3 = new java.lang.IllegalArgumentException 
(assert (= (ite var171 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3404 var2092 var2092-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var3132 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3132)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3132!1 String)
(assert (= var3132!1 ""))
(assert true)
(define-const var697 String (append/672562846 var3132!1 "Invalid matcher: ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid matcher: ") 
(declare-const var3132!2 String)
(assert (= var3132!2 (str.++ var3132!1 "Invalid matcher: ")))
(assert true)
(define-const var738 ClassObject (getClass/1258963082 (cast-from-var3177-to-var1643 var2219))) ; Statement: $r5 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var281 String (getName/-1958580599 var738)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var498 String (append/672562846 var697 var281)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var697!1 String)
(assert (= var697!1 (str.++ var697 var281)))
(assert true)
(define-const var1654 String (toString/-2075883882 var498)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3404 var1654)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var3404!1 var2092)
(declare-const var1654!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {get/1569769113=([cn.hutool.cron.pattern.matcher.PatternMatcher, cn.hutool.cron.pattern.Part], cn.hutool.cron.pattern.matcher.PartMatcher), var2092-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3177-to-var1643=([cn.hutool.cron.pattern.matcher.PartMatcher], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3000=cn.hutool.cron.pattern.matcher.PatternMatcher, var1338=r0, var376=cn.hutool.cron.pattern.Part, var892=r1, var3177=cn.hutool.cron.pattern.matcher.PartMatcher, var2219=r2, var362=$z0, var171=$z1, var2092=java.lang.IllegalArgumentException, var3404=$r3, var3132=$r4, var697=$r7, var1643=java.lang.Object, var738=$r5, var281=$r6, var498=$r8, var1654=$r9}
; {cn.hutool.cron.pattern.matcher.PatternMatcher=var3000, r0=var1338, cn.hutool.cron.pattern.Part=var376, r1=var892, cn.hutool.cron.pattern.matcher.PartMatcher=var3177, r2=var2219, $z0=var362, $z1=var171, java.lang.IllegalArgumentException=var2092, $r3=var3404, $r4=var3132, $r7=var697, java.lang.Object=var1643, $r5=var738, $r6=var281, $r8=var498, $r9=var1654}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.cron.pattern.matcher.PatternMatcher;	r1 := @parameter0: cn.hutool.cron.pattern.Part;	r2 = virtualinvoke r0.<cn.hutool.cron.pattern.matcher.PatternMatcher: cn.hutool.cron.pattern.matcher.PartMatcher get(cn.hutool.cron.pattern.Part)>(r1);	$z0 = r2 instanceof cn.hutool.cron.pattern.matcher.AlwaysTrueMatcher;	if $z0 == 0 goto $z1 = r2 instanceof cn.hutool.cron.pattern.matcher.BoolArrayMatcher;	$z1 = r2 instanceof cn.hutool.cron.pattern.matcher.BoolArrayMatcher;	if $z1 == 0 goto $r3 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid matcher: ");	$r5 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r3
;block_num 3