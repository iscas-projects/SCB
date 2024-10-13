(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1542 0)
(declare-sort var553 0)
(declare-sort var3266 0)
(declare-sort var3369 0)
(declare-sort var3046 0)
(declare-sort var3397 0)
(declare-sort var2347 0)
(declare-sort var2883 0)
(declare-sort var495 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var553-init () var553)
(declare-fun <init>/-325640736 (var553) void)
(declare-fun mergeThreads/-320686676 (var1542) var3266)
(declare-fun var3266_size/-959786421 (var3266) Int)
(declare-fun var3369_timSort/1142032817 (var3266) void)
(declare-fun cast-from-var553-to-var3266 (var553) var3266)
(declare-fun var3046_nanoTime/-1409780067 () Int)
(declare-fun verbose/1600269962 (var3397) Bool)
(declare-fun cast-from-var1542-to-var3397 (var1542) var3397)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun arr-var2883-init () (Array Int var2883))
(declare-fun doAutoIOThrottle/-320686676 (var1542) Bool)
(declare-fun var495_valueOf/1602327315 (Bool) var495)
(declare-fun cast-from-var495-to-var2883 (var495) var2883)
(declare-fun targetMBPerSec/-320686676 (var1542) Float64)
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun cast-from-Float64-to-var2883 (Float64) var2883)
(declare-fun String_format/-647569892 (var2347 String (Array Int var2883)) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1542 var1542)
(declare-const var2347-ROOT var2347)
(declare-const null-__Array__Int__var2883__ (Array Int var2883))
(declare-const var43 var1542) ; Statement: r1 := @this: org.apache.lucene.index.ConcurrentMergeScheduler 
(assert (not (= var43 null-var1542)))
(define-const var3171 var553 var553-init) ; Statement: $r45 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3171)) ; Statement: specialinvoke $r45.<java.util.ArrayList: void <init>()>() 

(declare-const var3171!1 var553)
(define-const var2641 Int 0) ; Statement: i19 = 0 
(assert true) ; Non Conditional
(define-const var3429 var3266 (mergeThreads/-320686676 var43)) ; Statement: $r40 = r1.<org.apache.lucene.index.ConcurrentMergeScheduler: java.util.List mergeThreads> 
(define-const var1533 Int (var3266_size/-959786421 var3429)) ; Statement: $i20 = interfaceinvoke $r40.<java.util.List: int size()>() 
 ; Statement: if i19 >= $i20 goto staticinvoke <org.apache.lucene.util.CollectionUtil: void timSort(java.util.List)>($r45) 
(assert (>= var2641 var1533)) ; Cond: i19 >= $i20 
;(assert (var3369_timSort/1142032817 (cast-from-var553-to-var3266 var3171!1))) ; Statement: staticinvoke <org.apache.lucene.util.CollectionUtil: void timSort(java.util.List)>($r45) 

(declare-const var3171!2 var553)
(define-const var2930 Int (var3266_size/-959786421 (cast-from-var553-to-var3266 var3171!2))) ; Statement: i21 = interfaceinvoke $r45.<java.util.List: int size()>() 
(define-const var1690 Int 0) ; Statement: i22 = 0 
(define-const var2166 Int (- var2930 1)) ; Statement: i23 = i21 - 1 
(assert true) ; Non Conditional
 ; Statement: if i23 < 0 goto $l18 = staticinvoke <java.lang.System: long nanoTime()>() 
(assert (< var2166 0)) ; Cond: i23 < 0 
(define-const var1385 Int var3046_nanoTime/-1409780067) ; Statement: $l18 = staticinvoke <java.lang.System: long nanoTime()>() 
(assert true)
(define-const var1711 Bool (verbose/1600269962 (cast-from-var1542-to-var3397 var43))) ; Statement: $z0 = virtualinvoke r1.<org.apache.lucene.index.ConcurrentMergeScheduler: boolean verbose()>() 
 ; Statement: if $z0 == 0 goto r43 = null 
(assert (not (= (ite var1711 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1548 String String-init) ; Statement: $r46 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1548)) ; Statement: specialinvoke $r46.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1548!1 String)
(assert (= var1548!1 ""))
(define-const var3306 String var1548!1) ; Statement: r43 = $r46 
(define-const var3623 var2347 var2347-ROOT) ; Statement: $r31 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var3466 (Array Int var2883) arr-var2883-init) ; Statement: $r30 = newarray (java.lang.Object)[2] 
(define-const var2801 Bool (doAutoIOThrottle/-320686676 var43)) ; Statement: $z3 = r1.<org.apache.lucene.index.ConcurrentMergeScheduler: boolean doAutoIOThrottle> 
(define-const var2218 var495 (var495_valueOf/1602327315 var2801)) ; Statement: $r32 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z3) 
(declare-const var3466!1 (Array Int var2883))
(assert (not (= var3466!1 null-__Array__Int__var2883__)))
(assert (= (select var3466!1 0) (cast-from-var495-to-var2883 var2218))) ; Statement: $r30[0] = $r32 
(define-const var3367 Float64 (targetMBPerSec/-320686676 var43)) ; Statement: $d7 = r1.<org.apache.lucene.index.ConcurrentMergeScheduler: double targetMBPerSec> 
(define-const var615 Float64 (Float64_valueOf/679560954 var3367)) ; Statement: $r33 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d7) 
(declare-const var3466!2 (Array Int var2883))
(assert (not (= var3466!2 null-__Array__Int__var2883__)))
(assert (= (select var3466!2 1) (cast-from-Float64-to-var2883 var615))) ; Statement: $r30[1] = $r33 
(define-const var3322 String (String_format/-647569892 var3623 "updateMergeThreads ioThrottle=%s targetMBPerSec=%.1f MB/sec" var3466!2)) ; Statement: $r34 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r31, "updateMergeThreads ioThrottle=%s targetMBPerSec=%.1f MB/sec", $r30) 
(assert true)
;(assert (append/672562846 var1548!1 var3322)) ; Statement: virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var1548!2 String)
(assert (= var1548!2 (str.++ var1548!1 var3322)))
 ; Statement: goto [?= i24 = 0] 
(assert true) ; Non Conditional
(define-const var1662 Int 0) ; Statement: i24 = 0 
(assert true) ; Non Conditional
 ; Statement: if i24 >= i21 goto $z1 = virtualinvoke r1.<org.apache.lucene.index.ConcurrentMergeScheduler: boolean verbose()>() 
(assert (>= var1662 var2930)) ; Cond: i24 >= i21 
(assert true)
(define-const var1956 Bool (verbose/1600269962 (cast-from-var1542-to-var3397 var43))) ; Statement: $z1 = virtualinvoke r1.<org.apache.lucene.index.ConcurrentMergeScheduler: boolean verbose()>() 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var1956 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var553-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), mergeThreads/-320686676=([org.apache.lucene.index.ConcurrentMergeScheduler], java.util.List), var3266_size/-959786421=([java.util.List], int), var3369_timSort/1142032817=([java.util.List], void), cast-from-var553-to-var3266=([java.util.ArrayList], java.util.List), var3046_nanoTime/-1409780067=([], long), verbose/1600269962=([org.apache.lucene.index.MergeScheduler], boolean), cast-from-var1542-to-var3397=([org.apache.lucene.index.ConcurrentMergeScheduler], org.apache.lucene.index.MergeScheduler), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), arr-var2883-init=([], java.lang.Object[]), doAutoIOThrottle/-320686676=([org.apache.lucene.index.ConcurrentMergeScheduler], boolean), var495_valueOf/1602327315=([boolean], java.lang.Boolean), cast-from-var495-to-var2883=([java.lang.Boolean], java.lang.Object), targetMBPerSec/-320686676=([org.apache.lucene.index.ConcurrentMergeScheduler], double), Float64_valueOf/679560954=([double], java.lang.Double), cast-from-Float64-to-var2883=([java.lang.Double], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1542=org.apache.lucene.index.ConcurrentMergeScheduler, var43=r1, var553=java.util.ArrayList, var3171=$r45, var2641=i19, var3266=java.util.List, var3429=$r40, var1533=$i20, var3369=org.apache.lucene.util.CollectionUtil, var2930=i21, var1690=i22, var2166=i23, var3046=java.lang.System, var1385=$l18, var3397=org.apache.lucene.index.MergeScheduler, var1711=$z0, var1548=$r46, var3306=r43, var2347=java.util.Locale, var3623=$r31, var2883=java.lang.Object, var3466=$r30, var2801=$z3, var495=java.lang.Boolean, var2218=$r32, var3367=$d7, var615=$r33, var3322=$r34, var1662=i24, var1956=$z1}
; {org.apache.lucene.index.ConcurrentMergeScheduler=var1542, r1=var43, java.util.ArrayList=var553, $r45=var3171, i19=var2641, java.util.List=var3266, $r40=var3429, $i20=var1533, org.apache.lucene.util.CollectionUtil=var3369, i21=var2930, i22=var1690, i23=var2166, java.lang.System=var3046, $l18=var1385, org.apache.lucene.index.MergeScheduler=var3397, $z0=var1711, $r46=var1548, r43=var3306, java.util.Locale=var2347, $r31=var3623, java.lang.Object=var2883, $r30=var3466, $z3=var2801, java.lang.Boolean=var495, $r32=var2218, $d7=var3367, $r33=var615, $r34=var3322, i24=var1662, $z1=var1956}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.lucene.index.ConcurrentMergeScheduler;	$r45 = new java.util.ArrayList;	specialinvoke $r45.<java.util.ArrayList: void <init>()>();	i19 = 0;	$r40 = r1.<org.apache.lucene.index.ConcurrentMergeScheduler: java.util.List mergeThreads>;	$i20 = interfaceinvoke $r40.<java.util.List: int size()>();	if i19 >= $i20 goto staticinvoke <org.apache.lucene.util.CollectionUtil: void timSort(java.util.List)>($r45);	staticinvoke <org.apache.lucene.util.CollectionUtil: void timSort(java.util.List)>($r45);	i21 = interfaceinvoke $r45.<java.util.List: int size()>();	i22 = 0;	i23 = i21 - 1;	if i23 < 0 goto $l18 = staticinvoke <java.lang.System: long nanoTime()>();	$l18 = staticinvoke <java.lang.System: long nanoTime()>();	$z0 = virtualinvoke r1.<org.apache.lucene.index.ConcurrentMergeScheduler: boolean verbose()>();	if $z0 == 0 goto r43 = null;	$r46 = new java.lang.StringBuilder;	specialinvoke $r46.<java.lang.StringBuilder: void <init>()>();	r43 = $r46;	$r31 = <java.util.Locale: java.util.Locale ROOT>;	$r30 = newarray (java.lang.Object)[2];	$z3 = r1.<org.apache.lucene.index.ConcurrentMergeScheduler: boolean doAutoIOThrottle>;	$r32 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z3);	$r30[0] = $r32;	$d7 = r1.<org.apache.lucene.index.ConcurrentMergeScheduler: double targetMBPerSec>;	$r33 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d7);	$r30[1] = $r33;	$r34 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r31, "updateMergeThreads ioThrottle=%s targetMBPerSec=%.1f MB/sec", $r30);	virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	goto [?= i24 = 0];	i24 = 0;	if i24 >= i21 goto $z1 = virtualinvoke r1.<org.apache.lucene.index.ConcurrentMergeScheduler: boolean verbose()>();	$z1 = virtualinvoke r1.<org.apache.lucene.index.ConcurrentMergeScheduler: boolean verbose()>();	if $z1 == 0 goto return;	return
;block_num 10