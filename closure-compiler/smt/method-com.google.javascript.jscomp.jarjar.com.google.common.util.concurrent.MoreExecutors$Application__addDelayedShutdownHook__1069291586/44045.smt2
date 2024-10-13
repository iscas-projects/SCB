(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var406 0)
(declare-sort var3588 0)
(declare-sort var1615 0)
(declare-sort var2246 0)
(declare-sort var1318 0)
(declare-sort var1588 0)
(declare-sort var2417 0)
(declare-sort var3740 0)
(declare-sort var1203 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2246_checkNotNull/1446102589 (var1318) var1318)
(declare-fun cast-from-var3588-to-var1318 (var3588) var1318)
(declare-fun cast-from-var1615-to-var1318 (var1615) var1318)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1318) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1588-init () var1588)
(declare-fun <init>/1932048129 (var1588 var406 var3588 Int var1615) void)
(declare-fun var3740_newThread/2134547051 (String var1203) var2417)
(declare-fun cast-from-var1588-to-var1203 (var1588) var1203)
(declare-fun addShutdownHook/-2063435101 (var406 var2417) void)
(declare-const null-var406 var406)
(declare-const null-var3588 var3588)
(declare-const null-Int Int)
(declare-const null-var1615 var1615)
(declare-const var156 var406) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$Application 
(assert (not (= var156 null-var406)))
(declare-const var1118 var3588) ; Statement: r0 := @parameter0: java.util.concurrent.ExecutorService 
(assert (not (= var1118 null-var3588)))
(declare-const var43 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var43 null-Int)))
(declare-const var2353 var1615) ; Statement: r1 := @parameter2: java.util.concurrent.TimeUnit 
(assert (not (= var2353 null-var1615)))
;(assert (var2246_checkNotNull/1446102589 (cast-from-var3588-to-var1318 var1118))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var1118!1 var3588)
;(assert (var2246_checkNotNull/1446102589 (cast-from-var1615-to-var1318 var2353))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1) 

(declare-const var2353!1 var1615)
(define-const var3001 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3001)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3001!1 String)
(assert (= var3001!1 ""))
(assert true)
(define-const var2292 String (append/672562846 var3001!1 "DelayedShutdownHook-for-")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("DelayedShutdownHook-for-") 
(declare-const var3001!2 String)
(assert (= var3001!2 (str.++ var3001!1 "DelayedShutdownHook-for-")))
(assert true)
(define-const var808 String (append/-1031950772 var2292 (cast-from-var3588-to-var1318 var1118!1))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2292!1 String)
(assert (str.prefixof var2292 var2292!1))
(assert true)
(define-const var1242 String (toString/-2075883882 var808)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var907 var1588 var1588-init) ; Statement: $r6 = new com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$Application$1 
(assert true)
;(assert (<init>/1932048129 var907 var156 var1118!1 var43 var2353!1)) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$Application$1: void <init>(com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$Application,java.util.concurrent.ExecutorService,long,java.util.concurrent.TimeUnit)>(r2, r0, l0, r1) 

(declare-const var907!1 var1588)
(declare-const var156!1 var406)
(declare-const var1118!2 var3588)
(declare-const var43!1 Int)
(declare-const var2353!2 var1615)
(define-const var906 var2417 (var3740_newThread/2134547051 var1242 (cast-from-var1588-to-var1203 var907!1))) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors: java.lang.Thread newThread(java.lang.String,java.lang.Runnable)>($r7, $r6) 
(assert true)
;(assert (addShutdownHook/-2063435101 var156!1 var906)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$Application: void addShutdownHook(java.lang.Thread)>($r8) 

(declare-const var156!2 var406)
(declare-const var906!1 var2417)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2246_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-var3588-to-var1318=([java.util.concurrent.ExecutorService], java.lang.Object), cast-from-var1615-to-var1318=([java.util.concurrent.TimeUnit], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1588-init=([], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$Application$1), <init>/1932048129=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$Application$1, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$Application, java.util.concurrent.ExecutorService, long, java.util.concurrent.TimeUnit], void), var3740_newThread/2134547051=([java.lang.String, java.lang.Runnable], java.lang.Thread), cast-from-var1588-to-var1203=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$Application$1], java.lang.Runnable), addShutdownHook/-2063435101=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$Application, java.lang.Thread], void)}
; {var406=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$Application, var156=r2, var3588=java.util.concurrent.ExecutorService, var1118=r0, var43=l0, var1615=java.util.concurrent.TimeUnit, var2353=r1, var2246=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1318=java.lang.Object, var3001=$r3, var2292=$r4, var808=$r5, var1242=$r7, var1588=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$Application$1, var907=$r6, var2417=java.lang.Thread, var3740=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors, var1203=java.lang.Runnable, var906=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$Application=var406, r2=var156, java.util.concurrent.ExecutorService=var3588, r0=var1118, l0=var43, java.util.concurrent.TimeUnit=var1615, r1=var2353, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2246, java.lang.Object=var1318, $r3=var3001, $r4=var2292, $r5=var808, $r7=var1242, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$Application$1=var1588, $r6=var907, java.lang.Thread=var2417, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors=var3740, java.lang.Runnable=var1203, $r8=var906}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$Application;	r0 := @parameter0: java.util.concurrent.ExecutorService;	l0 := @parameter1: long;	r1 := @parameter2: java.util.concurrent.TimeUnit;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("DelayedShutdownHook-for-");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = new com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$Application$1;	specialinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$Application$1: void <init>(com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$Application,java.util.concurrent.ExecutorService,long,java.util.concurrent.TimeUnit)>(r2, r0, l0, r1);	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors: java.lang.Thread newThread(java.lang.String,java.lang.Runnable)>($r7, $r6);	virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$Application: void addShutdownHook(java.lang.Thread)>($r8);	return
;block_num 1