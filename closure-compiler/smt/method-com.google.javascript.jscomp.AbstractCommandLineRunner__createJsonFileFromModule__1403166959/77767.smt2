(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3011 0)
(declare-sort var1803 0)
(declare-sort var1149 0)
(declare-sort var2112 0)
(declare-sort var754 0)
(declare-sort var3748 0)
(declare-sort var1558 0)
(declare-sort var1695 0)
(declare-sort var3941 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun compiler/-1513802512 (var3011) var1149)
(declare-fun resetAndIntitializeSourceMap/1530818792 (var1149) void)
(declare-fun getChunkOutputFileName/-1891649860 (var3011 var1803) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2112-init () var2112)
(declare-fun <init>/1567354618 (var2112 var754) void)
(declare-fun cast-from-var1149-to-var754 (var1149) var754)
(declare-fun writeModuleOutput/1458759728 (var3011 String var3748 var1558 var1803) void)
(declare-fun cast-from-String-to-var3748 (String) var3748)
(declare-fun cast-from-var2112-to-var1558 (var2112) var1558)
(declare-fun var1695-init () var1695)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1584588198 (var1695 String String) void)
(declare-fun getSourceMap/-1730284996 (var1149) var3941)
(declare-fun appendTo/-1846220303 (var3941 var3748 String) void)
(declare-fun setSourceMap/2351988 (var1695 String) void)
(declare-const null-var3011 var3011)
(declare-const null-var1803 var1803)
(declare-const var363 var3011) ; Statement: r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner 
(assert (not (= var363 null-var3011)))
(declare-const var770 var1803) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.JSChunk 
(assert (not (= var770 null-var1803)))
(define-const var2068 var1149 (compiler/-1513802512 var363)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.Compiler compiler> 
(assert true)
;(assert (resetAndIntitializeSourceMap/1530818792 var2068)) ; Statement: virtualinvoke $r1.<com.google.javascript.jscomp.Compiler: void resetAndIntitializeSourceMap()>() 

(declare-const var2068!1 var1149)
(assert true)
(define-const var2338 String (getChunkOutputFileName/-1891649860 var363 var770)) ; Statement: r3 = virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.lang.String getChunkOutputFileName(com.google.javascript.jscomp.JSChunk)>(r2) 
(define-const var493 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var493)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var493!1 String)
(assert (= var493!1 ""))
(define-const var743 var2112 var2112-init) ; Statement: $r5 = new com.google.javascript.jscomp.Compiler$ScriptNodeLicensesOnlyTracker 
(define-const var1998 var1149 (compiler/-1513802512 var363)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.Compiler compiler> 
(assert true)
;(assert (<init>/1567354618 var743 (cast-from-var1149-to-var754 var1998))) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.Compiler$ScriptNodeLicensesOnlyTracker: void <init>(com.google.javascript.jscomp.AbstractCompiler)>($r6) 

(declare-const var743!1 var2112)
(declare-const var1998!1 var1149)
(assert true)
;(assert (writeModuleOutput/1458759728 var363 var2338 (cast-from-String-to-var3748 var493!1) (cast-from-var2112-to-var1558 var743!1) var770)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: void writeModuleOutput(java.lang.String,java.lang.Appendable,com.google.javascript.jscomp.CodePrinter$LicenseTracker,com.google.javascript.jscomp.JSChunk)>(r3, $r4, $r5, r2) 

(declare-const var363!1 var3011)
(declare-const var2338!1 String)
(declare-const var493!2 String)
(declare-const var743!2 var2112)
(declare-const var770!1 var1803)
(define-const var193 var1695 var1695-init) ; Statement: $r7 = new com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec 
(assert true)
(define-const var419 String (toString/-2075883882 var493!2)) ; Statement: $r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1584588198 var193 var419 var2338!1)) ; Statement: specialinvoke $r7.<com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec: void <init>(java.lang.String,java.lang.String)>($r8, r3) 

(declare-const var193!1 var1695)
(declare-const var419!1 String)
(declare-const var2338!2 String)
(define-const var1379 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1379)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1379!1 String)
(assert (= var1379!1 ""))
(define-const var2740 var1149 (compiler/-1513802512 var363!1)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.Compiler compiler> 
(assert true)
(define-const var2398 var3941 (getSourceMap/-1730284996 var2740)) ; Statement: $r12 = virtualinvoke $r10.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.SourceMap getSourceMap()>() 
(assert true)
(define-const var3586 String (getChunkOutputFileName/-1891649860 var363!1 var770!1)) ; Statement: $r11 = virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.lang.String getChunkOutputFileName(com.google.javascript.jscomp.JSChunk)>(r2) 
(assert true)
;(assert (appendTo/-1846220303 var2398 (cast-from-String-to-var3748 var1379!1) var3586)) ; Statement: virtualinvoke $r12.<com.google.javascript.jscomp.SourceMap: void appendTo(java.lang.Appendable,java.lang.String)>($r9, $r11) 

(declare-const var2398!1 var3941)
(declare-const var1379!2 String)
(declare-const var3586!1 String)
(assert true)
(define-const var2161 String (toString/-2075883882 var1379!2)) ; Statement: $r13 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setSourceMap/2351988 var193!1 var2161)) ; Statement: virtualinvoke $r7.<com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec: void setSourceMap(java.lang.String)>($r13) 

(declare-const var193!2 var1695)
(declare-const var2161!1 String)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {compiler/-1513802512=([com.google.javascript.jscomp.AbstractCommandLineRunner], com.google.javascript.jscomp.Compiler), resetAndIntitializeSourceMap/1530818792=([com.google.javascript.jscomp.Compiler], void), getChunkOutputFileName/-1891649860=([com.google.javascript.jscomp.AbstractCommandLineRunner, com.google.javascript.jscomp.JSChunk], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2112-init=([], com.google.javascript.jscomp.Compiler$ScriptNodeLicensesOnlyTracker), <init>/1567354618=([com.google.javascript.jscomp.Compiler$ScriptNodeLicensesOnlyTracker, com.google.javascript.jscomp.AbstractCompiler], void), cast-from-var1149-to-var754=([com.google.javascript.jscomp.Compiler], com.google.javascript.jscomp.AbstractCompiler), writeModuleOutput/1458759728=([com.google.javascript.jscomp.AbstractCommandLineRunner, java.lang.String, java.lang.Appendable, com.google.javascript.jscomp.CodePrinter$LicenseTracker, com.google.javascript.jscomp.JSChunk], void), cast-from-String-to-var3748=([java.lang.StringBuilder], java.lang.Appendable), cast-from-var2112-to-var1558=([com.google.javascript.jscomp.Compiler$ScriptNodeLicensesOnlyTracker], com.google.javascript.jscomp.CodePrinter$LicenseTracker), var1695-init=([], com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1584588198=([com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec, java.lang.String, java.lang.String], void), getSourceMap/-1730284996=([com.google.javascript.jscomp.Compiler], com.google.javascript.jscomp.SourceMap), appendTo/-1846220303=([com.google.javascript.jscomp.SourceMap, java.lang.Appendable, java.lang.String], void), setSourceMap/2351988=([com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec, java.lang.String], void)}
; {var3011=com.google.javascript.jscomp.AbstractCommandLineRunner, var363=r0, var1803=com.google.javascript.jscomp.JSChunk, var770=r2, var1149=com.google.javascript.jscomp.Compiler, var2068=$r1, var2338=r3, var493=$r4, var2112=com.google.javascript.jscomp.Compiler$ScriptNodeLicensesOnlyTracker, var743=$r5, var1998=$r6, var754=com.google.javascript.jscomp.AbstractCompiler, var3748=java.lang.Appendable, var1558=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var1695=com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec, var193=$r7, var419=$r8, var1379=$r9, var2740=$r10, var3941=com.google.javascript.jscomp.SourceMap, var2398=$r12, var3586=$r11, var2161=$r13}
; {com.google.javascript.jscomp.AbstractCommandLineRunner=var3011, r0=var363, com.google.javascript.jscomp.JSChunk=var1803, r2=var770, com.google.javascript.jscomp.Compiler=var1149, $r1=var2068, r3=var2338, $r4=var493, com.google.javascript.jscomp.Compiler$ScriptNodeLicensesOnlyTracker=var2112, $r5=var743, $r6=var1998, com.google.javascript.jscomp.AbstractCompiler=var754, java.lang.Appendable=var3748, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var1558, com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec=var1695, $r7=var193, $r8=var419, $r9=var1379, $r10=var2740, com.google.javascript.jscomp.SourceMap=var3941, $r12=var2398, $r11=var3586, $r13=var2161}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner;	r2 := @parameter0: com.google.javascript.jscomp.JSChunk;	$r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.Compiler compiler>;	virtualinvoke $r1.<com.google.javascript.jscomp.Compiler: void resetAndIntitializeSourceMap()>();	r3 = virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.lang.String getChunkOutputFileName(com.google.javascript.jscomp.JSChunk)>(r2);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = new com.google.javascript.jscomp.Compiler$ScriptNodeLicensesOnlyTracker;	$r6 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.Compiler compiler>;	specialinvoke $r5.<com.google.javascript.jscomp.Compiler$ScriptNodeLicensesOnlyTracker: void <init>(com.google.javascript.jscomp.AbstractCompiler)>($r6);	virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: void writeModuleOutput(java.lang.String,java.lang.Appendable,com.google.javascript.jscomp.CodePrinter$LicenseTracker,com.google.javascript.jscomp.JSChunk)>(r3, $r4, $r5, r2);	$r7 = new com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec;	$r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec: void <init>(java.lang.String,java.lang.String)>($r8, r3);	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.Compiler compiler>;	$r12 = virtualinvoke $r10.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.SourceMap getSourceMap()>();	$r11 = virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.lang.String getChunkOutputFileName(com.google.javascript.jscomp.JSChunk)>(r2);	virtualinvoke $r12.<com.google.javascript.jscomp.SourceMap: void appendTo(java.lang.Appendable,java.lang.String)>($r9, $r11);	$r13 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r7.<com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec: void setSourceMap(java.lang.String)>($r13);	return $r7
;block_num 1