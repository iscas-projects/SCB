(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1973 0)
(declare-sort var626 0)
(declare-sort var1931 0)
(declare-sort var3897 0)
(declare-sort var2915 0)
(declare-sort var3291 0)
(declare-sort var282 0)
(declare-sort var2782 0)
(declare-sort var1444 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var626-init () var626)
(declare-fun <init>/2032108350 (var626 var2915) void)
(declare-fun cast-from-var1931-to-var2915 (var1931) var2915)
(declare-fun var1931_add/328494887 (var1931 var3291) Bool)
(declare-fun cast-from-var626-to-var1931 (var626) var1931)
(declare-fun cast-from-String-to-var3291 (String) var3291)
(declare-fun switchToStaticsFile/-245861004 (var282) void)
(declare-fun cast-from-var1973-to-var282 (var1973) var282)
(declare-fun switchToIncludeFile/1228892977 (var282) void)
(declare-fun arr-var3291-init () (Array Int var3291))
(declare-fun genCodeLine/787715242 (var282 (Array Int var3291)) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2782_stringValue/-689356382 (String) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-String-init () (Array Int String))
(declare-fun genClassStart/-340144662 (var282 String String (Array Int String) (Array Int String)) void)
(declare-fun var2782_getCommonTokenAction/1405754524 () Bool)
(declare-fun generateMethodDefHeader/-453602513 (var282 String String String) void)
(declare-fun var2782_getTokenManagerUsesParser/1619871963 () Bool)
(declare-fun switchToMainFile/901479120 (var282) void)
(declare-const null-var1973 var1973)
(declare-const var3897-toolNames var1931)
(declare-const null-__Array__Int__var3291__ (Array Int var3291))
(declare-const var3897-cu_name String)
(declare-const var1973-tokMgrClassName String)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-NullType var1444)
(declare-const var3897-token_mgr_decls var1931)
(declare-const null-var1931 var1931)
(declare-const var1259 var1973) ; Statement: r2 := @this: org.javacc.parser.LexGenCPP 
(assert (not (= var1259 null-var1973)))
(define-const var2797 var626 var626-init) ; Statement: $r0 = new java.util.ArrayList 
(define-const var1432 var1931 var3897-toolNames) ; Statement: $r1 = <org.javacc.parser.JavaCCGlobals: java.util.List toolNames> 
(assert true)
;(assert (<init>/2032108350 var2797 (cast-from-var1931-to-var2915 var1432))) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>(java.util.Collection)>($r1) 

(declare-const var2797!1 var626)
(declare-const var1432!1 var1931)
;(assert (var1931_add/328494887 (cast-from-var626-to-var1931 var2797!1) (cast-from-String-to-var3291 "JavaCC"))) ; Statement: interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>("JavaCC") 

(declare-const var2797!2 var626)
(declare-const var3152 String)
(assert true)
;(assert (switchToStaticsFile/-245861004 (cast-from-var1973-to-var282 var1259))) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void switchToStaticsFile()>() 

(declare-const var1259!1 var1973)
(assert true)
;(assert (switchToIncludeFile/1228892977 (cast-from-var1973-to-var282 var1259!1))) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void switchToIncludeFile()>() 

(declare-const var1259!2 var1973)
(define-const var3178 (Array Int var3291) arr-var3291-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(declare-const var3178!1 (Array Int var3291))
(assert (not (= var3178!1 null-__Array__Int__var3291__)))
(assert (= (select var3178!1 0) (cast-from-String-to-var3291 "#include \u0022stdio.h\u0022"))) ; Statement: $r3[0] = "#include \"stdio.h\"" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1973-to-var282 var1259!2) var3178!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r3) 

(declare-const var1259!3 var1973)
(declare-const var3178!2 (Array Int var3291))
(define-const var1941 (Array Int var3291) arr-var3291-init) ; Statement: $r4 = newarray (java.lang.Object)[1] 
(declare-const var1941!1 (Array Int var3291))
(assert (not (= var1941!1 null-__Array__Int__var3291__)))
(assert (= (select var1941!1 0) (cast-from-String-to-var3291 "#include \u0022JavaCC.h\u0022"))) ; Statement: $r4[0] = "#include \"JavaCC.h\"" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1973-to-var282 var1259!3) var1941!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r4) 

(declare-const var1259!4 var1973)
(declare-const var1941!2 (Array Int var3291))
(define-const var782 (Array Int var3291) arr-var3291-init) ; Statement: $r5 = newarray (java.lang.Object)[1] 
(declare-const var782!1 (Array Int var3291))
(assert (not (= var782!1 null-__Array__Int__var3291__)))
(assert (= (select var782!1 0) (cast-from-String-to-var3291 "#include \u0022CharStream.h\u0022"))) ; Statement: $r5[0] = "#include \"CharStream.h\"" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1973-to-var282 var1259!4) var782!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r5) 

(declare-const var1259!5 var1973)
(declare-const var782!2 (Array Int var3291))
(define-const var2507 (Array Int var3291) arr-var3291-init) ; Statement: $r6 = newarray (java.lang.Object)[1] 
(declare-const var2507!1 (Array Int var3291))
(assert (not (= var2507!1 null-__Array__Int__var3291__)))
(assert (= (select var2507!1 0) (cast-from-String-to-var3291 "#include \u0022Token.h\u0022"))) ; Statement: $r6[0] = "#include \"Token.h\"" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1973-to-var282 var1259!5) var2507!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r6) 

(declare-const var1259!6 var1973)
(declare-const var2507!2 (Array Int var3291))
(define-const var244 (Array Int var3291) arr-var3291-init) ; Statement: $r7 = newarray (java.lang.Object)[1] 
(declare-const var244!1 (Array Int var3291))
(assert (not (= var244!1 null-__Array__Int__var3291__)))
(assert (= (select var244!1 0) (cast-from-String-to-var3291 "#include \u0022ErrorHandler.h\u0022"))) ; Statement: $r7[0] = "#include \"ErrorHandler.h\"" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1973-to-var282 var1259!6) var244!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r7) 

(declare-const var1259!7 var1973)
(declare-const var244!2 (Array Int var3291))
(define-const var3222 (Array Int var3291) arr-var3291-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(declare-const var3222!1 (Array Int var3291))
(assert (not (= var3222!1 null-__Array__Int__var3291__)))
(assert (= (select var3222!1 0) (cast-from-String-to-var3291 "#include \u0022TokenManager.h\u0022"))) ; Statement: $r8[0] = "#include \"TokenManager.h\"" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1973-to-var282 var1259!7) var3222!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r8) 

(declare-const var1259!8 var1973)
(declare-const var3222!2 (Array Int var3291))
(define-const var3674 (Array Int var3291) arr-var3291-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(define-const var866 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var866)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var866!1 String)
(assert (= var866!1 ""))
(assert true)
(define-const var3747 String (append/672562846 var866!1 "#include \u0022")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#include \"") 
(declare-const var866!2 String)
(assert (= var866!2 (str.++ var866!1 "#include \u0022")))
(define-const var3179 String var3897-cu_name) ; Statement: $r11 = <org.javacc.parser.JavaCCGlobals: java.lang.String cu_name> 
(assert true)
(define-const var2567 String (append/672562846 var3747 var3179)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3747!1 String)
(assert (= var3747!1 (str.++ var3747 var3179)))
(assert true)
(define-const var3560 String (append/672562846 var2567 "Constants.h\u0022")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Constants.h\"") 
(declare-const var2567!1 String)
(assert (= var2567!1 (str.++ var2567 "Constants.h\u0022")))
(assert true)
(define-const var3830 String (toString/-2075883882 var3560)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3674!1 (Array Int var3291))
(assert (not (= var3674!1 null-__Array__Int__var3291__)))
(assert (= (select var3674!1 0) (cast-from-String-to-var3291 var3830))) ; Statement: $r9[0] = $r15 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1973-to-var282 var1259!8) var3674!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r9) 

(declare-const var1259!9 var1973)
(declare-const var3674!2 (Array Int var3291))
(define-const var2338 String (var2782_stringValue/-689356382 "TOKEN_MANAGER_INCLUDE")) ; Statement: $r16 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("TOKEN_MANAGER_INCLUDE") 
(assert true)
(define-const var1552 Int (length/-134980193 var2338)) ; Statement: $i0 = virtualinvoke $r16.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r17 = newarray (java.lang.Object)[1] 
(assert (<= var1552 0)) ; Cond: $i0 <= 0 
(define-const var2226 (Array Int var3291) arr-var3291-init) ; Statement: $r17 = newarray (java.lang.Object)[1] 
(declare-const var2226!1 (Array Int var3291))
(assert (not (= var2226!1 null-__Array__Int__var3291__)))
(assert (= (select var2226!1 0) (cast-from-String-to-var3291 ""))) ; Statement: $r17[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1973-to-var282 var1259!9) var2226!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r17) 

(declare-const var1259!10 var1973)
(declare-const var2226!2 (Array Int var3291))
(define-const var1911 String (var2782_stringValue/-689356382 "NAMESPACE")) ; Statement: $r18 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("NAMESPACE") 
(assert true)
(define-const var3540 Int (length/-134980193 var1911)) ; Statement: $i1 = virtualinvoke $r18.<java.lang.String: int length()>() 
 ; Statement: if $i1 <= 0 goto $r19 = newarray (java.lang.Object)[1] 
(assert (<= var3540 0)) ; Cond: $i1 <= 0 
(define-const var180 (Array Int var3291) arr-var3291-init) ; Statement: $r19 = newarray (java.lang.Object)[1] 
(define-const var393 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var393)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var393!1 String)
(assert (= var393!1 ""))
(assert true)
(define-const var3745 String (append/672562846 var393!1 "class ")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("class ") 
(declare-const var393!2 String)
(assert (= var393!2 (str.++ var393!1 "class ")))
(define-const var667 String var3897-cu_name) ; Statement: $r21 = <org.javacc.parser.JavaCCGlobals: java.lang.String cu_name> 
(assert true)
(define-const var2444 String (append/672562846 var3745 var667)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var3745!1 String)
(assert (= var3745!1 (str.++ var3745 var667)))
(assert true)
(define-const var1729 String (append/672562846 var2444 ";")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";") 
(declare-const var2444!1 String)
(assert (= var2444!1 (str.++ var2444 ";")))
(assert true)
(define-const var367 String (toString/-2075883882 var1729)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var180!1 (Array Int var3291))
(assert (not (= var180!1 null-__Array__Int__var3291__)))
(assert (= (select var180!1 0) (cast-from-String-to-var3291 var367))) ; Statement: $r19[0] = $r25 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1973-to-var282 var1259!10) var180!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r19) 

(declare-const var1259!11 var1973)
(declare-const var180!2 (Array Int var3291))
(define-const var537 (Array Int var3291) arr-var3291-init) ; Statement: $r26 = newarray (java.lang.Object)[1] 
(declare-const var537!1 (Array Int var3291))
(assert (not (= var537!1 null-__Array__Int__var3291__)))
(assert (= (select var537!1 0) (cast-from-String-to-var3291 ""))) ; Statement: $r26[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1973-to-var282 var1259!11) var537!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r26) 

(declare-const var1259!12 var1973)
(declare-const var537!2 (Array Int var3291))
(define-const var19 (Array Int var3291) arr-var3291-init) ; Statement: $r27 = newarray (java.lang.Object)[1] 
(declare-const var19!1 (Array Int var3291))
(assert (not (= var19!1 null-__Array__Int__var3291__)))
(assert (= (select var19!1 0) (cast-from-String-to-var3291 "/** Token Manager. */"))) ; Statement: $r27[0] = "/** Token Manager. */" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1973-to-var282 var1259!12) var19!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r27) 

(declare-const var1259!13 var1973)
(declare-const var19!2 (Array Int var3291))
(define-const var444 String (var2782_stringValue/-689356382 "TOKEN_MANAGER_SUPER_CLASS")) ; Statement: $r94 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("TOKEN_MANAGER_SUPER_CLASS") 
(define-const var1666 String var1973-tokMgrClassName) ; Statement: $r30 = <org.javacc.parser.LexGenCPP: java.lang.String tokMgrClassName> 
(define-const var3820 (Array Int String) arr-String-init) ; Statement: $r37 = newarray (java.lang.String)[0] 
(define-const var3966 (Array Int String) arr-String-init) ; Statement: $r28 = newarray (java.lang.String)[1] 
(define-const var2696 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2696)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2696!1 String)
(assert (= var2696!1 ""))
(assert true)
(define-const var3312 String (append/672562846 var2696!1 "public TokenManager")) ; Statement: $r34 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("public TokenManager") 
(declare-const var2696!2 String)
(assert (= var2696!2 (str.++ var2696!1 "public TokenManager")))
 ; Statement: if $r94 != null goto $r31 = new java.lang.StringBuilder 
(assert (not (not (= var444 null-String)))) ; Negate: Cond: $r94 != null  
(define-const var3131 String "") ; Statement: $r102 = "" 
 ; Statement: goto [?= $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r102)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2450 String (append/672562846 var3312 var3131)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r102) 
(declare-const var3312!1 String)
(assert (= var3312!1 (str.++ var3312 var3131)))
(assert true)
(define-const var1992 String (toString/-2075883882 var2450)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3966!1 (Array Int String))
(assert (not (= var3966!1 null-__Array__Int__String__)))
(assert (= (select var3966!1 0) var1992)) ; Statement: $r28[0] = $r36 
(assert true)
;(assert (genClassStart/-340144662 (cast-from-var1973-to-var282 var1259!13) null-String var1666 var3820 var3966!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genClassStart(java.lang.String,java.lang.String,java.lang.String[],java.lang.String[])>(null, $r30, $r37, $r28) 

(declare-const var1259!14 var1973)
(declare-const var3892 var1444)
(declare-const var1666!1 String)
(declare-const var3820!1 (Array Int String))
(declare-const var3966!2 (Array Int String))
(define-const var1988 var1931 var3897-token_mgr_decls) ; Statement: $r38 = <org.javacc.parser.JavaCCGlobals: java.util.List token_mgr_decls> 
 ; Statement: if $r38 == null goto $z0 = staticinvoke <org.javacc.parser.Options: boolean getCommonTokenAction()>() 
(assert (= var1988 null-var1931)) ; Cond: $r38 == null 
(define-const var2114 Bool var2782_getCommonTokenAction/1405754524) ; Statement: $z0 = staticinvoke <org.javacc.parser.Options: boolean getCommonTokenAction()>() 
 ; Statement: if $z0 == 0 goto $r105 = newarray (java.lang.Object)[1] 
(assert (= (ite var2114 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2072 (Array Int var3291) arr-var3291-init) ; Statement: $r105 = newarray (java.lang.Object)[1] 
(declare-const var2072!1 (Array Int var3291))
(assert (not (= var2072!1 null-__Array__Int__var3291__)))
(assert (= (select var2072!1 0) (cast-from-String-to-var3291 ""))) ; Statement: $r105[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1973-to-var282 var1259!14) var2072!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r105) 

(declare-const var1259!15 var1973)
(declare-const var2072!2 (Array Int var3291))
(define-const var3932 (Array Int var3291) arr-var3291-init) ; Statement: $r106 = newarray (java.lang.Object)[1] 
(declare-const var3932!1 (Array Int var3291))
(assert (not (= var3932!1 null-__Array__Int__var3291__)))
(assert (= (select var3932!1 0) (cast-from-String-to-var3291 "  FILE *debugStream;"))) ; Statement: $r106[0] = "  FILE *debugStream;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1973-to-var282 var1259!15) var3932!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r106) 

(declare-const var1259!16 var1973)
(declare-const var3932!2 (Array Int var3291))
(define-const var326 String var1973-tokMgrClassName) ; Statement: $r107 = <org.javacc.parser.LexGenCPP: java.lang.String tokMgrClassName> 
(assert true)
;(assert (generateMethodDefHeader/-453602513 (cast-from-var1973-to-var282 var1259!16) "  void " var326 "setDebugStream(FILE *ds)")) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void generateMethodDefHeader(java.lang.String,java.lang.String,java.lang.String)>("  void ", $r107, "setDebugStream(FILE *ds)") 

(declare-const var1259!17 var1973)
(declare-const var2292 String)
(declare-const var326!1 String)
(declare-const var3195 String)
(define-const var2715 (Array Int var3291) arr-var3291-init) ; Statement: $r108 = newarray (java.lang.Object)[1] 
(declare-const var2715!1 (Array Int var3291))
(assert (not (= var2715!1 null-__Array__Int__var3291__)))
(assert (= (select var2715!1 0) (cast-from-String-to-var3291 "{ debugStream = ds; }"))) ; Statement: $r108[0] = "{ debugStream = ds; }" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1973-to-var282 var1259!17) var2715!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r108) 

(declare-const var1259!18 var1973)
(declare-const var2715!2 (Array Int var3291))
(assert true)
;(assert (switchToIncludeFile/1228892977 (cast-from-var1973-to-var282 var1259!18))) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void switchToIncludeFile()>() 

(declare-const var1259!19 var1973)
(define-const var1224 Bool var2782_getTokenManagerUsesParser/1619871963) ; Statement: $z4 = staticinvoke <org.javacc.parser.Options: boolean getTokenManagerUsesParser()>() 
 ; Statement: if $z4 == 0 goto virtualinvoke r2.<org.javacc.parser.LexGenCPP: void switchToMainFile()>() 
(assert (= (ite var1224 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
;(assert (switchToMainFile/901479120 (cast-from-var1973-to-var282 var1259!19))) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void switchToMainFile()>() 

(declare-const var1259!20 var1973)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var626-init=([], java.util.ArrayList), <init>/2032108350=([java.util.ArrayList, java.util.Collection], void), cast-from-var1931-to-var2915=([java.util.List], java.util.Collection), var1931_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var626-to-var1931=([java.util.ArrayList], java.util.List), cast-from-String-to-var3291=([java.lang.String], java.lang.Object), switchToStaticsFile/-245861004=([org.javacc.parser.CodeGenerator], void), cast-from-var1973-to-var282=([org.javacc.parser.LexGenCPP], org.javacc.parser.CodeGenerator), switchToIncludeFile/1228892977=([org.javacc.parser.CodeGenerator], void), arr-var3291-init=([], java.lang.Object[]), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2782_stringValue/-689356382=([java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int), arr-String-init=([], java.lang.String[]), genClassStart/-340144662=([org.javacc.parser.CodeGenerator, java.lang.String, java.lang.String, java.lang.String[], java.lang.String[]], void), var2782_getCommonTokenAction/1405754524=([], boolean), generateMethodDefHeader/-453602513=([org.javacc.parser.CodeGenerator, java.lang.String, java.lang.String, java.lang.String], void), var2782_getTokenManagerUsesParser/1619871963=([], boolean), switchToMainFile/901479120=([org.javacc.parser.CodeGenerator], void)}
; {var1973=org.javacc.parser.LexGenCPP, var1259=r2, var626=java.util.ArrayList, var2797=$r0, var1931=java.util.List, var3897=org.javacc.parser.JavaCCGlobals, var1432=$r1, var2915=java.util.Collection, var3291=java.lang.Object, var3152="JavaCC", var282=org.javacc.parser.CodeGenerator, var3178=$r3, var1941=$r4, var782=$r5, var2507=$r6, var244=$r7, var3222=$r8, var3674=$r9, var866=$r10, var3747=$r12, var3179=$r11, var2567=$r13, var3560=$r14, var3830=$r15, var2782=org.javacc.parser.Options, var2338=$r16, var1552=$i0, var2226=$r17, var1911=$r18, var3540=$i1, var180=$r19, var393=$r20, var3745=$r22, var667=$r21, var2444=$r23, var1729=$r24, var367=$r25, var537=$r26, var19=$r27, var444=$r94, var1666=$r30, var3820=$r37, var3966=$r28, var2696=$r29, var3312=$r34, var1444=null_type, var3131=$r102, var2450=$r35, var1992=$r36, var3892=null, var1988=$r38, var2114=$z0, var2072=$r105, var3932=$r106, var326=$r107, var2292="  void ", var3195="setDebugStream(FILE *ds)", var2715=$r108, var1224=$z4}
; {org.javacc.parser.LexGenCPP=var1973, r2=var1259, java.util.ArrayList=var626, $r0=var2797, java.util.List=var1931, org.javacc.parser.JavaCCGlobals=var3897, $r1=var1432, java.util.Collection=var2915, java.lang.Object=var3291, "JavaCC"=var3152, org.javacc.parser.CodeGenerator=var282, $r3=var3178, $r4=var1941, $r5=var782, $r6=var2507, $r7=var244, $r8=var3222, $r9=var3674, $r10=var866, $r12=var3747, $r11=var3179, $r13=var2567, $r14=var3560, $r15=var3830, org.javacc.parser.Options=var2782, $r16=var2338, $i0=var1552, $r17=var2226, $r18=var1911, $i1=var3540, $r19=var180, $r20=var393, $r22=var3745, $r21=var667, $r23=var2444, $r24=var1729, $r25=var367, $r26=var537, $r27=var19, $r94=var444, $r30=var1666, $r37=var3820, $r28=var3966, $r29=var2696, $r34=var3312, null_type=var1444, $r102=var3131, $r35=var2450, $r36=var1992, null=var3892, $r38=var1988, $z0=var2114, $r105=var2072, $r106=var3932, $r107=var326, "  void "=var2292, "setDebugStream(FILE *ds)"=var3195, $r108=var2715, $z4=var1224}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: int length()>": 2}
;stmts r2 := @this: org.javacc.parser.LexGenCPP;	$r0 = new java.util.ArrayList;	$r1 = <org.javacc.parser.JavaCCGlobals: java.util.List toolNames>;	specialinvoke $r0.<java.util.ArrayList: void <init>(java.util.Collection)>($r1);	interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>("JavaCC");	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void switchToStaticsFile()>();	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void switchToIncludeFile()>();	$r3 = newarray (java.lang.Object)[1];	$r3[0] = "#include \"stdio.h\"";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r3);	$r4 = newarray (java.lang.Object)[1];	$r4[0] = "#include \"JavaCC.h\"";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r4);	$r5 = newarray (java.lang.Object)[1];	$r5[0] = "#include \"CharStream.h\"";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r5);	$r6 = newarray (java.lang.Object)[1];	$r6[0] = "#include \"Token.h\"";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r6);	$r7 = newarray (java.lang.Object)[1];	$r7[0] = "#include \"ErrorHandler.h\"";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r7);	$r8 = newarray (java.lang.Object)[1];	$r8[0] = "#include \"TokenManager.h\"";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r8);	$r9 = newarray (java.lang.Object)[1];	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#include \"");	$r11 = <org.javacc.parser.JavaCCGlobals: java.lang.String cu_name>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Constants.h\"");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r9[0] = $r15;	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r9);	$r16 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("TOKEN_MANAGER_INCLUDE");	$i0 = virtualinvoke $r16.<java.lang.String: int length()>();	if $i0 <= 0 goto $r17 = newarray (java.lang.Object)[1];	$r17 = newarray (java.lang.Object)[1];	$r17[0] = "";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r17);	$r18 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("NAMESPACE");	$i1 = virtualinvoke $r18.<java.lang.String: int length()>();	if $i1 <= 0 goto $r19 = newarray (java.lang.Object)[1];	$r19 = newarray (java.lang.Object)[1];	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("class ");	$r21 = <org.javacc.parser.JavaCCGlobals: java.lang.String cu_name>;	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	$r19[0] = $r25;	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r19);	$r26 = newarray (java.lang.Object)[1];	$r26[0] = "";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r26);	$r27 = newarray (java.lang.Object)[1];	$r27[0] = "/** Token Manager. */";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r27);	$r94 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("TOKEN_MANAGER_SUPER_CLASS");	$r30 = <org.javacc.parser.LexGenCPP: java.lang.String tokMgrClassName>;	$r37 = newarray (java.lang.String)[0];	$r28 = newarray (java.lang.String)[1];	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("public TokenManager");	if $r94 != null goto $r31 = new java.lang.StringBuilder;	$r102 = "";	goto [?= $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r102)];	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r102);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>();	$r28[0] = $r36;	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genClassStart(java.lang.String,java.lang.String,java.lang.String[],java.lang.String[])>(null, $r30, $r37, $r28);	$r38 = <org.javacc.parser.JavaCCGlobals: java.util.List token_mgr_decls>;	if $r38 == null goto $z0 = staticinvoke <org.javacc.parser.Options: boolean getCommonTokenAction()>();	$z0 = staticinvoke <org.javacc.parser.Options: boolean getCommonTokenAction()>();	if $z0 == 0 goto $r105 = newarray (java.lang.Object)[1];	$r105 = newarray (java.lang.Object)[1];	$r105[0] = "";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r105);	$r106 = newarray (java.lang.Object)[1];	$r106[0] = "  FILE *debugStream;";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r106);	$r107 = <org.javacc.parser.LexGenCPP: java.lang.String tokMgrClassName>;	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void generateMethodDefHeader(java.lang.String,java.lang.String,java.lang.String)>("  void ", $r107, "setDebugStream(FILE *ds)");	$r108 = newarray (java.lang.Object)[1];	$r108[0] = "{ debugStream = ds; }";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r108);	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void switchToIncludeFile()>();	$z4 = staticinvoke <org.javacc.parser.Options: boolean getTokenManagerUsesParser()>();	if $z4 == 0 goto virtualinvoke r2.<org.javacc.parser.LexGenCPP: void switchToMainFile()>();	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void switchToMainFile()>();	return
;block_num 8