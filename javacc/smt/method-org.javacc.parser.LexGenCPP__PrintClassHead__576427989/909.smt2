(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3771 0)
(declare-sort var3454 0)
(declare-sort var1913 0)
(declare-sort var2152 0)
(declare-sort var1570 0)
(declare-sort var822 0)
(declare-sort var3581 0)
(declare-sort var72 0)
(declare-sort var2864 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3454-init () var3454)
(declare-fun <init>/2032108350 (var3454 var1570) void)
(declare-fun cast-from-var1913-to-var1570 (var1913) var1570)
(declare-fun var1913_add/328494887 (var1913 var822) Bool)
(declare-fun cast-from-var3454-to-var1913 (var3454) var1913)
(declare-fun cast-from-String-to-var822 (String) var822)
(declare-fun switchToStaticsFile/-245861004 (var3581) void)
(declare-fun cast-from-var3771-to-var3581 (var3771) var3581)
(declare-fun switchToIncludeFile/1228892977 (var3581) void)
(declare-fun arr-var822-init () (Array Int var822))
(declare-fun genCodeLine/787715242 (var3581 (Array Int var822)) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var72_stringValue/-689356382 (String) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-String-init () (Array Int String))
(declare-fun genClassStart/-340144662 (var3581 String String (Array Int String) (Array Int String)) void)
(declare-fun var72_getCommonTokenAction/1405754524 () Bool)
(declare-fun generateMethodDefHeader/-453602513 (var3581 String String String) void)
(declare-fun var72_getTokenManagerUsesParser/1619871963 () Bool)
(declare-fun switchToMainFile/901479120 (var3581) void)
(declare-const null-var3771 var3771)
(declare-const var2152-toolNames var1913)
(declare-const null-__Array__Int__var822__ (Array Int var822))
(declare-const var2152-cu_name String)
(declare-const var3771-tokMgrClassName String)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-NullType var2864)
(declare-const var2152-token_mgr_decls var1913)
(declare-const null-var1913 var1913)
(declare-const var995 var3771) ; Statement: r2 := @this: org.javacc.parser.LexGenCPP 
(assert (not (= var995 null-var3771)))
(define-const var3687 var3454 var3454-init) ; Statement: $r0 = new java.util.ArrayList 
(define-const var2368 var1913 var2152-toolNames) ; Statement: $r1 = <org.javacc.parser.JavaCCGlobals: java.util.List toolNames> 
(assert true)
;(assert (<init>/2032108350 var3687 (cast-from-var1913-to-var1570 var2368))) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>(java.util.Collection)>($r1) 

(declare-const var3687!1 var3454)
(declare-const var2368!1 var1913)
;(assert (var1913_add/328494887 (cast-from-var3454-to-var1913 var3687!1) (cast-from-String-to-var822 "JavaCC"))) ; Statement: interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>("JavaCC") 

(declare-const var3687!2 var3454)
(declare-const var3292 String)
(assert true)
;(assert (switchToStaticsFile/-245861004 (cast-from-var3771-to-var3581 var995))) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void switchToStaticsFile()>() 

(declare-const var995!1 var3771)
(assert true)
;(assert (switchToIncludeFile/1228892977 (cast-from-var3771-to-var3581 var995!1))) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void switchToIncludeFile()>() 

(declare-const var995!2 var3771)
(define-const var1033 (Array Int var822) arr-var822-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(declare-const var1033!1 (Array Int var822))
(assert (not (= var1033!1 null-__Array__Int__var822__)))
(assert (= (select var1033!1 0) (cast-from-String-to-var822 "#include \u0022stdio.h\u0022"))) ; Statement: $r3[0] = "#include \"stdio.h\"" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3771-to-var3581 var995!2) var1033!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r3) 

(declare-const var995!3 var3771)
(declare-const var1033!2 (Array Int var822))
(define-const var3319 (Array Int var822) arr-var822-init) ; Statement: $r4 = newarray (java.lang.Object)[1] 
(declare-const var3319!1 (Array Int var822))
(assert (not (= var3319!1 null-__Array__Int__var822__)))
(assert (= (select var3319!1 0) (cast-from-String-to-var822 "#include \u0022JavaCC.h\u0022"))) ; Statement: $r4[0] = "#include \"JavaCC.h\"" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3771-to-var3581 var995!3) var3319!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r4) 

(declare-const var995!4 var3771)
(declare-const var3319!2 (Array Int var822))
(define-const var1272 (Array Int var822) arr-var822-init) ; Statement: $r5 = newarray (java.lang.Object)[1] 
(declare-const var1272!1 (Array Int var822))
(assert (not (= var1272!1 null-__Array__Int__var822__)))
(assert (= (select var1272!1 0) (cast-from-String-to-var822 "#include \u0022CharStream.h\u0022"))) ; Statement: $r5[0] = "#include \"CharStream.h\"" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3771-to-var3581 var995!4) var1272!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r5) 

(declare-const var995!5 var3771)
(declare-const var1272!2 (Array Int var822))
(define-const var3583 (Array Int var822) arr-var822-init) ; Statement: $r6 = newarray (java.lang.Object)[1] 
(declare-const var3583!1 (Array Int var822))
(assert (not (= var3583!1 null-__Array__Int__var822__)))
(assert (= (select var3583!1 0) (cast-from-String-to-var822 "#include \u0022Token.h\u0022"))) ; Statement: $r6[0] = "#include \"Token.h\"" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3771-to-var3581 var995!5) var3583!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r6) 

(declare-const var995!6 var3771)
(declare-const var3583!2 (Array Int var822))
(define-const var1203 (Array Int var822) arr-var822-init) ; Statement: $r7 = newarray (java.lang.Object)[1] 
(declare-const var1203!1 (Array Int var822))
(assert (not (= var1203!1 null-__Array__Int__var822__)))
(assert (= (select var1203!1 0) (cast-from-String-to-var822 "#include \u0022ErrorHandler.h\u0022"))) ; Statement: $r7[0] = "#include \"ErrorHandler.h\"" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3771-to-var3581 var995!6) var1203!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r7) 

(declare-const var995!7 var3771)
(declare-const var1203!2 (Array Int var822))
(define-const var2778 (Array Int var822) arr-var822-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(declare-const var2778!1 (Array Int var822))
(assert (not (= var2778!1 null-__Array__Int__var822__)))
(assert (= (select var2778!1 0) (cast-from-String-to-var822 "#include \u0022TokenManager.h\u0022"))) ; Statement: $r8[0] = "#include \"TokenManager.h\"" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3771-to-var3581 var995!7) var2778!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r8) 

(declare-const var995!8 var3771)
(declare-const var2778!2 (Array Int var822))
(define-const var134 (Array Int var822) arr-var822-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(define-const var2925 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2925)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2925!1 String)
(assert (= var2925!1 ""))
(assert true)
(define-const var3343 String (append/672562846 var2925!1 "#include \u0022")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#include \"") 
(declare-const var2925!2 String)
(assert (= var2925!2 (str.++ var2925!1 "#include \u0022")))
(define-const var1061 String var2152-cu_name) ; Statement: $r11 = <org.javacc.parser.JavaCCGlobals: java.lang.String cu_name> 
(assert true)
(define-const var3487 String (append/672562846 var3343 var1061)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3343!1 String)
(assert (= var3343!1 (str.++ var3343 var1061)))
(assert true)
(define-const var2617 String (append/672562846 var3487 "Constants.h\u0022")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Constants.h\"") 
(declare-const var3487!1 String)
(assert (= var3487!1 (str.++ var3487 "Constants.h\u0022")))
(assert true)
(define-const var1654 String (toString/-2075883882 var2617)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var134!1 (Array Int var822))
(assert (not (= var134!1 null-__Array__Int__var822__)))
(assert (= (select var134!1 0) (cast-from-String-to-var822 var1654))) ; Statement: $r9[0] = $r15 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3771-to-var3581 var995!8) var134!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r9) 

(declare-const var995!9 var3771)
(declare-const var134!2 (Array Int var822))
(define-const var1776 String (var72_stringValue/-689356382 "TOKEN_MANAGER_INCLUDE")) ; Statement: $r16 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("TOKEN_MANAGER_INCLUDE") 
(assert true)
(define-const var2709 Int (length/-134980193 var1776)) ; Statement: $i0 = virtualinvoke $r16.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r17 = newarray (java.lang.Object)[1] 
(assert (<= var2709 0)) ; Cond: $i0 <= 0 
(define-const var1760 (Array Int var822) arr-var822-init) ; Statement: $r17 = newarray (java.lang.Object)[1] 
(declare-const var1760!1 (Array Int var822))
(assert (not (= var1760!1 null-__Array__Int__var822__)))
(assert (= (select var1760!1 0) (cast-from-String-to-var822 ""))) ; Statement: $r17[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3771-to-var3581 var995!9) var1760!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r17) 

(declare-const var995!10 var3771)
(declare-const var1760!2 (Array Int var822))
(define-const var674 String (var72_stringValue/-689356382 "NAMESPACE")) ; Statement: $r18 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("NAMESPACE") 
(assert true)
(define-const var3580 Int (length/-134980193 var674)) ; Statement: $i1 = virtualinvoke $r18.<java.lang.String: int length()>() 
 ; Statement: if $i1 <= 0 goto $r19 = newarray (java.lang.Object)[1] 
(assert (<= var3580 0)) ; Cond: $i1 <= 0 
(define-const var2030 (Array Int var822) arr-var822-init) ; Statement: $r19 = newarray (java.lang.Object)[1] 
(define-const var364 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var364)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var364!1 String)
(assert (= var364!1 ""))
(assert true)
(define-const var1883 String (append/672562846 var364!1 "class ")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("class ") 
(declare-const var364!2 String)
(assert (= var364!2 (str.++ var364!1 "class ")))
(define-const var3864 String var2152-cu_name) ; Statement: $r21 = <org.javacc.parser.JavaCCGlobals: java.lang.String cu_name> 
(assert true)
(define-const var1919 String (append/672562846 var1883 var3864)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1883!1 String)
(assert (= var1883!1 (str.++ var1883 var3864)))
(assert true)
(define-const var841 String (append/672562846 var1919 ";")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";") 
(declare-const var1919!1 String)
(assert (= var1919!1 (str.++ var1919 ";")))
(assert true)
(define-const var1424 String (toString/-2075883882 var841)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2030!1 (Array Int var822))
(assert (not (= var2030!1 null-__Array__Int__var822__)))
(assert (= (select var2030!1 0) (cast-from-String-to-var822 var1424))) ; Statement: $r19[0] = $r25 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3771-to-var3581 var995!10) var2030!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r19) 

(declare-const var995!11 var3771)
(declare-const var2030!2 (Array Int var822))
(define-const var3876 (Array Int var822) arr-var822-init) ; Statement: $r26 = newarray (java.lang.Object)[1] 
(declare-const var3876!1 (Array Int var822))
(assert (not (= var3876!1 null-__Array__Int__var822__)))
(assert (= (select var3876!1 0) (cast-from-String-to-var822 ""))) ; Statement: $r26[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3771-to-var3581 var995!11) var3876!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r26) 

(declare-const var995!12 var3771)
(declare-const var3876!2 (Array Int var822))
(define-const var1366 (Array Int var822) arr-var822-init) ; Statement: $r27 = newarray (java.lang.Object)[1] 
(declare-const var1366!1 (Array Int var822))
(assert (not (= var1366!1 null-__Array__Int__var822__)))
(assert (= (select var1366!1 0) (cast-from-String-to-var822 "/** Token Manager. */"))) ; Statement: $r27[0] = "/** Token Manager. */" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3771-to-var3581 var995!12) var1366!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r27) 

(declare-const var995!13 var3771)
(declare-const var1366!2 (Array Int var822))
(define-const var2159 String (var72_stringValue/-689356382 "TOKEN_MANAGER_SUPER_CLASS")) ; Statement: $r94 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("TOKEN_MANAGER_SUPER_CLASS") 
(define-const var913 String var3771-tokMgrClassName) ; Statement: $r30 = <org.javacc.parser.LexGenCPP: java.lang.String tokMgrClassName> 
(define-const var1181 (Array Int String) arr-String-init) ; Statement: $r37 = newarray (java.lang.String)[0] 
(define-const var1869 (Array Int String) arr-String-init) ; Statement: $r28 = newarray (java.lang.String)[1] 
(define-const var2092 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2092)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2092!1 String)
(assert (= var2092!1 ""))
(assert true)
(define-const var3512 String (append/672562846 var2092!1 "public TokenManager")) ; Statement: $r34 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("public TokenManager") 
(declare-const var2092!2 String)
(assert (= var2092!2 (str.++ var2092!1 "public TokenManager")))
 ; Statement: if $r94 != null goto $r31 = new java.lang.StringBuilder 
(assert (not (= var2159 null-String))) ; Cond: $r94 != null 
(define-const var1556 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1556)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1556!1 String)
(assert (= var1556!1 ""))
(assert true)
(define-const var3356 String (append/672562846 var1556!1 ", public ")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", public ") 
(declare-const var1556!2 String)
(assert (= var1556!2 (str.++ var1556!1 ", public ")))
(assert true)
(define-const var243 String (append/672562846 var3356 var2159)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r94) 
(declare-const var3356!1 String)
(assert (= var3356!1 (str.++ var3356 var2159)))
(assert true)
(define-const var3932 String (toString/-2075883882 var243)) ; Statement: $r102 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var3157 String (append/672562846 var3512 var3932)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r102) 
(declare-const var3512!1 String)
(assert (= var3512!1 (str.++ var3512 var3932)))
(assert true)
(define-const var827 String (toString/-2075883882 var3157)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1869!1 (Array Int String))
(assert (not (= var1869!1 null-__Array__Int__String__)))
(assert (= (select var1869!1 0) var827)) ; Statement: $r28[0] = $r36 
(assert true)
;(assert (genClassStart/-340144662 (cast-from-var3771-to-var3581 var995!13) null-String var913 var1181 var1869!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genClassStart(java.lang.String,java.lang.String,java.lang.String[],java.lang.String[])>(null, $r30, $r37, $r28) 

(declare-const var995!14 var3771)
(declare-const var3562 var2864)
(declare-const var913!1 String)
(declare-const var1181!1 (Array Int String))
(declare-const var1869!2 (Array Int String))
(define-const var1161 var1913 var2152-token_mgr_decls) ; Statement: $r38 = <org.javacc.parser.JavaCCGlobals: java.util.List token_mgr_decls> 
 ; Statement: if $r38 == null goto $z0 = staticinvoke <org.javacc.parser.Options: boolean getCommonTokenAction()>() 
(assert (= var1161 null-var1913)) ; Cond: $r38 == null 
(define-const var696 Bool var72_getCommonTokenAction/1405754524) ; Statement: $z0 = staticinvoke <org.javacc.parser.Options: boolean getCommonTokenAction()>() 
 ; Statement: if $z0 == 0 goto $r105 = newarray (java.lang.Object)[1] 
(assert (= (ite var696 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3722 (Array Int var822) arr-var822-init) ; Statement: $r105 = newarray (java.lang.Object)[1] 
(declare-const var3722!1 (Array Int var822))
(assert (not (= var3722!1 null-__Array__Int__var822__)))
(assert (= (select var3722!1 0) (cast-from-String-to-var822 ""))) ; Statement: $r105[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3771-to-var3581 var995!14) var3722!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r105) 

(declare-const var995!15 var3771)
(declare-const var3722!2 (Array Int var822))
(define-const var3958 (Array Int var822) arr-var822-init) ; Statement: $r106 = newarray (java.lang.Object)[1] 
(declare-const var3958!1 (Array Int var822))
(assert (not (= var3958!1 null-__Array__Int__var822__)))
(assert (= (select var3958!1 0) (cast-from-String-to-var822 "  FILE *debugStream;"))) ; Statement: $r106[0] = "  FILE *debugStream;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3771-to-var3581 var995!15) var3958!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r106) 

(declare-const var995!16 var3771)
(declare-const var3958!2 (Array Int var822))
(define-const var1676 String var3771-tokMgrClassName) ; Statement: $r107 = <org.javacc.parser.LexGenCPP: java.lang.String tokMgrClassName> 
(assert true)
;(assert (generateMethodDefHeader/-453602513 (cast-from-var3771-to-var3581 var995!16) "  void " var1676 "setDebugStream(FILE *ds)")) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void generateMethodDefHeader(java.lang.String,java.lang.String,java.lang.String)>("  void ", $r107, "setDebugStream(FILE *ds)") 

(declare-const var995!17 var3771)
(declare-const var3787 String)
(declare-const var1676!1 String)
(declare-const var2647 String)
(define-const var276 (Array Int var822) arr-var822-init) ; Statement: $r108 = newarray (java.lang.Object)[1] 
(declare-const var276!1 (Array Int var822))
(assert (not (= var276!1 null-__Array__Int__var822__)))
(assert (= (select var276!1 0) (cast-from-String-to-var822 "{ debugStream = ds; }"))) ; Statement: $r108[0] = "{ debugStream = ds; }" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3771-to-var3581 var995!17) var276!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r108) 

(declare-const var995!18 var3771)
(declare-const var276!2 (Array Int var822))
(assert true)
;(assert (switchToIncludeFile/1228892977 (cast-from-var3771-to-var3581 var995!18))) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void switchToIncludeFile()>() 

(declare-const var995!19 var3771)
(define-const var2072 Bool var72_getTokenManagerUsesParser/1619871963) ; Statement: $z4 = staticinvoke <org.javacc.parser.Options: boolean getTokenManagerUsesParser()>() 
 ; Statement: if $z4 == 0 goto virtualinvoke r2.<org.javacc.parser.LexGenCPP: void switchToMainFile()>() 
(assert (= (ite var2072 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
;(assert (switchToMainFile/901479120 (cast-from-var3771-to-var3581 var995!19))) ; Statement: virtualinvoke r2.<org.javacc.parser.LexGenCPP: void switchToMainFile()>() 

(declare-const var995!20 var3771)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3454-init=([], java.util.ArrayList), <init>/2032108350=([java.util.ArrayList, java.util.Collection], void), cast-from-var1913-to-var1570=([java.util.List], java.util.Collection), var1913_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var3454-to-var1913=([java.util.ArrayList], java.util.List), cast-from-String-to-var822=([java.lang.String], java.lang.Object), switchToStaticsFile/-245861004=([org.javacc.parser.CodeGenerator], void), cast-from-var3771-to-var3581=([org.javacc.parser.LexGenCPP], org.javacc.parser.CodeGenerator), switchToIncludeFile/1228892977=([org.javacc.parser.CodeGenerator], void), arr-var822-init=([], java.lang.Object[]), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var72_stringValue/-689356382=([java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int), arr-String-init=([], java.lang.String[]), genClassStart/-340144662=([org.javacc.parser.CodeGenerator, java.lang.String, java.lang.String, java.lang.String[], java.lang.String[]], void), var72_getCommonTokenAction/1405754524=([], boolean), generateMethodDefHeader/-453602513=([org.javacc.parser.CodeGenerator, java.lang.String, java.lang.String, java.lang.String], void), var72_getTokenManagerUsesParser/1619871963=([], boolean), switchToMainFile/901479120=([org.javacc.parser.CodeGenerator], void)}
; {var3771=org.javacc.parser.LexGenCPP, var995=r2, var3454=java.util.ArrayList, var3687=$r0, var1913=java.util.List, var2152=org.javacc.parser.JavaCCGlobals, var2368=$r1, var1570=java.util.Collection, var822=java.lang.Object, var3292="JavaCC", var3581=org.javacc.parser.CodeGenerator, var1033=$r3, var3319=$r4, var1272=$r5, var3583=$r6, var1203=$r7, var2778=$r8, var134=$r9, var2925=$r10, var3343=$r12, var1061=$r11, var3487=$r13, var2617=$r14, var1654=$r15, var72=org.javacc.parser.Options, var1776=$r16, var2709=$i0, var1760=$r17, var674=$r18, var3580=$i1, var2030=$r19, var364=$r20, var1883=$r22, var3864=$r21, var1919=$r23, var841=$r24, var1424=$r25, var3876=$r26, var1366=$r27, var2159=$r94, var913=$r30, var1181=$r37, var1869=$r28, var2092=$r29, var3512=$r34, var2864=null_type, var1556=$r31, var3356=$r32, var243=$r33, var3932=$r102, var3157=$r35, var827=$r36, var3562=null, var1161=$r38, var696=$z0, var3722=$r105, var3958=$r106, var1676=$r107, var3787="  void ", var2647="setDebugStream(FILE *ds)", var276=$r108, var2072=$z4}
; {org.javacc.parser.LexGenCPP=var3771, r2=var995, java.util.ArrayList=var3454, $r0=var3687, java.util.List=var1913, org.javacc.parser.JavaCCGlobals=var2152, $r1=var2368, java.util.Collection=var1570, java.lang.Object=var822, "JavaCC"=var3292, org.javacc.parser.CodeGenerator=var3581, $r3=var1033, $r4=var3319, $r5=var1272, $r6=var3583, $r7=var1203, $r8=var2778, $r9=var134, $r10=var2925, $r12=var3343, $r11=var1061, $r13=var3487, $r14=var2617, $r15=var1654, org.javacc.parser.Options=var72, $r16=var1776, $i0=var2709, $r17=var1760, $r18=var674, $i1=var3580, $r19=var2030, $r20=var364, $r22=var1883, $r21=var3864, $r23=var1919, $r24=var841, $r25=var1424, $r26=var3876, $r27=var1366, $r94=var2159, $r30=var913, $r37=var1181, $r28=var1869, $r29=var2092, $r34=var3512, null_type=var2864, $r31=var1556, $r32=var3356, $r33=var243, $r102=var3932, $r35=var3157, $r36=var827, null=var3562, $r38=var1161, $z0=var696, $r105=var3722, $r106=var3958, $r107=var1676, "  void "=var3787, "setDebugStream(FILE *ds)"=var2647, $r108=var276, $z4=var2072}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.String toString()>": 4,"<java.lang.String: int length()>": 2}
;stmts r2 := @this: org.javacc.parser.LexGenCPP;	$r0 = new java.util.ArrayList;	$r1 = <org.javacc.parser.JavaCCGlobals: java.util.List toolNames>;	specialinvoke $r0.<java.util.ArrayList: void <init>(java.util.Collection)>($r1);	interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>("JavaCC");	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void switchToStaticsFile()>();	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void switchToIncludeFile()>();	$r3 = newarray (java.lang.Object)[1];	$r3[0] = "#include \"stdio.h\"";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r3);	$r4 = newarray (java.lang.Object)[1];	$r4[0] = "#include \"JavaCC.h\"";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r4);	$r5 = newarray (java.lang.Object)[1];	$r5[0] = "#include \"CharStream.h\"";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r5);	$r6 = newarray (java.lang.Object)[1];	$r6[0] = "#include \"Token.h\"";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r6);	$r7 = newarray (java.lang.Object)[1];	$r7[0] = "#include \"ErrorHandler.h\"";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r7);	$r8 = newarray (java.lang.Object)[1];	$r8[0] = "#include \"TokenManager.h\"";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r8);	$r9 = newarray (java.lang.Object)[1];	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#include \"");	$r11 = <org.javacc.parser.JavaCCGlobals: java.lang.String cu_name>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Constants.h\"");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r9[0] = $r15;	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r9);	$r16 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("TOKEN_MANAGER_INCLUDE");	$i0 = virtualinvoke $r16.<java.lang.String: int length()>();	if $i0 <= 0 goto $r17 = newarray (java.lang.Object)[1];	$r17 = newarray (java.lang.Object)[1];	$r17[0] = "";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r17);	$r18 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("NAMESPACE");	$i1 = virtualinvoke $r18.<java.lang.String: int length()>();	if $i1 <= 0 goto $r19 = newarray (java.lang.Object)[1];	$r19 = newarray (java.lang.Object)[1];	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("class ");	$r21 = <org.javacc.parser.JavaCCGlobals: java.lang.String cu_name>;	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	$r19[0] = $r25;	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r19);	$r26 = newarray (java.lang.Object)[1];	$r26[0] = "";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r26);	$r27 = newarray (java.lang.Object)[1];	$r27[0] = "/** Token Manager. */";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r27);	$r94 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("TOKEN_MANAGER_SUPER_CLASS");	$r30 = <org.javacc.parser.LexGenCPP: java.lang.String tokMgrClassName>;	$r37 = newarray (java.lang.String)[0];	$r28 = newarray (java.lang.String)[1];	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("public TokenManager");	if $r94 != null goto $r31 = new java.lang.StringBuilder;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", public ");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r94);	$r102 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r102);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>();	$r28[0] = $r36;	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genClassStart(java.lang.String,java.lang.String,java.lang.String[],java.lang.String[])>(null, $r30, $r37, $r28);	$r38 = <org.javacc.parser.JavaCCGlobals: java.util.List token_mgr_decls>;	if $r38 == null goto $z0 = staticinvoke <org.javacc.parser.Options: boolean getCommonTokenAction()>();	$z0 = staticinvoke <org.javacc.parser.Options: boolean getCommonTokenAction()>();	if $z0 == 0 goto $r105 = newarray (java.lang.Object)[1];	$r105 = newarray (java.lang.Object)[1];	$r105[0] = "";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r105);	$r106 = newarray (java.lang.Object)[1];	$r106[0] = "  FILE *debugStream;";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r106);	$r107 = <org.javacc.parser.LexGenCPP: java.lang.String tokMgrClassName>;	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void generateMethodDefHeader(java.lang.String,java.lang.String,java.lang.String)>("  void ", $r107, "setDebugStream(FILE *ds)");	$r108 = newarray (java.lang.Object)[1];	$r108[0] = "{ debugStream = ds; }";	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r108);	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void switchToIncludeFile()>();	$z4 = staticinvoke <org.javacc.parser.Options: boolean getTokenManagerUsesParser()>();	if $z4 == 0 goto virtualinvoke r2.<org.javacc.parser.LexGenCPP: void switchToMainFile()>();	virtualinvoke r2.<org.javacc.parser.LexGenCPP: void switchToMainFile()>();	return
;block_num 8