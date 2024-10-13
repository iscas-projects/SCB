(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3664 0)
(declare-sort var1025 0)
(declare-sort var3103 0)
(declare-sort var2189 0)
(declare-sort var1363 0)
(declare-sort var2355 0)
(declare-sort var121 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1025_getIdString/-826932917 (String String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3103-init () var3103)
(declare-fun var2189_getOutputDirectory/873146074 () var3103)
(declare-fun var1363_replaceBackslash/-1635804809 (String) String)
(declare-fun <init>/-1833447926 (var3103 var3103 String) void)
(declare-fun exists/1072868559 (var3103) Bool)
(declare-const null-String String)
(declare-const var2355-majorDotMinor String)
(declare-const null-var121 var121)
(declare-const var1115 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1115 null-String)))
(define-const var3737 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3737)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3737!1 String)
(assert (= var3737!1 ""))
(assert true)
(define-const var3929 String (append/672562846 var3737!1 "/* ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/* ") 
(declare-const var3737!2 String)
(assert (= var3737!2 (str.++ var3737!1 "/* ")))
(define-const var3790 String (var1025_getIdString/-826932917 "JavaCC" var1115)) ; Statement: $r2 = staticinvoke <org.javacc.parser.JavaFiles: java.lang.String getIdString(java.lang.String,java.lang.String)>("JavaCC", r1) 
(assert true)
(define-const var1107 String (append/672562846 var3929 var3790)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3929!1 String)
(assert (= var3929!1 (str.++ var3929 var3790)))
(assert true)
(define-const var3849 String (append/672562846 var1107 " Version ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Version ") 
(declare-const var1107!1 String)
(assert (= var1107!1 (str.++ var1107 " Version ")))
(assert true)
(define-const var226 String (toString/-2075883882 var3849)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1422 var3103 var3103-init) ; Statement: $r7 = new java.io.File 
(define-const var3260 var3103 var2189_getOutputDirectory/873146074) ; Statement: $r9 = staticinvoke <org.javacc.parser.Options: java.io.File getOutputDirectory()>() 
(define-const var2338 String (var1363_replaceBackslash/-1635804809 var1115)) ; Statement: $r8 = staticinvoke <org.javacc.parser.JavaFiles: java.lang.String replaceBackslash(java.lang.String)>(r1) 
(assert true)
;(assert (<init>/-1833447926 var1422 var3260 var2338)) ; Statement: specialinvoke $r7.<java.io.File: void <init>(java.io.File,java.lang.String)>($r9, $r8) 

(declare-const var1422!1 var3103)
(declare-const var3260!1 var3103)
(declare-const var2338!1 String)
(assert true)
(define-const var2403 Bool (exists/1072868559 var1422!1)) ; Statement: $z0 = virtualinvoke $r7.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto r22 = null 
(assert (not (not (= (ite var2403 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2531 String var2355-majorDotMinor) ; Statement: $r13 = <org.javacc.Version: java.lang.String majorDotMinor> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var770 var121) ; Statement: $r20 := @caughtexception 
(assert (not (= var770 null-var121)))
 ; Statement: return 0.0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1025_getIdString/-826932917=([java.lang.String, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3103-init=([], java.io.File), var2189_getOutputDirectory/873146074=([], java.io.File), var1363_replaceBackslash/-1635804809=([java.lang.String], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean)}
; {var1115=r1, var3664=null_type, var3737=$r0, var3929=$r3, var1025=org.javacc.parser.JavaCCGlobals, var3790=$r2, var1107=$r4, var3849=$r5, var226=r6, var3103=java.io.File, var1422=$r7, var2189=org.javacc.parser.Options, var3260=$r9, var1363=org.javacc.parser.JavaFiles, var2338=$r8, var2403=$z0, var2355=org.javacc.Version, var2531=$r13, var121=java.lang.NumberFormatException, var770=$r20}
; {r1=var1115, null_type=var3664, $r0=var3737, $r3=var3929, org.javacc.parser.JavaCCGlobals=var1025, $r2=var3790, $r4=var1107, $r5=var3849, r6=var226, java.io.File=var3103, $r7=var1422, org.javacc.parser.Options=var2189, $r9=var3260, org.javacc.parser.JavaFiles=var1363, $r8=var2338, $z0=var2403, org.javacc.Version=var2355, $r13=var2531, java.lang.NumberFormatException=var121, $r20=var770}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/* ");	$r2 = staticinvoke <org.javacc.parser.JavaFiles: java.lang.String getIdString(java.lang.String,java.lang.String)>("JavaCC", r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Version ");	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = new java.io.File;	$r9 = staticinvoke <org.javacc.parser.Options: java.io.File getOutputDirectory()>();	$r8 = staticinvoke <org.javacc.parser.JavaFiles: java.lang.String replaceBackslash(java.lang.String)>(r1);	specialinvoke $r7.<java.io.File: void <init>(java.io.File,java.lang.String)>($r9, $r8);	$z0 = virtualinvoke $r7.<java.io.File: boolean exists()>();	if $z0 != 0 goto r22 = null;	$r13 = <org.javacc.Version: java.lang.String majorDotMinor>;	$r20 := @caughtexception;	return 0.0
;block_num 3