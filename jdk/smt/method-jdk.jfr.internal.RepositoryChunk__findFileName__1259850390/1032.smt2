(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2269 0)
(declare-sort var879 0)
(declare-sort var1781 0)
(declare-sort var1476 0)
(declare-sort var3972 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toPath/-1930235781 (var2269) var1781)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1781_resolve/1577346994 (var1781 String) var1781)
(declare-fun var1476_currentTimeMillis/630293680 () Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var2269-init () var2269)
(declare-fun <init>/1196039837 (var2269 var1781) void)
(declare-fun var3972_toRealPath/1294304992 (var2269) var2269)
(declare-const null-var2269 var2269)
(declare-const null-String String)
(declare-const var363 var2269) ; Statement: r0 := @parameter0: jdk.jfr.internal.SecuritySupport$SafePath 
(assert (not (= var363 null-var2269)))
(declare-const var2334 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2334 null-String)))
(declare-const var2060 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var2060 null-String)))
(assert true)
(define-const var449 var1781 (toPath/-1930235781 var363)) ; Statement: $r7 = virtualinvoke r0.<jdk.jfr.internal.SecuritySupport$SafePath: java.nio.file.Path toPath()>() 
(define-const var96 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var96)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var96!1 String)
(assert (= var96!1 ""))
(assert true)
(define-const var2932 String (append/672562846 var96!1 var2334)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var96!2 String)
(assert (= var96!2 (str.++ var96!1 var2334)))
(assert true)
(define-const var1725 String (append/672562846 var2932 var2060)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2932!1 String)
(assert (= var2932!1 (str.++ var2932 var2060)))
(assert true)
(define-const var3916 String (toString/-2075883882 var1725)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2329 var1781 (var1781_resolve/1577346994 var449 var3916)) ; Statement: r22 = interfaceinvoke $r7.<java.nio.file.Path: java.nio.file.Path resolve(java.lang.String)>($r6) 
(define-const var2272 Int 1) ; Statement: i1 = 1 
(assert true) ; Non Conditional
 ; Statement: if i1 >= 100 goto $r14 = virtualinvoke r0.<jdk.jfr.internal.SecuritySupport$SafePath: java.nio.file.Path toPath()>() 
(assert (>= var2272 100)) ; Cond: i1 >= 100 
(assert true)
(define-const var1765 var1781 (toPath/-1930235781 var363)) ; Statement: $r14 = virtualinvoke r0.<jdk.jfr.internal.SecuritySupport$SafePath: java.nio.file.Path toPath()>() 
(define-const var3158 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3158)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3158!1 String)
(assert (= var3158!1 ""))
(assert true)
(define-const var1706 String (append/672562846 var3158!1 var2334)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3158!2 String)
(assert (= var3158!2 (str.++ var3158!1 var2334)))
(assert true)
(define-const var2551 String (append/672562846 var1706 "_")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1706!1 String)
(assert (= var1706!1 (str.++ var1706 "_")))
(define-const var1712 Int var1476_currentTimeMillis/630293680) ; Statement: $l0 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(assert true)
(define-const var2931 String (append/-901862667 var2551 var1712)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2551!1 String)
(assert (str.prefixof var2551 var2551!1))
(assert true)
(define-const var3959 String (append/672562846 var2931 var2060)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2931!1 String)
(assert (= var2931!1 (str.++ var2931 var2060)))
(assert true)
(define-const var459 String (toString/-2075883882 var3959)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2278 var1781 (var1781_resolve/1577346994 var1765 var459)) ; Statement: r23 = interfaceinvoke $r14.<java.nio.file.Path: java.nio.file.Path resolve(java.lang.String)>($r13) 
(define-const var3786 var2269 var2269-init) ; Statement: $r15 = new jdk.jfr.internal.SecuritySupport$SafePath 
(assert true)
;(assert (<init>/1196039837 var3786 var2278)) ; Statement: specialinvoke $r15.<jdk.jfr.internal.SecuritySupport$SafePath: void <init>(java.nio.file.Path)>(r23) 

(declare-const var3786!1 var2269)
(declare-const var2278!1 var1781)
(define-const var632 var2269 (var3972_toRealPath/1294304992 var3786!1)) ; Statement: $r16 = staticinvoke <jdk.jfr.internal.SecuritySupport: jdk.jfr.internal.SecuritySupport$SafePath toRealPath(jdk.jfr.internal.SecuritySupport$SafePath)>($r15) 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {toPath/-1930235781=([jdk.jfr.internal.SecuritySupport$SafePath], java.nio.file.Path), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1781_resolve/1577346994=([java.nio.file.Path, java.lang.String], java.nio.file.Path), var1476_currentTimeMillis/630293680=([], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var2269-init=([], jdk.jfr.internal.SecuritySupport$SafePath), <init>/1196039837=([jdk.jfr.internal.SecuritySupport$SafePath, java.nio.file.Path], void), var3972_toRealPath/1294304992=([jdk.jfr.internal.SecuritySupport$SafePath], jdk.jfr.internal.SecuritySupport$SafePath)}
; {var2269=jdk.jfr.internal.SecuritySupport$SafePath, var363=r0, var2334=r2, var879=null_type, var2060=r3, var1781=java.nio.file.Path, var449=$r7, var96=$r1, var2932=$r4, var1725=$r5, var3916=$r6, var2329=r22, var2272=i1, var1765=$r14, var3158=$r8, var1706=$r9, var2551=$r10, var1476=java.lang.System, var1712=$l0, var2931=$r11, var3959=$r12, var459=$r13, var2278=r23, var3786=$r15, var3972=jdk.jfr.internal.SecuritySupport, var632=$r16}
; {jdk.jfr.internal.SecuritySupport$SafePath=var2269, r0=var363, r2=var2334, null_type=var879, r3=var2060, java.nio.file.Path=var1781, $r7=var449, $r1=var96, $r4=var2932, $r5=var1725, $r6=var3916, r22=var2329, i1=var2272, $r14=var1765, $r8=var3158, $r9=var1706, $r10=var2551, java.lang.System=var1476, $l0=var1712, $r11=var2931, $r12=var3959, $r13=var459, r23=var2278, $r15=var3786, jdk.jfr.internal.SecuritySupport=var3972, $r16=var632}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1}
;stmts r0 := @parameter0: jdk.jfr.internal.SecuritySupport$SafePath;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	$r7 = virtualinvoke r0.<jdk.jfr.internal.SecuritySupport$SafePath: java.nio.file.Path toPath()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	r22 = interfaceinvoke $r7.<java.nio.file.Path: java.nio.file.Path resolve(java.lang.String)>($r6);	i1 = 1;	if i1 >= 100 goto $r14 = virtualinvoke r0.<jdk.jfr.internal.SecuritySupport$SafePath: java.nio.file.Path toPath()>();	$r14 = virtualinvoke r0.<jdk.jfr.internal.SecuritySupport$SafePath: java.nio.file.Path toPath()>();	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$l0 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	r23 = interfaceinvoke $r14.<java.nio.file.Path: java.nio.file.Path resolve(java.lang.String)>($r13);	$r15 = new jdk.jfr.internal.SecuritySupport$SafePath;	specialinvoke $r15.<jdk.jfr.internal.SecuritySupport$SafePath: void <init>(java.nio.file.Path)>(r23);	$r16 = staticinvoke <jdk.jfr.internal.SecuritySupport: jdk.jfr.internal.SecuritySupport$SafePath toRealPath(jdk.jfr.internal.SecuritySupport$SafePath)>($r15);	return $r16
;block_num 3