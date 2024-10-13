(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2391 0)
(declare-sort var1975 0)
(declare-sort var2799 0)
(declare-sort var1358 0)
(declare-sort var2437 0)
(declare-sort var2886 0)
(declare-sort var844 0)
(declare-sort var5 0)
(declare-sort var2776 0)
(declare-sort var2454 0)
(declare-sort var3191 0)
(declare-sort var722 0)
(declare-sort var3639 0)
(declare-sort var380 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun compiler/-1513802512 (var2391) var2437)
(declare-fun var2886-init () var2886)
(declare-fun <init>/354607583 (var2886 var844) void)
(declare-fun cast-from-var2437-to-var844 (var2437) var844)
(declare-fun config/-1513802512 (var2391) var5)
(declare-fun outputWrapper/781817645 (var5) String)
(declare-fun jsOutputFile/781817645 (var5) String)
(declare-fun writeOutput/774778479 (var2391 var2776 var2437 var2454 var3191 String String var1358 String) void)
(declare-fun cast-from-String-to-var2776 (String) var2776)
(declare-fun cast-from-var2886-to-var2454 (var2886) var2454)
(declare-fun var722-init () var722)
(declare-fun toString/-522406933 (var3639) String)
(declare-fun cast-from-String-to-var3639 (String) var3639)
(declare-fun var380_isNullOrEmpty/1886904788 (String) Bool)
(declare-fun <init>/-1584588198 (var722 String String) void)
(declare-fun shouldGatherSourceMapInfo/-1407838280 (var1975) Bool)
(declare-const null-var2391 var2391)
(declare-const null-var1975 var1975)
(declare-const null-String String)
(declare-const null-var1358 var1358)
(declare-const null-NullType var2799)
(declare-const null-var3191 var3191)
(declare-const var3899 var2391) ; Statement: r1 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner 
(assert (not (= var3899 null-var2391)))
(declare-const var2482 var1975) ; Statement: r16 := @parameter0: com.google.javascript.jscomp.CompilerOptions 
(assert (not (= var2482 null-var1975)))
(declare-const var2665 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var2665 null-String)))
(declare-const var1371 var1358) ; Statement: r7 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.common.base.Function 
(assert (not (= var1371 null-var1358)))
(define-const var2991 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2991)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2991!1 String)
(assert (= var2991!1 ""))
(define-const var2322 var2437 (compiler/-1513802512 var3899)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.Compiler compiler> 
(define-const var1237 var2886 var2886-init) ; Statement: $r2 = new com.google.javascript.jscomp.Compiler$SingleBinaryLicenseTracker 
(define-const var3893 var2437 (compiler/-1513802512 var3899)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.Compiler compiler> 
(assert true)
;(assert (<init>/354607583 var1237 (cast-from-var2437-to-var844 var3893))) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.Compiler$SingleBinaryLicenseTracker: void <init>(com.google.javascript.jscomp.AbstractCompiler)>($r3) 

(declare-const var1237!1 var2886)
(declare-const var3893!1 var2437)
(define-const var2340 var5 (config/-1513802512 var3899)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var147 String (outputWrapper/781817645 var2340)) ; Statement: $r10 = $r5.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String outputWrapper> 
(define-const var1736 var5 (config/-1513802512 var3899)) ; Statement: $r8 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var1455 String (jsOutputFile/781817645 var1736)) ; Statement: $r9 = $r8.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String jsOutputFile> 
(assert true)
;(assert (writeOutput/774778479 var3899 (cast-from-String-to-var2776 var2991!1) var2322 (cast-from-var2886-to-var2454 var1237!1) null-var3191 var147 var2665 var1371 var1455)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: void writeOutput(java.lang.Appendable,com.google.javascript.jscomp.Compiler,com.google.javascript.jscomp.CodePrinter$LicenseTracker,com.google.javascript.jscomp.JSChunk,java.lang.String,java.lang.String,com.google.javascript.jscomp.jarjar.com.google.common.base.Function,java.lang.String)>($r0, $r4, $r2, null, $r10, r6, r7, $r9) 

(declare-const var3899!1 var2391)
(declare-const var2991!2 String)
(declare-const var2322!1 var2437)
(declare-const var1237!2 var2886)
(declare-const var1882 var2799)
(declare-const var147!1 String)
(declare-const var2665!1 String)
(declare-const var1371!1 var1358)
(declare-const var1455!1 String)
(define-const var2044 var722 var722-init) ; Statement: $r11 = new com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec 
(assert true)
(define-const var143 String (toString/-522406933 (cast-from-String-to-var3639 var2991!2))) ; Statement: $r15 = virtualinvoke $r0.<java.lang.Object: java.lang.String toString()>() 
(define-const var1800 var5 (config/-1513802512 var3899!1)) ; Statement: $r12 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var239 String (jsOutputFile/781817645 var1800)) ; Statement: $r13 = $r12.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String jsOutputFile> 
(define-const var3680 Bool (var380_isNullOrEmpty/1886904788 var239)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>($r13) 
 ; Statement: if $z0 == 0 goto $r14 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(assert (= (ite var3680 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2235 var5 (config/-1513802512 var3899!1)) ; Statement: $r14 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var3863 String (jsOutputFile/781817645 var2235)) ; Statement: $r22 = $r14.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String jsOutputFile> 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1584588198 var2044 var143 var3863)) ; Statement: specialinvoke $r11.<com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec: void <init>(java.lang.String,java.lang.String)>($r15, $r22) 

(declare-const var2044!1 var722)
(declare-const var143!1 String)
(declare-const var3863!1 String)
(assert true)
(define-const var3488 Bool (shouldGatherSourceMapInfo/-1407838280 var2482)) ; Statement: $z1 = virtualinvoke r16.<com.google.javascript.jscomp.CompilerOptions: boolean shouldGatherSourceMapInfo()>() 
 ; Statement: if $z1 == 0 goto return $r11 
(assert (= (ite var3488 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), compiler/-1513802512=([com.google.javascript.jscomp.AbstractCommandLineRunner], com.google.javascript.jscomp.Compiler), var2886-init=([], com.google.javascript.jscomp.Compiler$SingleBinaryLicenseTracker), <init>/354607583=([com.google.javascript.jscomp.Compiler$SingleBinaryLicenseTracker, com.google.javascript.jscomp.AbstractCompiler], void), cast-from-var2437-to-var844=([com.google.javascript.jscomp.Compiler], com.google.javascript.jscomp.AbstractCompiler), config/-1513802512=([com.google.javascript.jscomp.AbstractCommandLineRunner], com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig), outputWrapper/781817645=([com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig], java.lang.String), jsOutputFile/781817645=([com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig], java.lang.String), writeOutput/774778479=([com.google.javascript.jscomp.AbstractCommandLineRunner, java.lang.Appendable, com.google.javascript.jscomp.Compiler, com.google.javascript.jscomp.CodePrinter$LicenseTracker, com.google.javascript.jscomp.JSChunk, java.lang.String, java.lang.String, com.google.javascript.jscomp.jarjar.com.google.common.base.Function, java.lang.String], void), cast-from-String-to-var2776=([java.lang.StringBuilder], java.lang.Appendable), cast-from-var2886-to-var2454=([com.google.javascript.jscomp.Compiler$SingleBinaryLicenseTracker], com.google.javascript.jscomp.CodePrinter$LicenseTracker), var722-init=([], com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var3639=([java.lang.StringBuilder], java.lang.Object), var380_isNullOrEmpty/1886904788=([java.lang.String], boolean), <init>/-1584588198=([com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec, java.lang.String, java.lang.String], void), shouldGatherSourceMapInfo/-1407838280=([com.google.javascript.jscomp.CompilerOptions], boolean)}
; {var2391=com.google.javascript.jscomp.AbstractCommandLineRunner, var3899=r1, var1975=com.google.javascript.jscomp.CompilerOptions, var2482=r16, var2665=r6, var2799=null_type, var1358=com.google.javascript.jscomp.jarjar.com.google.common.base.Function, var1371=r7, var2991=$r0, var2437=com.google.javascript.jscomp.Compiler, var2322=$r4, var2886=com.google.javascript.jscomp.Compiler$SingleBinaryLicenseTracker, var1237=$r2, var3893=$r3, var844=com.google.javascript.jscomp.AbstractCompiler, var5=com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig, var2340=$r5, var147=$r10, var1736=$r8, var1455=$r9, var2776=java.lang.Appendable, var2454=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var3191=com.google.javascript.jscomp.JSChunk, var1882=null, var722=com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec, var2044=$r11, var3639=java.lang.Object, var143=$r15, var1800=$r12, var239=$r13, var380=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var3680=$z0, var2235=$r14, var3863=$r22, var3488=$z1}
; {com.google.javascript.jscomp.AbstractCommandLineRunner=var2391, r1=var3899, com.google.javascript.jscomp.CompilerOptions=var1975, r16=var2482, r6=var2665, null_type=var2799, com.google.javascript.jscomp.jarjar.com.google.common.base.Function=var1358, r7=var1371, $r0=var2991, com.google.javascript.jscomp.Compiler=var2437, $r4=var2322, com.google.javascript.jscomp.Compiler$SingleBinaryLicenseTracker=var2886, $r2=var1237, $r3=var3893, com.google.javascript.jscomp.AbstractCompiler=var844, com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig=var5, $r5=var2340, $r10=var147, $r8=var1736, $r9=var1455, java.lang.Appendable=var2776, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var2454, com.google.javascript.jscomp.JSChunk=var3191, null=var1882, com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec=var722, $r11=var2044, java.lang.Object=var3639, $r15=var143, $r12=var1800, $r13=var239, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var380, $z0=var3680, $r14=var2235, $r22=var3863, $z1=var3488}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner;	r16 := @parameter0: com.google.javascript.jscomp.CompilerOptions;	r6 := @parameter1: java.lang.String;	r7 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.common.base.Function;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.Compiler compiler>;	$r2 = new com.google.javascript.jscomp.Compiler$SingleBinaryLicenseTracker;	$r3 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.Compiler compiler>;	specialinvoke $r2.<com.google.javascript.jscomp.Compiler$SingleBinaryLicenseTracker: void <init>(com.google.javascript.jscomp.AbstractCompiler)>($r3);	$r5 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r10 = $r5.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String outputWrapper>;	$r8 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r9 = $r8.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String jsOutputFile>;	virtualinvoke r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: void writeOutput(java.lang.Appendable,com.google.javascript.jscomp.Compiler,com.google.javascript.jscomp.CodePrinter$LicenseTracker,com.google.javascript.jscomp.JSChunk,java.lang.String,java.lang.String,com.google.javascript.jscomp.jarjar.com.google.common.base.Function,java.lang.String)>($r0, $r4, $r2, null, $r10, r6, r7, $r9);	$r11 = new com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec;	$r15 = virtualinvoke $r0.<java.lang.Object: java.lang.String toString()>();	$r12 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r13 = $r12.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String jsOutputFile>;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>($r13);	if $z0 == 0 goto $r14 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r14 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r22 = $r14.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String jsOutputFile>;	specialinvoke $r11.<com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec: void <init>(java.lang.String,java.lang.String)>($r15, $r22);	$z1 = virtualinvoke r16.<com.google.javascript.jscomp.CompilerOptions: boolean shouldGatherSourceMapInfo()>();	if $z1 == 0 goto return $r11;	return $r11
;block_num 4