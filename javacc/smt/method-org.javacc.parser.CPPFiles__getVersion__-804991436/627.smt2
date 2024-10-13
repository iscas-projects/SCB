(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var347 0)
(declare-sort var1118 0)
(declare-sort var2144 0)
(declare-sort var1556 0)
(declare-sort var2658 0)
(declare-sort var1812 0)
(declare-sort var796 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1118_getIdString/-826932917 (String String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2144-init () var2144)
(declare-fun var1556_getOutputDirectory/873146074 () var2144)
(declare-fun var2658_replaceBackslash/1461074952 (String) String)
(declare-fun <init>/-1833447926 (var2144 var2144 String) void)
(declare-fun exists/1072868559 (var2144) Bool)
(declare-const null-String String)
(declare-const var1812-versionNumber String)
(declare-const null-var796 var796)
(declare-const var3725 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3725 null-String)))
(define-const var213 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var213)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var213!1 String)
(assert (= var213!1 ""))
(assert true)
(define-const var3812 String (append/672562846 var213!1 "/* ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/* ") 
(declare-const var213!2 String)
(assert (= var213!2 (str.++ var213!1 "/* ")))
(define-const var3987 String (var1118_getIdString/-826932917 "JavaCC" var3725)) ; Statement: $r2 = staticinvoke <org.javacc.parser.CPPFiles: java.lang.String getIdString(java.lang.String,java.lang.String)>("JavaCC", r1) 
(assert true)
(define-const var374 String (append/672562846 var3812 var3987)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3812!1 String)
(assert (= var3812!1 (str.++ var3812 var3987)))
(assert true)
(define-const var908 String (append/672562846 var374 " Version ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Version ") 
(declare-const var374!1 String)
(assert (= var374!1 (str.++ var374 " Version ")))
(assert true)
(define-const var1309 String (toString/-2075883882 var908)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2142 var2144 var2144-init) ; Statement: $r7 = new java.io.File 
(define-const var672 var2144 var1556_getOutputDirectory/873146074) ; Statement: $r9 = staticinvoke <org.javacc.parser.Options: java.io.File getOutputDirectory()>() 
(define-const var395 String (var2658_replaceBackslash/1461074952 var3725)) ; Statement: $r8 = staticinvoke <org.javacc.parser.CPPFiles: java.lang.String replaceBackslash(java.lang.String)>(r1) 
(assert true)
;(assert (<init>/-1833447926 var2142 var672 var395)) ; Statement: specialinvoke $r7.<java.io.File: void <init>(java.io.File,java.lang.String)>($r9, $r8) 

(declare-const var2142!1 var2144)
(declare-const var672!1 var2144)
(declare-const var395!1 String)
(assert true)
(define-const var2778 Bool (exists/1072868559 var2142!1)) ; Statement: $z0 = virtualinvoke $r7.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto r22 = null 
(assert (not (not (= (ite var2778 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var583 String var1812-versionNumber) ; Statement: $r13 = <org.javacc.Version: java.lang.String versionNumber> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3549 var796) ; Statement: $r20 := @caughtexception 
(assert (not (= var3549 null-var796)))
 ; Statement: return 0.0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1118_getIdString/-826932917=([java.lang.String, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2144-init=([], java.io.File), var1556_getOutputDirectory/873146074=([], java.io.File), var2658_replaceBackslash/1461074952=([java.lang.String], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean)}
; {var3725=r1, var347=null_type, var213=$r0, var3812=$r3, var1118=org.javacc.parser.JavaCCGlobals, var3987=$r2, var374=$r4, var908=$r5, var1309=r6, var2144=java.io.File, var2142=$r7, var1556=org.javacc.parser.Options, var672=$r9, var2658=org.javacc.parser.CPPFiles, var395=$r8, var2778=$z0, var1812=org.javacc.Version, var583=$r13, var796=java.lang.NumberFormatException, var3549=$r20}
; {r1=var3725, null_type=var347, $r0=var213, $r3=var3812, org.javacc.parser.JavaCCGlobals=var1118, $r2=var3987, $r4=var374, $r5=var908, r6=var1309, java.io.File=var2144, $r7=var2142, org.javacc.parser.Options=var1556, $r9=var672, org.javacc.parser.CPPFiles=var2658, $r8=var395, $z0=var2778, org.javacc.Version=var1812, $r13=var583, java.lang.NumberFormatException=var796, $r20=var3549}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/* ");	$r2 = staticinvoke <org.javacc.parser.CPPFiles: java.lang.String getIdString(java.lang.String,java.lang.String)>("JavaCC", r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Version ");	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = new java.io.File;	$r9 = staticinvoke <org.javacc.parser.Options: java.io.File getOutputDirectory()>();	$r8 = staticinvoke <org.javacc.parser.CPPFiles: java.lang.String replaceBackslash(java.lang.String)>(r1);	specialinvoke $r7.<java.io.File: void <init>(java.io.File,java.lang.String)>($r9, $r8);	$z0 = virtualinvoke $r7.<java.io.File: boolean exists()>();	if $z0 != 0 goto r22 = null;	$r13 = <org.javacc.Version: java.lang.String versionNumber>;	$r20 := @caughtexception;	return 0.0
;block_num 3