(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2379 0)
(declare-sort var3980 0)
(declare-sort var1074 0)
(declare-sort var467 0)
(declare-sort var1964 0)
(declare-sort var2232 0)
(declare-sort var12 0)
(declare-sort var164 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun String_valueOf/-333372740 (var1074) String)
(declare-fun cast-from-String-to-var1074 (String) var1074)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun fileRootCache/1139179338 (var2379) var467)
(declare-fun var467_get/1088891777 (var467 var1074) var1074)
(declare-fun cast-from-var1074-to-var1964 (var1074) var1964)
(declare-fun var2232-init () var2232)
(declare-fun <init>/-1681595970 (var2232 String) void)
(declare-fun var12-init () var12)
(declare-fun var1964_valueOf/1602327315 (Bool) var1964)
(declare-fun var467_put/1464166817 (var467 var1074 var1074) var1074)
(declare-fun cast-from-var1964-to-var1074 (var1964) var1074)
(declare-const null-var2379 var2379)
(declare-const null-String String)
(declare-const null-var1964 var1964)
(declare-const null-var164 var164)
(declare-const var811 var2379) ; Statement: r7 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var811 null-var2379)))
(declare-const var1284 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1284 null-String)))
(declare-const var3085 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3085 null-String)))
(define-const var3007 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var3792 String (String_valueOf/-333372740 (cast-from-String-to-var1074 var1284))) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (<init>/-1061048412 var3007 var3792)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var3007!1 String)
(assert (= var3007!1 var3792))
(assert true)
(define-const var66 String (append/672562846 var3007!1 "::")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::") 
(declare-const var3007!2 String)
(assert (= var3007!2 (str.++ var3007!1 "::")))
(assert true)
(define-const var1948 String (append/672562846 var66 var3085)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var66!1 String)
(assert (= var66!1 (str.++ var66 var3085)))
(assert true)
(define-const var1752 String (toString/-2075883882 var1948)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3976 var467 (fileRootCache/1139179338 var811)) ; Statement: $r8 = r7.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache> 
(define-const var2683 var1074 (var467_get/1088891777 var3976 (cast-from-String-to-var1074 var1752))) ; Statement: $r9 = interfaceinvoke $r8.<java.util.Map: java.lang.Object get(java.lang.Object)>(r6) 
(define-const var1006 var1964 (cast-from-var1074-to-var1964 var2683)) ; Statement: r10 = (java.lang.Boolean) $r9 
 ; Statement: if r10 == null goto $r11 = new java.io.File 
(assert (= var1006 null-var1964)) ; Cond: r10 == null 
(define-const var3200 var2232 var2232-init) ; Statement: $r11 = new java.io.File 
(define-const var2032 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(define-const var2229 String (String_valueOf/-333372740 (cast-from-String-to-var1074 var1284))) ; Statement: $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (<init>/-1061048412 var2032 var2229)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>(java.lang.String)>($r13) 
(declare-const var2032!1 String)
(assert (= var2032!1 var2229))
(assert true)
(define-const var3304 String (append/672562846 var2032!1 "/META-INF/ShadowClassLoader")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/META-INF/ShadowClassLoader") 
(declare-const var2032!2 String)
(assert (= var2032!2 (str.++ var2032!1 "/META-INF/ShadowClassLoader")))
(assert true)
(define-const var1946 String (toString/-2075883882 var3304)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1681595970 var3200 var1946)) ; Statement: specialinvoke $r11.<java.io.File: void <init>(java.lang.String)>($r15) 

(declare-const var3200!1 var2232)
(declare-const var1946!1 String)
(define-const var2297 var12 var12-init) ; Statement: $r16 = new java.io.FileInputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var431 var164) ; Statement: $r22 := @caughtexception 
(assert (not (= var431 null-var164)))
(define-const var641 var467 (fileRootCache/1139179338 var811)) ; Statement: $r23 = r7.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache> 
(define-const var441 var1964 (var1964_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r24 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
;(assert (var467_put/1464166817 var641 (cast-from-String-to-var1074 var1752) (cast-from-var1964-to-var1074 var441))) ; Statement: interfaceinvoke $r23.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r6, $r24) 

(declare-const var641!1 var467)
(declare-const var1752!1 String)
(declare-const var441!1 var1964)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-String-to-var1074=([java.lang.String], java.lang.Object), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), fileRootCache/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), var467_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var1074-to-var1964=([java.lang.Object], java.lang.Boolean), var2232-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), var12-init=([], java.io.FileInputStream), var1964_valueOf/1602327315=([boolean], java.lang.Boolean), var467_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var1964-to-var1074=([java.lang.Boolean], java.lang.Object)}
; {var2379=lombok.launch.ShadowClassLoader, var811=r7, var1284=r1, var3980=null_type, var3085=r3, var3007=$r0, var1074=java.lang.Object, var3792=$r2, var66=$r4, var1948=$r5, var1752=r6, var467=java.util.Map, var3976=$r8, var2683=$r9, var1964=java.lang.Boolean, var1006=r10, var2232=java.io.File, var3200=$r11, var2032=$r12, var2229=$r13, var3304=$r14, var1946=$r15, var12=java.io.FileInputStream, var2297=$r16, var164=java.io.FileNotFoundException, var431=$r22, var641=$r23, var441=$r24}
; {lombok.launch.ShadowClassLoader=var2379, r7=var811, r1=var1284, null_type=var3980, r3=var3085, $r0=var3007, java.lang.Object=var1074, $r2=var3792, $r4=var66, $r5=var1948, r6=var1752, java.util.Map=var467, $r8=var3976, $r9=var2683, java.lang.Boolean=var1964, r10=var1006, java.io.File=var2232, $r11=var3200, $r12=var2032, $r13=var2229, $r14=var3304, $r15=var1946, java.io.FileInputStream=var12, $r16=var2297, java.io.FileNotFoundException=var164, $r22=var431, $r23=var641, $r24=var441}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r7 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = r7.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache>;	$r9 = interfaceinvoke $r8.<java.util.Map: java.lang.Object get(java.lang.Object)>(r6);	r10 = (java.lang.Boolean) $r9;	if r10 == null goto $r11 = new java.io.File;	$r11 = new java.io.File;	$r12 = new java.lang.StringBuilder;	$r13 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	specialinvoke $r12.<java.lang.StringBuilder: void <init>(java.lang.String)>($r13);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/META-INF/ShadowClassLoader");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.io.File: void <init>(java.lang.String)>($r15);	$r16 = new java.io.FileInputStream;	$r22 := @caughtexception;	$r23 = r7.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache>;	$r24 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	interfaceinvoke $r23.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r6, $r24);	return 0
;block_num 3