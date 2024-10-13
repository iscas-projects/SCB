(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3078 0)
(declare-sort var2962 0)
(declare-sort var3689 0)
(declare-sort var3082 0)
(declare-sort var3771 0)
(declare-sort var968 0)
(declare-sort var2652 0)
(declare-sort var2757 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun String_valueOf/-333372740 (var3689) String)
(declare-fun cast-from-String-to-var3689 (String) var3689)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun fileRootCache/1139179338 (var3078) var3082)
(declare-fun var3082_get/1088891777 (var3082 var3689) var3689)
(declare-fun cast-from-var3689-to-var3771 (var3689) var3771)
(declare-fun var968-init () var968)
(declare-fun <init>/-1681595970 (var968 String) void)
(declare-fun var2652-init () var2652)
(declare-fun var3771_valueOf/1602327315 (Bool) var3771)
(declare-fun var3082_put/1464166817 (var3082 var3689 var3689) var3689)
(declare-fun cast-from-var3771-to-var3689 (var3771) var3689)
(declare-const null-var3078 var3078)
(declare-const null-String String)
(declare-const null-var3771 var3771)
(declare-const null-var2757 var2757)
(declare-const var1664 var3078) ; Statement: r7 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var1664 null-var3078)))
(declare-const var2450 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2450 null-String)))
(declare-const var3671 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3671 null-String)))
(define-const var643 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var3116 String (String_valueOf/-333372740 (cast-from-String-to-var3689 var2450))) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (<init>/-1061048412 var643 var3116)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var643!1 String)
(assert (= var643!1 var3116))
(assert true)
(define-const var141 String (append/672562846 var643!1 "::")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::") 
(declare-const var643!2 String)
(assert (= var643!2 (str.++ var643!1 "::")))
(assert true)
(define-const var3630 String (append/672562846 var141 var3671)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var141!1 String)
(assert (= var141!1 (str.++ var141 var3671)))
(assert true)
(define-const var1175 String (toString/-2075883882 var3630)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1508 var3082 (fileRootCache/1139179338 var1664)) ; Statement: $r8 = r7.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache> 
(define-const var2700 var3689 (var3082_get/1088891777 var1508 (cast-from-String-to-var3689 var1175))) ; Statement: $r9 = interfaceinvoke $r8.<java.util.Map: java.lang.Object get(java.lang.Object)>(r6) 
(define-const var2004 var3771 (cast-from-var3689-to-var3771 var2700)) ; Statement: r10 = (java.lang.Boolean) $r9 
 ; Statement: if r10 == null goto $r11 = new java.io.File 
(assert (= var2004 null-var3771)) ; Cond: r10 == null 
(define-const var2815 var968 var968-init) ; Statement: $r11 = new java.io.File 
(define-const var3942 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(define-const var951 String (String_valueOf/-333372740 (cast-from-String-to-var3689 var2450))) ; Statement: $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (<init>/-1061048412 var3942 var951)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>(java.lang.String)>($r13) 
(declare-const var3942!1 String)
(assert (= var3942!1 var951))
(assert true)
(define-const var682 String (append/672562846 var3942!1 "/META-INF/ShadowClassLoader")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/META-INF/ShadowClassLoader") 
(declare-const var3942!2 String)
(assert (= var3942!2 (str.++ var3942!1 "/META-INF/ShadowClassLoader")))
(assert true)
(define-const var2648 String (toString/-2075883882 var682)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1681595970 var2815 var2648)) ; Statement: specialinvoke $r11.<java.io.File: void <init>(java.lang.String)>($r15) 

(declare-const var2815!1 var968)
(declare-const var2648!1 String)
(define-const var1655 var2652 var2652-init) ; Statement: $r16 = new java.io.FileInputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3427 var2757) ; Statement: $r19 := @caughtexception 
(assert (not (= var3427 null-var2757)))
(define-const var874 var3082 (fileRootCache/1139179338 var1664)) ; Statement: $r20 = r7.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache> 
(define-const var1006 var3771 (var3771_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r21 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
;(assert (var3082_put/1464166817 var874 (cast-from-String-to-var3689 var1175) (cast-from-var3771-to-var3689 var1006))) ; Statement: interfaceinvoke $r20.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r6, $r21) 

(declare-const var874!1 var3082)
(declare-const var1175!1 String)
(declare-const var1006!1 var3771)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-String-to-var3689=([java.lang.String], java.lang.Object), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), fileRootCache/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), var3082_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var3689-to-var3771=([java.lang.Object], java.lang.Boolean), var968-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), var2652-init=([], java.io.FileInputStream), var3771_valueOf/1602327315=([boolean], java.lang.Boolean), var3082_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3771-to-var3689=([java.lang.Boolean], java.lang.Object)}
; {var3078=lombok.launch.ShadowClassLoader, var1664=r7, var2450=r1, var2962=null_type, var3671=r3, var643=$r0, var3689=java.lang.Object, var3116=$r2, var141=$r4, var3630=$r5, var1175=r6, var3082=java.util.Map, var1508=$r8, var2700=$r9, var3771=java.lang.Boolean, var2004=r10, var968=java.io.File, var2815=$r11, var3942=$r12, var951=$r13, var682=$r14, var2648=$r15, var2652=java.io.FileInputStream, var1655=$r16, var2757=java.io.IOException, var3427=$r19, var874=$r20, var1006=$r21}
; {lombok.launch.ShadowClassLoader=var3078, r7=var1664, r1=var2450, null_type=var2962, r3=var3671, $r0=var643, java.lang.Object=var3689, $r2=var3116, $r4=var141, $r5=var3630, r6=var1175, java.util.Map=var3082, $r8=var1508, $r9=var2700, java.lang.Boolean=var3771, r10=var2004, java.io.File=var968, $r11=var2815, $r12=var3942, $r13=var951, $r14=var682, $r15=var2648, java.io.FileInputStream=var2652, $r16=var1655, java.io.IOException=var2757, $r19=var3427, $r20=var874, $r21=var1006}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r7 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = r7.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache>;	$r9 = interfaceinvoke $r8.<java.util.Map: java.lang.Object get(java.lang.Object)>(r6);	r10 = (java.lang.Boolean) $r9;	if r10 == null goto $r11 = new java.io.File;	$r11 = new java.io.File;	$r12 = new java.lang.StringBuilder;	$r13 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	specialinvoke $r12.<java.lang.StringBuilder: void <init>(java.lang.String)>($r13);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/META-INF/ShadowClassLoader");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.io.File: void <init>(java.lang.String)>($r15);	$r16 = new java.io.FileInputStream;	$r19 := @caughtexception;	$r20 = r7.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache>;	$r21 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	interfaceinvoke $r20.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r6, $r21);	return 0
;block_num 3