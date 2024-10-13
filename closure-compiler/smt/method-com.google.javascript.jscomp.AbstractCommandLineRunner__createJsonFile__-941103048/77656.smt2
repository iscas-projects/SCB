(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3145 0)
(declare-sort var2769 0)
(declare-sort var686 0)
(declare-sort var311 0)
(declare-sort var153 0)
(declare-sort var138 0)
(declare-sort var1658 0)
(declare-sort var3382 0)
(declare-sort var2766 0)
(declare-sort var1163 0)
(declare-sort var1600 0)
(declare-sort var232 0)
(declare-sort var3851 0)
(declare-sort var1497 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun compiler/-1513802512 (var3145) var153)
(declare-fun var138-init () var138)
(declare-fun <init>/354607583 (var138 var1658) void)
(declare-fun cast-from-var153-to-var1658 (var153) var1658)
(declare-fun config/-1513802512 (var3145) var3382)
(declare-fun outputWrapper/781817645 (var3382) String)
(declare-fun jsOutputFile/781817645 (var3382) String)
(declare-fun writeOutput/774778479 (var3145 var2766 var153 var1163 var1600 String String var311 String) void)
(declare-fun cast-from-String-to-var2766 (String) var2766)
(declare-fun cast-from-var138-to-var1163 (var138) var1163)
(declare-fun var232-init () var232)
(declare-fun toString/-522406933 (var3851) String)
(declare-fun cast-from-String-to-var3851 (String) var3851)
(declare-fun var1497_isNullOrEmpty/1886904788 (String) Bool)
(declare-fun <init>/-1584588198 (var232 String String) void)
(declare-fun shouldGatherSourceMapInfo/-1407838280 (var2769) Bool)
(declare-const null-var3145 var3145)
(declare-const null-var2769 var2769)
(declare-const null-String String)
(declare-const null-var311 var311)
(declare-const null-NullType var686)
(declare-const null-var1600 var1600)
(declare-const var3066 var3145) ; Statement: r1 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner 
(assert (not (= var3066 null-var3145)))
(declare-const var2340 var2769) ; Statement: r16 := @parameter0: com.google.javascript.jscomp.CompilerOptions 
(assert (not (= var2340 null-var2769)))
(declare-const var2443 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var2443 null-String)))
(declare-const var1976 var311) ; Statement: r7 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.common.base.Function 
(assert (not (= var1976 null-var311)))
(define-const var2561 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2561)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2561!1 String)
(assert (= var2561!1 ""))
(define-const var182 var153 (compiler/-1513802512 var3066)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.Compiler compiler> 
(define-const var992 var138 var138-init) ; Statement: $r2 = new com.google.javascript.jscomp.Compiler$SingleBinaryLicenseTracker 
(define-const var302 var153 (compiler/-1513802512 var3066)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.Compiler compiler> 
(assert true)
;(assert (<init>/354607583 var992 (cast-from-var153-to-var1658 var302))) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.Compiler$SingleBinaryLicenseTracker: void <init>(com.google.javascript.jscomp.AbstractCompiler)>($r3) 

(declare-const var992!1 var138)
(declare-const var302!1 var153)
(define-const var1124 var3382 (config/-1513802512 var3066)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var3038 String (outputWrapper/781817645 var1124)) ; Statement: $r10 = $r5.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String outputWrapper> 
(define-const var1911 var3382 (config/-1513802512 var3066)) ; Statement: $r8 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var3225 String (jsOutputFile/781817645 var1911)) ; Statement: $r9 = $r8.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String jsOutputFile> 
(assert true)
;(assert (writeOutput/774778479 var3066 (cast-from-String-to-var2766 var2561!1) var182 (cast-from-var138-to-var1163 var992!1) null-var1600 var3038 var2443 var1976 var3225)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: void writeOutput(java.lang.Appendable,com.google.javascript.jscomp.Compiler,com.google.javascript.jscomp.CodePrinter$LicenseTracker,com.google.javascript.jscomp.JSChunk,java.lang.String,java.lang.String,com.google.javascript.jscomp.jarjar.com.google.common.base.Function,java.lang.String)>($r0, $r4, $r2, null, $r10, r6, r7, $r9) 

(declare-const var3066!1 var3145)
(declare-const var2561!2 String)
(declare-const var182!1 var153)
(declare-const var992!2 var138)
(declare-const var1420 var686)
(declare-const var3038!1 String)
(declare-const var2443!1 String)
(declare-const var1976!1 var311)
(declare-const var3225!1 String)
(define-const var2460 var232 var232-init) ; Statement: $r11 = new com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec 
(assert true)
(define-const var1618 String (toString/-522406933 (cast-from-String-to-var3851 var2561!2))) ; Statement: $r15 = virtualinvoke $r0.<java.lang.Object: java.lang.String toString()>() 
(define-const var39 var3382 (config/-1513802512 var3066!1)) ; Statement: $r12 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var1910 String (jsOutputFile/781817645 var39)) ; Statement: $r13 = $r12.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String jsOutputFile> 
(define-const var2201 Bool (var1497_isNullOrEmpty/1886904788 var1910)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>($r13) 
 ; Statement: if $z0 == 0 goto $r14 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(assert (not (= (ite var2201 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var192 String "compiled.js") ; Statement: $r22 = "compiled.js" 
 ; Statement: goto [?= specialinvoke $r11.<com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec: void <init>(java.lang.String,java.lang.String)>($r15, $r22)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1584588198 var2460 var1618 var192)) ; Statement: specialinvoke $r11.<com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec: void <init>(java.lang.String,java.lang.String)>($r15, $r22) 

(declare-const var2460!1 var232)
(declare-const var1618!1 String)
(declare-const var192!1 String)
(assert true)
(define-const var1255 Bool (shouldGatherSourceMapInfo/-1407838280 var2340)) ; Statement: $z1 = virtualinvoke r16.<com.google.javascript.jscomp.CompilerOptions: boolean shouldGatherSourceMapInfo()>() 
 ; Statement: if $z1 == 0 goto return $r11 
(assert (= (ite var1255 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), compiler/-1513802512=([com.google.javascript.jscomp.AbstractCommandLineRunner], com.google.javascript.jscomp.Compiler), var138-init=([], com.google.javascript.jscomp.Compiler$SingleBinaryLicenseTracker), <init>/354607583=([com.google.javascript.jscomp.Compiler$SingleBinaryLicenseTracker, com.google.javascript.jscomp.AbstractCompiler], void), cast-from-var153-to-var1658=([com.google.javascript.jscomp.Compiler], com.google.javascript.jscomp.AbstractCompiler), config/-1513802512=([com.google.javascript.jscomp.AbstractCommandLineRunner], com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig), outputWrapper/781817645=([com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig], java.lang.String), jsOutputFile/781817645=([com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig], java.lang.String), writeOutput/774778479=([com.google.javascript.jscomp.AbstractCommandLineRunner, java.lang.Appendable, com.google.javascript.jscomp.Compiler, com.google.javascript.jscomp.CodePrinter$LicenseTracker, com.google.javascript.jscomp.JSChunk, java.lang.String, java.lang.String, com.google.javascript.jscomp.jarjar.com.google.common.base.Function, java.lang.String], void), cast-from-String-to-var2766=([java.lang.StringBuilder], java.lang.Appendable), cast-from-var138-to-var1163=([com.google.javascript.jscomp.Compiler$SingleBinaryLicenseTracker], com.google.javascript.jscomp.CodePrinter$LicenseTracker), var232-init=([], com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var3851=([java.lang.StringBuilder], java.lang.Object), var1497_isNullOrEmpty/1886904788=([java.lang.String], boolean), <init>/-1584588198=([com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec, java.lang.String, java.lang.String], void), shouldGatherSourceMapInfo/-1407838280=([com.google.javascript.jscomp.CompilerOptions], boolean)}
; {var3145=com.google.javascript.jscomp.AbstractCommandLineRunner, var3066=r1, var2769=com.google.javascript.jscomp.CompilerOptions, var2340=r16, var2443=r6, var686=null_type, var311=com.google.javascript.jscomp.jarjar.com.google.common.base.Function, var1976=r7, var2561=$r0, var153=com.google.javascript.jscomp.Compiler, var182=$r4, var138=com.google.javascript.jscomp.Compiler$SingleBinaryLicenseTracker, var992=$r2, var302=$r3, var1658=com.google.javascript.jscomp.AbstractCompiler, var3382=com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig, var1124=$r5, var3038=$r10, var1911=$r8, var3225=$r9, var2766=java.lang.Appendable, var1163=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var1600=com.google.javascript.jscomp.JSChunk, var1420=null, var232=com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec, var2460=$r11, var3851=java.lang.Object, var1618=$r15, var39=$r12, var1910=$r13, var1497=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var2201=$z0, var192=$r22, var1255=$z1}
; {com.google.javascript.jscomp.AbstractCommandLineRunner=var3145, r1=var3066, com.google.javascript.jscomp.CompilerOptions=var2769, r16=var2340, r6=var2443, null_type=var686, com.google.javascript.jscomp.jarjar.com.google.common.base.Function=var311, r7=var1976, $r0=var2561, com.google.javascript.jscomp.Compiler=var153, $r4=var182, com.google.javascript.jscomp.Compiler$SingleBinaryLicenseTracker=var138, $r2=var992, $r3=var302, com.google.javascript.jscomp.AbstractCompiler=var1658, com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig=var3382, $r5=var1124, $r10=var3038, $r8=var1911, $r9=var3225, java.lang.Appendable=var2766, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var1163, com.google.javascript.jscomp.JSChunk=var1600, null=var1420, com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec=var232, $r11=var2460, java.lang.Object=var3851, $r15=var1618, $r12=var39, $r13=var1910, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var1497, $z0=var2201, $r22=var192, $z1=var1255}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner;	r16 := @parameter0: com.google.javascript.jscomp.CompilerOptions;	r6 := @parameter1: java.lang.String;	r7 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.common.base.Function;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.Compiler compiler>;	$r2 = new com.google.javascript.jscomp.Compiler$SingleBinaryLicenseTracker;	$r3 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.Compiler compiler>;	specialinvoke $r2.<com.google.javascript.jscomp.Compiler$SingleBinaryLicenseTracker: void <init>(com.google.javascript.jscomp.AbstractCompiler)>($r3);	$r5 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r10 = $r5.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String outputWrapper>;	$r8 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r9 = $r8.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String jsOutputFile>;	virtualinvoke r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: void writeOutput(java.lang.Appendable,com.google.javascript.jscomp.Compiler,com.google.javascript.jscomp.CodePrinter$LicenseTracker,com.google.javascript.jscomp.JSChunk,java.lang.String,java.lang.String,com.google.javascript.jscomp.jarjar.com.google.common.base.Function,java.lang.String)>($r0, $r4, $r2, null, $r10, r6, r7, $r9);	$r11 = new com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec;	$r15 = virtualinvoke $r0.<java.lang.Object: java.lang.String toString()>();	$r12 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r13 = $r12.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String jsOutputFile>;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>($r13);	if $z0 == 0 goto $r14 = r1.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r22 = "compiled.js";	goto [?= specialinvoke $r11.<com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec: void <init>(java.lang.String,java.lang.String)>($r15, $r22)];	specialinvoke $r11.<com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec: void <init>(java.lang.String,java.lang.String)>($r15, $r22);	$z1 = virtualinvoke r16.<com.google.javascript.jscomp.CompilerOptions: boolean shouldGatherSourceMapInfo()>();	if $z1 == 0 goto return $r11;	return $r11
;block_num 4