(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2667 0)
(declare-sort var2684 0)
(declare-sort var3894 0)
(declare-sort var1702 0)
(declare-sort var1294 0)
(declare-sort var1757 0)
(declare-sort var2677 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2667_createRepository/-617422557 (var2684) var2684)
(declare-fun repository/1121014662 (var2667) var2684)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1757) String)
(declare-fun cast-from-var2684-to-var1757 (var2684) var1757)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2677_log/979489950 (var1702 var1294 String) void)
(declare-fun baseLocation/1121014662 (var2667) var2684)
(declare-const null-var2667 var2667)
(declare-const null-var2684 var2684)
(declare-const null-var3894 var3894)
(declare-const var1702-JFR var1702)
(declare-const var1294-INFO var1294)
(declare-const var1368 var2667) ; Statement: r0 := @this: jdk.jfr.internal.Repository 
(assert (not (= var1368 null-var2667)))
(declare-const var3944 var2684) ; Statement: r1 := @parameter0: jdk.jfr.internal.SecuritySupport$SafePath 
(assert (not (= var3944 null-var2684)))
(define-const var2225 var2684 (var2667_createRepository/-617422557 var3944)) ; Statement: $r2 = staticinvoke <jdk.jfr.internal.Repository: jdk.jfr.internal.SecuritySupport$SafePath createRepository(jdk.jfr.internal.SecuritySupport$SafePath)>(r1) 
(declare-const var1368!1 var2667)
(assert (not (= var1368!1 null-var2667)))
(assert (= (repository/1121014662 var1368!1) var2225)) ; Statement: r0.<jdk.jfr.internal.Repository: jdk.jfr.internal.SecuritySupport$SafePath repository> = $r2 
(define-const var3794 var2684 (repository/1121014662 var1368!1)) ; Statement: $r3 = r0.<jdk.jfr.internal.Repository: jdk.jfr.internal.SecuritySupport$SafePath repository> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1829 var3894) ; Statement: $r4 := @caughtexception 
(assert (not (= var1829 null-var3894)))
(define-const var3519 var1702 var1702-JFR) ; Statement: $r6 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR> 
(define-const var558 var1294 var1294-INFO) ; Statement: $r7 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel INFO> 
(define-const var2976 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2976)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2976!1 String)
(assert (= var2976!1 ""))
(assert true)
(define-const var3291 String (append/672562846 var2976!1 "Could not delete disk repository ")) ; Statement: $r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not delete disk repository ") 
(declare-const var2976!2 String)
(assert (= var2976!2 (str.++ var2976!1 "Could not delete disk repository ")))
(define-const var3647 var2684 (repository/1121014662 var1368!1)) ; Statement: $r8 = r0.<jdk.jfr.internal.Repository: jdk.jfr.internal.SecuritySupport$SafePath repository> 
(assert true)
(define-const var1856 String (append/-1031950772 var3291 (cast-from-var2684-to-var1757 var3647))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var3291!1 String)
(assert (str.prefixof var3291 var3291!1))
(assert true)
(define-const var3300 String (toString/-2075883882 var1856)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2677_log/979489950 var3519 var558 var3300)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r6, $r7, $r11) 

(declare-const var3519!1 var1702)
(declare-const var558!1 var1294)
(declare-const var3300!1 String)
(assert true) ; Non Conditional
(declare-const var1368!2 var2667)
(assert (not (= var1368!2 null-var2667)))
(assert (= (baseLocation/1121014662 var1368!2) var3944)) ; Statement: r0.<jdk.jfr.internal.Repository: jdk.jfr.internal.SecuritySupport$SafePath baseLocation> = r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2667_createRepository/-617422557=([jdk.jfr.internal.SecuritySupport$SafePath], jdk.jfr.internal.SecuritySupport$SafePath), repository/1121014662=([jdk.jfr.internal.Repository], jdk.jfr.internal.SecuritySupport$SafePath), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2684-to-var1757=([jdk.jfr.internal.SecuritySupport$SafePath], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2677_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void), baseLocation/1121014662=([jdk.jfr.internal.Repository], jdk.jfr.internal.SecuritySupport$SafePath)}
; {var2667=jdk.jfr.internal.Repository, var1368=r0, var2684=jdk.jfr.internal.SecuritySupport$SafePath, var3944=r1, var2225=$r2, var3794=$r3, var3894=java.io.IOException, var1829=$r4, var1702=jdk.jfr.internal.LogTag, var3519=$r6, var1294=jdk.jfr.internal.LogLevel, var558=$r7, var2976=$r5, var3291=$r9, var3647=$r8, var1757=java.lang.Object, var1856=$r10, var3300=$r11, var2677=jdk.jfr.internal.Logger}
; {jdk.jfr.internal.Repository=var2667, r0=var1368, jdk.jfr.internal.SecuritySupport$SafePath=var2684, r1=var3944, $r2=var2225, $r3=var3794, java.io.IOException=var3894, $r4=var1829, jdk.jfr.internal.LogTag=var1702, $r6=var3519, jdk.jfr.internal.LogLevel=var1294, $r7=var558, $r5=var2976, $r9=var3291, $r8=var3647, java.lang.Object=var1757, $r10=var1856, $r11=var3300, jdk.jfr.internal.Logger=var2677}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.Repository;	r1 := @parameter0: jdk.jfr.internal.SecuritySupport$SafePath;	$r2 = staticinvoke <jdk.jfr.internal.Repository: jdk.jfr.internal.SecuritySupport$SafePath createRepository(jdk.jfr.internal.SecuritySupport$SafePath)>(r1);	r0.<jdk.jfr.internal.Repository: jdk.jfr.internal.SecuritySupport$SafePath repository> = $r2;	$r3 = r0.<jdk.jfr.internal.Repository: jdk.jfr.internal.SecuritySupport$SafePath repository>;	$r4 := @caughtexception;	$r6 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR>;	$r7 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel INFO>;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not delete disk repository ");	$r8 = r0.<jdk.jfr.internal.Repository: jdk.jfr.internal.SecuritySupport$SafePath repository>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r6, $r7, $r11);	r0.<jdk.jfr.internal.Repository: jdk.jfr.internal.SecuritySupport$SafePath baseLocation> = r1;	return
;block_num 3