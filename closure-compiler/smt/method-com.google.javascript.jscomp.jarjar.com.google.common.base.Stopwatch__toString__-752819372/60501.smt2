(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var280 0)
(declare-sort var1960 0)
(declare-sort var3394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun elapsedNanos/1657582548 (var280) Int)
(declare-fun var280_chooseUnit/-1110335736 (Int) var1960)
(declare-fun cast-from-Int-to-Float64 (Int) Float64)
(declare-fun convert/683621972 (var1960 Int var1960) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3394_formatCompact4Digits/-1491815053 (Float64) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var280_abbreviate/55797693 (var1960) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var280 var280)
(declare-const var1960-NANOSECONDS var1960)
(declare-const var3545 var280) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Stopwatch 
(assert (not (= var3545 null-var280)))
(assert true)
(define-const var2393 Int (elapsedNanos/1657582548 var3545)) ; Statement: l0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Stopwatch: long elapsedNanos()>() 
(define-const var220 var1960 (var280_chooseUnit/-1110335736 var2393)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Stopwatch: java.util.concurrent.TimeUnit chooseUnit(long)>(l0) 
(define-const var157 Float64 (cast-from-Int-to-Float64 var2393)) ; Statement: $d1 = (double) l0 
(define-const var1165 var1960 var1960-NANOSECONDS) ; Statement: $r2 = <java.util.concurrent.TimeUnit: java.util.concurrent.TimeUnit NANOSECONDS> 
(assert true)
(define-const var160 Int (convert/683621972 var1165 1 var220)) ; Statement: $l1 = virtualinvoke $r2.<java.util.concurrent.TimeUnit: long convert(long,java.util.concurrent.TimeUnit)>(1L, r1) 
(define-const var582 Float64 (cast-from-Int-to-Float64 var160)) ; Statement: $d0 = (double) $l1 
(define-const var1994 Float64 (fp.div roundNearestTiesToEven var157 var582)) ; Statement: d2 = $d1 / $d0 
(define-const var42 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var42)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var42!1 String)
(assert (= var42!1 ""))
(define-const var3769 String (var3394_formatCompact4Digits/-1491815053 var1994)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Platform: java.lang.String formatCompact4Digits(double)>(d2) 
(assert true)
(define-const var3053 String (append/672562846 var42!1 var3769)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var42!2 String)
(assert (= var42!2 (str.++ var42!1 var3769)))
(assert true)
(define-const var410 String (append/672562846 var3053 " ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3053!1 String)
(assert (= var3053!1 (str.++ var3053 " ")))
(define-const var1977 String (var280_abbreviate/55797693 var220)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Stopwatch: java.lang.String abbreviate(java.util.concurrent.TimeUnit)>(r1) 
(assert true)
(define-const var752 String (append/672562846 var410 var1977)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var410!1 String)
(assert (= var410!1 (str.++ var410 var1977)))
(assert true)
(define-const var1098 String (toString/-2075883882 var752)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {elapsedNanos/1657582548=([com.google.javascript.jscomp.jarjar.com.google.common.base.Stopwatch], long), var280_chooseUnit/-1110335736=([long], java.util.concurrent.TimeUnit), cast-from-Int-to-Float64=([long], double), convert/683621972=([java.util.concurrent.TimeUnit, long, java.util.concurrent.TimeUnit], long), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3394_formatCompact4Digits/-1491815053=([double], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var280_abbreviate/55797693=([java.util.concurrent.TimeUnit], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var280=com.google.javascript.jscomp.jarjar.com.google.common.base.Stopwatch, var3545=r0, var2393=l0, var1960=java.util.concurrent.TimeUnit, var220=r1, var157=$d1, var1165=$r2, var160=$l1, var582=$d0, var1994=d2, var42=$r3, var3394=com.google.javascript.jscomp.jarjar.com.google.common.base.Platform, var3769=$r4, var3053=$r5, var410=$r7, var1977=$r6, var752=$r8, var1098=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Stopwatch=var280, r0=var3545, l0=var2393, java.util.concurrent.TimeUnit=var1960, r1=var220, $d1=var157, $r2=var1165, $l1=var160, $d0=var582, d2=var1994, $r3=var42, com.google.javascript.jscomp.jarjar.com.google.common.base.Platform=var3394, $r4=var3769, $r5=var3053, $r7=var410, $r6=var1977, $r8=var752, $r9=var1098}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Stopwatch;	l0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Stopwatch: long elapsedNanos()>();	r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Stopwatch: java.util.concurrent.TimeUnit chooseUnit(long)>(l0);	$d1 = (double) l0;	$r2 = <java.util.concurrent.TimeUnit: java.util.concurrent.TimeUnit NANOSECONDS>;	$l1 = virtualinvoke $r2.<java.util.concurrent.TimeUnit: long convert(long,java.util.concurrent.TimeUnit)>(1L, r1);	$d0 = (double) $l1;	d2 = $d1 / $d0;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Platform: java.lang.String formatCompact4Digits(double)>(d2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Stopwatch: java.lang.String abbreviate(java.util.concurrent.TimeUnit)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1