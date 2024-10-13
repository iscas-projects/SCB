(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1065 0)
(declare-sort var1110 0)
(declare-sort var964 0)
(declare-sort var1544 0)
(declare-sort var2680 0)
(declare-sort var1832 0)
(declare-sort var1154 0)
(declare-sort var1728 0)
(declare-sort var862 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1110-init () var1110)
(declare-fun <init>/2032108350 (var1110 var2680) void)
(declare-fun cast-from-var964-to-var2680 (var964) var2680)
(declare-fun var964_add/328494887 (var964 var1832) Bool)
(declare-fun cast-from-var1110-to-var964 (var1110) var964)
(declare-fun cast-from-String-to-var1832 (String) var1832)
(declare-fun arr-var1832-init () (Array Int var1832))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1154_getOutputLanguage/-1523304050 () String)
(declare-fun var1544_getFileExtension/107811045 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1544_getIdString/-267384014 (var964 String) String)
(declare-fun genCodeLine/787715242 (var1728 (Array Int var1832)) void)
(declare-fun cast-from-var1065-to-var1728 (var1065) var1728)
(declare-fun var964_size/-959786421 (var964) Int)
(declare-fun var1154_getSupportClassVisibilityPublic/-2103335562 () Bool)
(declare-fun arr-String-init () (Array Int String))
(declare-fun genClassStart/-340144662 (var1728 String String (Array Int String) (Array Int String)) void)
(declare-fun var1154_getCommonTokenAction/1405754524 () Bool)
(declare-fun var1154_getTokenManagerUsesParser/1619871963 () Bool)
(declare-const null-var1065 var1065)
(declare-const var1544-toolNames var964)
(declare-const var1065-tokMgrClassName String)
(declare-const null-__Array__Int__var1832__ (Array Int var1832))
(declare-const var1544-cu_to_insertion_point_1 var964)
(declare-const var1544-cu_name String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-NullType var862)
(declare-const null-String String)
(declare-const var1544-token_mgr_decls var964)
(declare-const null-var964 var964)
(declare-const var1065-staticString String)
(declare-const var1855 var1065) ; Statement: r2 := @this: org.javacc.parser.LexGen 
(assert (not (= var1855 null-var1065)))
(define-const var44 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var2150 var1110 var1110-init) ; Statement: $r0 = new java.util.ArrayList 
(define-const var1742 var964 var1544-toolNames) ; Statement: $r1 = <org.javacc.parser.JavaCCGlobals: java.util.List toolNames> 
(assert true)
;(assert (<init>/2032108350 var2150 (cast-from-var964-to-var2680 var1742))) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>(java.util.Collection)>($r1) 

(declare-const var2150!1 var1110)
(declare-const var1742!1 var964)
;(assert (var964_add/328494887 (cast-from-var1110-to-var964 var2150!1) (cast-from-String-to-var1832 "JavaCC"))) ; Statement: interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>("JavaCC") 

(declare-const var2150!2 var1110)
(declare-const var2501 String)
(define-const var1093 (Array Int var1832) arr-var1832-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(define-const var1765 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1765)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1765!1 String)
(assert (= var1765!1 ""))
(assert true)
(define-const var1136 String (append/672562846 var1765!1 "/* ")) ; Statement: $r13 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/* ") 
(declare-const var1765!2 String)
(assert (= var1765!2 (str.++ var1765!1 "/* ")))
(define-const var1977 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1977)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1977!1 String)
(assert (= var1977!1 ""))
(define-const var1113 String var1065-tokMgrClassName) ; Statement: $r6 = <org.javacc.parser.LexGen: java.lang.String tokMgrClassName> 
(assert true)
(define-const var3858 String (append/672562846 var1977!1 var1113)) ; Statement: $r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1977!2 String)
(assert (= var1977!2 (str.++ var1977!1 var1113)))
(define-const var308 String var1154_getOutputLanguage/-1523304050) ; Statement: $r7 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(define-const var1000 String (var1544_getFileExtension/107811045 var308)) ; Statement: $r8 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String getFileExtension(java.lang.String)>($r7) 
(assert true)
(define-const var573 String (append/672562846 var3858 var1000)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3858!1 String)
(assert (= var3858!1 (str.++ var3858 var1000)))
(assert true)
(define-const var2973 String (toString/-2075883882 var573)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3082 String (var1544_getIdString/-267384014 (cast-from-var1110-to-var964 var2150!2) var2973)) ; Statement: $r12 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String getIdString(java.util.List,java.lang.String)>($r0, $r11) 
(assert true)
(define-const var2306 String (append/672562846 var1136 var3082)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1136!1 String)
(assert (= var1136!1 (str.++ var1136 var3082)))
(assert true)
(define-const var1156 String (append/672562846 var2306 " */")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" */") 
(declare-const var2306!1 String)
(assert (= var2306!1 (str.++ var2306 " */")))
(assert true)
(define-const var853 String (toString/-2075883882 var1156)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1093!1 (Array Int var1832))
(assert (not (= var1093!1 null-__Array__Int__var1832__)))
(assert (= (select var1093!1 0) (cast-from-String-to-var1832 var853))) ; Statement: $r3[0] = $r16 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1065-to-var1728 var1855) var1093!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r3) 

(declare-const var1855!1 var1065)
(declare-const var1093!2 (Array Int var1832))
(define-const var3076 Int 0) ; Statement: i4 = 0 
(define-const var1167 Int 1) ; Statement: i5 = 1 
(assert true) ; Non Conditional
(define-const var85 var964 var1544-cu_to_insertion_point_1) ; Statement: $r17 = <org.javacc.parser.JavaCCGlobals: java.util.List cu_to_insertion_point_1> 
(define-const var3139 Int (var964_size/-959786421 var85)) ; Statement: $i0 = interfaceinvoke $r17.<java.util.List: int size()>() 
 ; Statement: if $i0 > i4 goto $r18 = <org.javacc.parser.JavaCCGlobals: java.util.List cu_to_insertion_point_1> 
(assert (not (> var3139 var3076))) ; Negate: Cond: $i0 > i4  
 ; Statement: goto [?= $r31 = newarray (java.lang.Object)[1]] 
(assert true) ; Non Conditional
(define-const var610 (Array Int var1832) arr-var1832-init) ; Statement: $r31 = newarray (java.lang.Object)[1] 
(declare-const var610!1 (Array Int var1832))
(assert (not (= var610!1 null-__Array__Int__var1832__)))
(assert (= (select var610!1 0) (cast-from-String-to-var1832 ""))) ; Statement: $r31[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1065-to-var1728 var1855!1) var610!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r31) 

(declare-const var1855!2 var1065)
(declare-const var610!2 (Array Int var1832))
(define-const var890 (Array Int var1832) arr-var1832-init) ; Statement: $r32 = newarray (java.lang.Object)[1] 
(declare-const var890!1 (Array Int var1832))
(assert (not (= var890!1 null-__Array__Int__var1832__)))
(assert (= (select var890!1 0) (cast-from-String-to-var1832 "/** Token Manager. */"))) ; Statement: $r32[0] = "/** Token Manager. */" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1065-to-var1728 var1855!2) var890!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r32) 

(declare-const var1855!3 var1065)
(declare-const var890!2 (Array Int var1832))
 ; Statement: if z3 == 0 goto $z4 = staticinvoke <org.javacc.parser.Options: boolean getSupportClassVisibilityPublic()>() 
(assert (= (ite var44 1 0) 0)) ; Cond: z3 == 0 
(define-const var1787 Bool var1154_getSupportClassVisibilityPublic/-2103335562) ; Statement: $z4 = staticinvoke <org.javacc.parser.Options: boolean getSupportClassVisibilityPublic()>() 
 ; Statement: if $z4 == 0 goto $r35 = <org.javacc.parser.LexGen: java.lang.String tokMgrClassName> 
(assert (= (ite var1787 1 0) 0)) ; Cond: $z4 == 0 
(define-const var2153 String var1065-tokMgrClassName) ; Statement: $r35 = <org.javacc.parser.LexGen: java.lang.String tokMgrClassName> 
(define-const var373 (Array Int String) arr-String-init) ; Statement: $r40 = newarray (java.lang.String)[0] 
(define-const var3612 (Array Int String) arr-String-init) ; Statement: $r33 = newarray (java.lang.String)[1] 
(define-const var3222 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3222)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3222!1 String)
(assert (= var3222!1 ""))
(define-const var407 String var1544-cu_name) ; Statement: $r36 = <org.javacc.parser.JavaCCGlobals: java.lang.String cu_name> 
(assert true)
(define-const var1600 String (append/672562846 var3222!1 var407)) ; Statement: $r37 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36) 
(declare-const var3222!2 String)
(assert (= var3222!2 (str.++ var3222!1 var407)))
(assert true)
(define-const var203 String (append/672562846 var1600 "Constants")) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Constants") 
(declare-const var1600!1 String)
(assert (= var1600!1 (str.++ var1600 "Constants")))
(assert true)
(define-const var2017 String (toString/-2075883882 var203)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3612!1 (Array Int String))
(assert (not (= var3612!1 null-__Array__Int__String__)))
(assert (= (select var3612!1 0) var2017)) ; Statement: $r33[0] = $r39 
(assert true)
;(assert (genClassStart/-340144662 (cast-from-var1065-to-var1728 var1855!3) null-String var2153 var373 var3612!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGen: void genClassStart(java.lang.String,java.lang.String,java.lang.String[],java.lang.String[])>(null, $r35, $r40, $r33) 

(declare-const var1855!4 var1065)
(declare-const var1891 var862)
(declare-const var2153!1 String)
(declare-const var373!1 (Array Int String))
(declare-const var3612!2 (Array Int String))
(define-const var2670 var964 var1544-token_mgr_decls) ; Statement: $r41 = <org.javacc.parser.JavaCCGlobals: java.util.List token_mgr_decls> 
 ; Statement: if $r41 == null goto $z0 = staticinvoke <org.javacc.parser.Options: boolean getCommonTokenAction()>() 
(assert (= var2670 null-var964)) ; Cond: $r41 == null 
(define-const var2487 Bool var1154_getCommonTokenAction/1405754524) ; Statement: $z0 = staticinvoke <org.javacc.parser.Options: boolean getCommonTokenAction()>() 
 ; Statement: if $z0 == 0 goto $r83 = newarray (java.lang.Object)[1] 
(assert (= (ite var2487 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3289 (Array Int var1832) arr-var1832-init) ; Statement: $r83 = newarray (java.lang.Object)[1] 
(declare-const var3289!1 (Array Int var1832))
(assert (not (= var3289!1 null-__Array__Int__var1832__)))
(assert (= (select var3289!1 0) (cast-from-String-to-var1832 ""))) ; Statement: $r83[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1065-to-var1728 var1855!4) var3289!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r83) 

(declare-const var1855!5 var1065)
(declare-const var3289!2 (Array Int var1832))
(define-const var1477 (Array Int var1832) arr-var1832-init) ; Statement: $r84 = newarray (java.lang.Object)[1] 
(declare-const var1477!1 (Array Int var1832))
(assert (not (= var1477!1 null-__Array__Int__var1832__)))
(assert (= (select var1477!1 0) (cast-from-String-to-var1832 "  /** Debug output. */"))) ; Statement: $r84[0] = "  /** Debug output. */" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1065-to-var1728 var1855!5) var1477!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r84) 

(declare-const var1855!6 var1065)
(declare-const var1477!2 (Array Int var1832))
(define-const var386 (Array Int var1832) arr-var1832-init) ; Statement: $r85 = newarray (java.lang.Object)[1] 
(define-const var2276 String String-init) ; Statement: $r86 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2276)) ; Statement: specialinvoke $r86.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2276!1 String)
(assert (= var2276!1 ""))
(assert true)
(define-const var1137 String (append/672562846 var2276!1 "  public ")) ; Statement: $r87 = virtualinvoke $r86.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  public ") 
(declare-const var2276!2 String)
(assert (= var2276!2 (str.++ var2276!1 "  public ")))
(define-const var2387 String var1065-staticString) ; Statement: $r88 = <org.javacc.parser.LexGen: java.lang.String staticString> 
(assert true)
(define-const var905 String (append/672562846 var1137 var2387)) ; Statement: $r89 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r88) 
(declare-const var1137!1 String)
(assert (= var1137!1 (str.++ var1137 var2387)))
(assert true)
(define-const var3579 String (append/672562846 var905 " java.io.PrintStream debugStream = System.out;")) ; Statement: $r90 = virtualinvoke $r89.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" java.io.PrintStream debugStream = System.out;") 
(declare-const var905!1 String)
(assert (= var905!1 (str.++ var905 " java.io.PrintStream debugStream = System.out;")))
(assert true)
(define-const var2468 String (toString/-2075883882 var3579)) ; Statement: $r91 = virtualinvoke $r90.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var386!1 (Array Int var1832))
(assert (not (= var386!1 null-__Array__Int__var1832__)))
(assert (= (select var386!1 0) (cast-from-String-to-var1832 var2468))) ; Statement: $r85[0] = $r91 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1065-to-var1728 var1855!6) var386!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r85) 

(declare-const var1855!7 var1065)
(declare-const var386!2 (Array Int var1832))
(define-const var394 (Array Int var1832) arr-var1832-init) ; Statement: $r92 = newarray (java.lang.Object)[1] 
(declare-const var394!1 (Array Int var1832))
(assert (not (= var394!1 null-__Array__Int__var1832__)))
(assert (= (select var394!1 0) (cast-from-String-to-var1832 "  /** Set debug output. */"))) ; Statement: $r92[0] = "  /** Set debug output. */" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1065-to-var1728 var1855!7) var394!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r92) 

(declare-const var1855!8 var1065)
(declare-const var394!2 (Array Int var1832))
(define-const var2605 (Array Int var1832) arr-var1832-init) ; Statement: $r93 = newarray (java.lang.Object)[1] 
(define-const var1482 String String-init) ; Statement: $r94 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1482)) ; Statement: specialinvoke $r94.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1482!1 String)
(assert (= var1482!1 ""))
(assert true)
(define-const var3009 String (append/672562846 var1482!1 "  public ")) ; Statement: $r95 = virtualinvoke $r94.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  public ") 
(declare-const var1482!2 String)
(assert (= var1482!2 (str.++ var1482!1 "  public ")))
(define-const var2422 String var1065-staticString) ; Statement: $r96 = <org.javacc.parser.LexGen: java.lang.String staticString> 
(assert true)
(define-const var798 String (append/672562846 var3009 var2422)) ; Statement: $r97 = virtualinvoke $r95.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r96) 
(declare-const var3009!1 String)
(assert (= var3009!1 (str.++ var3009 var2422)))
(assert true)
(define-const var258 String (append/672562846 var798 " void setDebugStream(java.io.PrintStream ds) { debugStream = ds; }")) ; Statement: $r98 = virtualinvoke $r97.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" void setDebugStream(java.io.PrintStream ds) { debugStream = ds; }") 
(declare-const var798!1 String)
(assert (= var798!1 (str.++ var798 " void setDebugStream(java.io.PrintStream ds) { debugStream = ds; }")))
(assert true)
(define-const var3873 String (toString/-2075883882 var258)) ; Statement: $r99 = virtualinvoke $r98.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2605!1 (Array Int var1832))
(assert (not (= var2605!1 null-__Array__Int__var1832__)))
(assert (= (select var2605!1 0) (cast-from-String-to-var1832 var3873))) ; Statement: $r93[0] = $r99 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1065-to-var1728 var1855!8) var2605!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r93) 

(declare-const var1855!9 var1065)
(declare-const var2605!2 (Array Int var1832))
(define-const var977 Bool var1154_getTokenManagerUsesParser/1619871963) ; Statement: $z6 = staticinvoke <org.javacc.parser.Options: boolean getTokenManagerUsesParser()>() 
 ; Statement: if $z6 == 0 goto return 
(assert (= (ite var977 1 0) 0)) ; Cond: $z6 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1110-init=([], java.util.ArrayList), <init>/2032108350=([java.util.ArrayList, java.util.Collection], void), cast-from-var964-to-var2680=([java.util.List], java.util.Collection), var964_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var1110-to-var964=([java.util.ArrayList], java.util.List), cast-from-String-to-var1832=([java.lang.String], java.lang.Object), arr-var1832-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1154_getOutputLanguage/-1523304050=([], java.lang.String), var1544_getFileExtension/107811045=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1544_getIdString/-267384014=([java.util.List, java.lang.String], java.lang.String), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), cast-from-var1065-to-var1728=([org.javacc.parser.LexGen], org.javacc.parser.CodeGenerator), var964_size/-959786421=([java.util.List], int), var1154_getSupportClassVisibilityPublic/-2103335562=([], boolean), arr-String-init=([], java.lang.String[]), genClassStart/-340144662=([org.javacc.parser.CodeGenerator, java.lang.String, java.lang.String, java.lang.String[], java.lang.String[]], void), var1154_getCommonTokenAction/1405754524=([], boolean), var1154_getTokenManagerUsesParser/1619871963=([], boolean)}
; {var1065=org.javacc.parser.LexGen, var1855=r2, var44=z3, var1110=java.util.ArrayList, var2150=$r0, var964=java.util.List, var1544=org.javacc.parser.JavaCCGlobals, var1742=$r1, var2680=java.util.Collection, var1832=java.lang.Object, var2501="JavaCC", var1093=$r3, var1765=$r4, var1136=$r13, var1977=$r5, var1113=$r6, var3858=$r9, var1154=org.javacc.parser.Options, var308=$r7, var1000=$r8, var573=$r10, var2973=$r11, var3082=$r12, var2306=$r14, var1156=$r15, var853=$r16, var1728=org.javacc.parser.CodeGenerator, var3076=i4, var1167=i5, var85=$r17, var3139=$i0, var610=$r31, var890=$r32, var1787=$z4, var2153=$r35, var373=$r40, var3612=$r33, var3222=$r34, var407=$r36, var1600=$r37, var203=$r38, var2017=$r39, var862=null_type, var1891=null, var2670=$r41, var2487=$z0, var3289=$r83, var1477=$r84, var386=$r85, var2276=$r86, var1137=$r87, var2387=$r88, var905=$r89, var3579=$r90, var2468=$r91, var394=$r92, var2605=$r93, var1482=$r94, var3009=$r95, var2422=$r96, var798=$r97, var258=$r98, var3873=$r99, var977=$z6}
; {org.javacc.parser.LexGen=var1065, r2=var1855, z3=var44, java.util.ArrayList=var1110, $r0=var2150, java.util.List=var964, org.javacc.parser.JavaCCGlobals=var1544, $r1=var1742, java.util.Collection=var2680, java.lang.Object=var1832, "JavaCC"=var2501, $r3=var1093, $r4=var1765, $r13=var1136, $r5=var1977, $r6=var1113, $r9=var3858, org.javacc.parser.Options=var1154, $r7=var308, $r8=var1000, $r10=var573, $r11=var2973, $r12=var3082, $r14=var2306, $r15=var1156, $r16=var853, org.javacc.parser.CodeGenerator=var1728, i4=var3076, i5=var1167, $r17=var85, $i0=var3139, $r31=var610, $r32=var890, $z4=var1787, $r35=var2153, $r40=var373, $r33=var3612, $r34=var3222, $r36=var407, $r37=var1600, $r38=var203, $r39=var2017, null_type=var862, null=var1891, $r41=var2670, $z0=var2487, $r83=var3289, $r84=var1477, $r85=var386, $r86=var2276, $r87=var1137, $r88=var2387, $r89=var905, $r90=var3579, $r91=var2468, $r92=var394, $r93=var2605, $r94=var1482, $r95=var3009, $r96=var2422, $r97=var798, $r98=var258, $r99=var3873, $z6=var977}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 13,"<java.lang.StringBuilder: java.lang.String toString()>": 5}
;stmts r2 := @this: org.javacc.parser.LexGen;	z3 = 0;	$r0 = new java.util.ArrayList;	$r1 = <org.javacc.parser.JavaCCGlobals: java.util.List toolNames>;	specialinvoke $r0.<java.util.ArrayList: void <init>(java.util.Collection)>($r1);	interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>("JavaCC");	$r3 = newarray (java.lang.Object)[1];	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/* ");	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = <org.javacc.parser.LexGen: java.lang.String tokMgrClassName>;	$r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r7 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$r8 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String getFileExtension(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String getIdString(java.util.List,java.lang.String)>($r0, $r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" */");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r3[0] = $r16;	virtualinvoke r2.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r3);	i4 = 0;	i5 = 1;	$r17 = <org.javacc.parser.JavaCCGlobals: java.util.List cu_to_insertion_point_1>;	$i0 = interfaceinvoke $r17.<java.util.List: int size()>();	if $i0 > i4 goto $r18 = <org.javacc.parser.JavaCCGlobals: java.util.List cu_to_insertion_point_1>;	goto [?= $r31 = newarray (java.lang.Object)[1]];	$r31 = newarray (java.lang.Object)[1];	$r31[0] = "";	virtualinvoke r2.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r31);	$r32 = newarray (java.lang.Object)[1];	$r32[0] = "/** Token Manager. */";	virtualinvoke r2.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r32);	if z3 == 0 goto $z4 = staticinvoke <org.javacc.parser.Options: boolean getSupportClassVisibilityPublic()>();	$z4 = staticinvoke <org.javacc.parser.Options: boolean getSupportClassVisibilityPublic()>();	if $z4 == 0 goto $r35 = <org.javacc.parser.LexGen: java.lang.String tokMgrClassName>;	$r35 = <org.javacc.parser.LexGen: java.lang.String tokMgrClassName>;	$r40 = newarray (java.lang.String)[0];	$r33 = newarray (java.lang.String)[1];	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r36 = <org.javacc.parser.JavaCCGlobals: java.lang.String cu_name>;	$r37 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36);	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Constants");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.String toString()>();	$r33[0] = $r39;	virtualinvoke r2.<org.javacc.parser.LexGen: void genClassStart(java.lang.String,java.lang.String,java.lang.String[],java.lang.String[])>(null, $r35, $r40, $r33);	$r41 = <org.javacc.parser.JavaCCGlobals: java.util.List token_mgr_decls>;	if $r41 == null goto $z0 = staticinvoke <org.javacc.parser.Options: boolean getCommonTokenAction()>();	$z0 = staticinvoke <org.javacc.parser.Options: boolean getCommonTokenAction()>();	if $z0 == 0 goto $r83 = newarray (java.lang.Object)[1];	$r83 = newarray (java.lang.Object)[1];	$r83[0] = "";	virtualinvoke r2.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r83);	$r84 = newarray (java.lang.Object)[1];	$r84[0] = "  /** Debug output. */";	virtualinvoke r2.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r84);	$r85 = newarray (java.lang.Object)[1];	$r86 = new java.lang.StringBuilder;	specialinvoke $r86.<java.lang.StringBuilder: void <init>()>();	$r87 = virtualinvoke $r86.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  public ");	$r88 = <org.javacc.parser.LexGen: java.lang.String staticString>;	$r89 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r88);	$r90 = virtualinvoke $r89.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" java.io.PrintStream debugStream = System.out;");	$r91 = virtualinvoke $r90.<java.lang.StringBuilder: java.lang.String toString()>();	$r85[0] = $r91;	virtualinvoke r2.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r85);	$r92 = newarray (java.lang.Object)[1];	$r92[0] = "  /** Set debug output. */";	virtualinvoke r2.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r92);	$r93 = newarray (java.lang.Object)[1];	$r94 = new java.lang.StringBuilder;	specialinvoke $r94.<java.lang.StringBuilder: void <init>()>();	$r95 = virtualinvoke $r94.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  public ");	$r96 = <org.javacc.parser.LexGen: java.lang.String staticString>;	$r97 = virtualinvoke $r95.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r96);	$r98 = virtualinvoke $r97.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" void setDebugStream(java.io.PrintStream ds) { debugStream = ds; }");	$r99 = virtualinvoke $r98.<java.lang.StringBuilder: java.lang.String toString()>();	$r93[0] = $r99;	virtualinvoke r2.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r93);	$z6 = staticinvoke <org.javacc.parser.Options: boolean getTokenManagerUsesParser()>();	if $z6 == 0 goto return;	return
;block_num 9