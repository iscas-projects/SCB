(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var307 0)
(declare-sort var620 0)
(declare-sort var921 0)
(declare-sort var3448 0)
(declare-sort var1859 0)
(declare-sort var2358 0)
(declare-sort var569 0)
(declare-sort var484 0)
(declare-sort var1486 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var620_getOptions/298379990 () var307)
(declare-fun var307_put/1464166817 (var307 var3448 var3448) var3448)
(declare-fun cast-from-String-to-var3448 (String) var3448)
(declare-fun var1859-init () var1859)
(declare-fun var2358_getJJTreeOutputDirectory/-709711143 () var1859)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var1859 var1859 String) void)
(declare-fun getAbsolutePath/-802773300 (var1859) String)
(declare-fun var569-init () var569)
(declare-fun <init>/-1681595970 (var1859 String) void)
(declare-fun arr-String-init () (Array Int String))
(declare-fun <init>/-19591195 (var569 var1859 String (Array Int String)) void)
(declare-fun var1486_generateFile/-77302273 (var569 String var307) void)
(declare-const var921-parserName String)
(declare-const var484-JJTStateVersion String)
(define-const var1890 var307 var620_getOptions/298379990) ; Statement: r0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.util.Map getOptions()>() 
(define-const var376 String var921-parserName) ; Statement: $r1 = <org.javacc.jjtree.JJTreeGlobals: java.lang.String parserName> 
;(assert (var307_put/1464166817 var1890 (cast-from-String-to-var3448 "PARSER_NAME") (cast-from-String-to-var3448 var376))) ; Statement: interfaceinvoke r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("PARSER_NAME", $r1) 

(declare-const var1890!1 var307)
(declare-const var2623 String)
(declare-const var376!1 String)
(define-const var1724 var1859 var1859-init) ; Statement: $r2 = new java.io.File 
(define-const var459 var1859 var2358_getJJTreeOutputDirectory/-709711143) ; Statement: $r9 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>() 
(define-const var2376 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2376)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2376!1 String)
(assert (= var2376!1 ""))
(assert true)
(define-const var680 String (append/672562846 var2376!1 "JJT")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JJT") 
(declare-const var2376!2 String)
(assert (= var2376!2 (str.++ var2376!1 "JJT")))
(define-const var1803 String var921-parserName) ; Statement: $r4 = <org.javacc.jjtree.JJTreeGlobals: java.lang.String parserName> 
(assert true)
(define-const var147 String (append/672562846 var680 var1803)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var680!1 String)
(assert (= var680!1 (str.++ var680 var1803)))
(assert true)
(define-const var729 String (append/672562846 var147 "State")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("State") 
(declare-const var147!1 String)
(assert (= var147!1 (str.++ var147 "State")))
(assert true)
(define-const var1404 String (toString/-2075883882 var729)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var1724 var459 var1404)) ; Statement: specialinvoke $r2.<java.io.File: void <init>(java.io.File,java.lang.String)>($r9, $r8) 

(declare-const var1724!1 var1859)
(declare-const var459!1 var1859)
(declare-const var1404!1 String)
(assert true)
(define-const var2307 String (getAbsolutePath/-802773300 var1724!1)) ; Statement: r10 = virtualinvoke $r2.<java.io.File: java.lang.String getAbsolutePath()>() 
(define-const var175 var569 var569-init) ; Statement: $r11 = new org.javacc.parser.OutputFile 
(define-const var2268 var1859 var1859-init) ; Statement: $r12 = new java.io.File 
(define-const var2542 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2542)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2542!1 String)
(assert (= var2542!1 ""))
(assert true)
(define-const var2159 String (append/672562846 var2542!1 var2307)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var2542!2 String)
(assert (= var2542!2 (str.++ var2542!1 var2307)))
(assert true)
(define-const var444 String (append/672562846 var2159 ".h")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".h") 
(declare-const var2159!1 String)
(assert (= var2159!1 (str.++ var2159 ".h")))
(assert true)
(define-const var1075 String (toString/-2075883882 var444)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1681595970 var2268 var1075)) ; Statement: specialinvoke $r12.<java.io.File: void <init>(java.lang.String)>($r16) 

(declare-const var2268!1 var1859)
(declare-const var1075!1 String)
(define-const var2222 String var484-JJTStateVersion) ; Statement: $r18 = <org.javacc.jjtree.CPPJJTreeState: java.lang.String JJTStateVersion> 
(define-const var1278 (Array Int String) arr-String-init) ; Statement: $r17 = newarray (java.lang.String)[0] 
(assert true)
;(assert (<init>/-19591195 var175 var2268!1 var2222 var1278)) ; Statement: specialinvoke $r11.<org.javacc.parser.OutputFile: void <init>(java.io.File,java.lang.String,java.lang.String[])>($r12, $r18, $r17) 

(declare-const var175!1 var569)
(declare-const var2268!2 var1859)
(declare-const var2222!1 String)
(declare-const var1278!1 (Array Int String))
;(assert (var1486_generateFile/-77302273 var175!1 "/templates/cpp/JJTTreeState.h.template" var1890!1)) ; Statement: staticinvoke <org.javacc.jjtree.CPPNodeFiles: void generateFile(org.javacc.parser.OutputFile,java.lang.String,java.util.Map)>($r11, "/templates/cpp/JJTTreeState.h.template", r0) 

(declare-const var175!2 var569)
(declare-const var3048 String)
(declare-const var1890!2 var307)
(define-const var2010 var569 var569-init) ; Statement: $r19 = new org.javacc.parser.OutputFile 
(define-const var370 var1859 var1859-init) ; Statement: $r20 = new java.io.File 
(define-const var2171 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2171)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2171!1 String)
(assert (= var2171!1 ""))
(assert true)
(define-const var2270 String (append/672562846 var2171!1 var2307)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var2171!2 String)
(assert (= var2171!2 (str.++ var2171!1 var2307)))
(assert true)
(define-const var1122 String (append/672562846 var2270 ".cc")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".cc") 
(declare-const var2270!1 String)
(assert (= var2270!1 (str.++ var2270 ".cc")))
(assert true)
(define-const var2796 String (toString/-2075883882 var1122)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1681595970 var370 var2796)) ; Statement: specialinvoke $r20.<java.io.File: void <init>(java.lang.String)>($r24) 

(declare-const var370!1 var1859)
(declare-const var2796!1 String)
(define-const var3510 String var484-JJTStateVersion) ; Statement: $r26 = <org.javacc.jjtree.CPPJJTreeState: java.lang.String JJTStateVersion> 
(define-const var2333 (Array Int String) arr-String-init) ; Statement: $r25 = newarray (java.lang.String)[0] 
(assert true)
;(assert (<init>/-19591195 var2010 var370!1 var3510 var2333)) ; Statement: specialinvoke $r19.<org.javacc.parser.OutputFile: void <init>(java.io.File,java.lang.String,java.lang.String[])>($r20, $r26, $r25) 

(declare-const var2010!1 var569)
(declare-const var370!2 var1859)
(declare-const var3510!1 String)
(declare-const var2333!1 (Array Int String))
;(assert (var1486_generateFile/-77302273 var2010!1 "/templates/cpp/JJTTreeState.cc.template" var1890!2)) ; Statement: staticinvoke <org.javacc.jjtree.CPPNodeFiles: void generateFile(org.javacc.parser.OutputFile,java.lang.String,java.util.Map)>($r19, "/templates/cpp/JJTTreeState.cc.template", r0) 

(declare-const var2010!2 var569)
(declare-const var998 String)
(declare-const var1890!3 var307)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var620_getOptions/298379990=([], java.util.Map), var307_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var3448=([java.lang.String], java.lang.Object), var1859-init=([], java.io.File), var2358_getJJTreeOutputDirectory/-709711143=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), getAbsolutePath/-802773300=([java.io.File], java.lang.String), var569-init=([], org.javacc.parser.OutputFile), <init>/-1681595970=([java.io.File, java.lang.String], void), arr-String-init=([], java.lang.String[]), <init>/-19591195=([org.javacc.parser.OutputFile, java.io.File, java.lang.String, java.lang.String[]], void), var1486_generateFile/-77302273=([org.javacc.parser.OutputFile, java.lang.String, java.util.Map], void)}
; {var307=java.util.Map, var620=org.javacc.parser.Options, var1890=r0, var921=org.javacc.jjtree.JJTreeGlobals, var376=$r1, var3448=java.lang.Object, var2623="PARSER_NAME", var1859=java.io.File, var1724=$r2, var2358=org.javacc.jjtree.JJTreeOptions, var459=$r9, var2376=$r3, var680=$r5, var1803=$r4, var147=$r6, var729=$r7, var1404=$r8, var2307=r10, var569=org.javacc.parser.OutputFile, var175=$r11, var2268=$r12, var2542=$r13, var2159=$r14, var444=$r15, var1075=$r16, var484=org.javacc.jjtree.CPPJJTreeState, var2222=$r18, var1278=$r17, var1486=org.javacc.jjtree.CPPNodeFiles, var3048="/templates/cpp/JJTTreeState.h.template", var2010=$r19, var370=$r20, var2171=$r21, var2270=$r22, var1122=$r23, var2796=$r24, var3510=$r26, var2333=$r25, var998="/templates/cpp/JJTTreeState.cc.template"}
; {java.util.Map=var307, org.javacc.parser.Options=var620, r0=var1890, org.javacc.jjtree.JJTreeGlobals=var921, $r1=var376, java.lang.Object=var3448, "PARSER_NAME"=var2623, java.io.File=var1859, $r2=var1724, org.javacc.jjtree.JJTreeOptions=var2358, $r9=var459, $r3=var2376, $r5=var680, $r4=var1803, $r6=var147, $r7=var729, $r8=var1404, r10=var2307, org.javacc.parser.OutputFile=var569, $r11=var175, $r12=var2268, $r13=var2542, $r14=var2159, $r15=var444, $r16=var1075, org.javacc.jjtree.CPPJJTreeState=var484, $r18=var2222, $r17=var1278, org.javacc.jjtree.CPPNodeFiles=var1486, "/templates/cpp/JJTTreeState.h.template"=var3048, $r19=var2010, $r20=var370, $r21=var2171, $r22=var2270, $r23=var1122, $r24=var2796, $r26=var3510, $r25=var2333, "/templates/cpp/JJTTreeState.cc.template"=var998}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.util.Map getOptions()>();	$r1 = <org.javacc.jjtree.JJTreeGlobals: java.lang.String parserName>;	interfaceinvoke r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("PARSER_NAME", $r1);	$r2 = new java.io.File;	$r9 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JJT");	$r4 = <org.javacc.jjtree.JJTreeGlobals: java.lang.String parserName>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("State");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.io.File: void <init>(java.io.File,java.lang.String)>($r9, $r8);	r10 = virtualinvoke $r2.<java.io.File: java.lang.String getAbsolutePath()>();	$r11 = new org.javacc.parser.OutputFile;	$r12 = new java.io.File;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".h");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.io.File: void <init>(java.lang.String)>($r16);	$r18 = <org.javacc.jjtree.CPPJJTreeState: java.lang.String JJTStateVersion>;	$r17 = newarray (java.lang.String)[0];	specialinvoke $r11.<org.javacc.parser.OutputFile: void <init>(java.io.File,java.lang.String,java.lang.String[])>($r12, $r18, $r17);	staticinvoke <org.javacc.jjtree.CPPNodeFiles: void generateFile(org.javacc.parser.OutputFile,java.lang.String,java.util.Map)>($r11, "/templates/cpp/JJTTreeState.h.template", r0);	$r19 = new org.javacc.parser.OutputFile;	$r20 = new java.io.File;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".cc");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<java.io.File: void <init>(java.lang.String)>($r24);	$r26 = <org.javacc.jjtree.CPPJJTreeState: java.lang.String JJTStateVersion>;	$r25 = newarray (java.lang.String)[0];	specialinvoke $r19.<org.javacc.parser.OutputFile: void <init>(java.io.File,java.lang.String,java.lang.String[])>($r20, $r26, $r25);	staticinvoke <org.javacc.jjtree.CPPNodeFiles: void generateFile(org.javacc.parser.OutputFile,java.lang.String,java.util.Map)>($r19, "/templates/cpp/JJTTreeState.cc.template", r0);	return
;block_num 1