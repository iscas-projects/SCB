(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1634 0)
(declare-sort var2320 0)
(declare-sort var2762 0)
(declare-sort var496 0)
(declare-sort var1940 0)
(declare-sort var319 0)
(declare-sort var2409 0)
(declare-sort var3608 0)
(declare-sort var1137 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun allMatches/658263060 (var2762) var496)
(declare-fun var1940-init () var1940)
(declare-fun var496_size/-1594421051 (var496) Int)
(declare-fun <init>/643259939 (var1940 Int) void)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun set/1811966405 (var1940 Int Bool) void)
(declare-fun arr-var319-init () (Array Int var319))
(declare-fun cast-from-String-to-var319 (String) var319)
(declare-fun genCodeLine/787715242 (var2320 (Array Int var319)) void)
(declare-fun var496_keySet/-712633290 (var496) var2409)
(declare-fun var2409_iterator/1911472585 (var2409) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var1634_generateBitVector/-1939883418 (String var1940 var2320) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var3608_getStatic/-616544340 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun dumpLexicalActions/-471926748 (var1634 var496 var1137 String var2320) void)
(declare-fun lexStateNames/658263060 (var2762) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var1634 var1634)
(declare-const null-var2320 var2320)
(declare-const null-var2762 var2762)
(declare-const null-__Array__Int__var319__ (Array Int var319))
(declare-const var1137-TOKEN var1137)
(declare-const var1137-SKIP var1137)
(declare-const var1137-SPECIAL_TOKEN var1137)
(declare-const var1137-MORE var1137)
(declare-const var3768 var1634) ; Statement: r18 := @this: org.javacc.parser.TableDrivenJavaCodeGenerator 
(assert (not (= var3768 null-var1634)))
(declare-const var102 var2320) ; Statement: r7 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var102 null-var2320)))
(declare-const var3002 var2762) ; Statement: r0 := @parameter1: org.javacc.parser.TokenizerData 
(assert (not (= var3002 null-var2762)))
(define-const var1331 var496 (allMatches/658263060 var3002)) ; Statement: r1 = r0.<org.javacc.parser.TokenizerData: java.util.Map allMatches> 
(define-const var1123 var1940 var1940-init) ; Statement: $r88 = new java.util.BitSet 
(define-const var2205 Int (var496_size/-1594421051 var1331)) ; Statement: $i0 = interfaceinvoke r1.<java.util.Map: int size()>() 
(assert true)
;(assert (<init>/643259939 var1123 var2205)) ; Statement: specialinvoke $r88.<java.util.BitSet: void <init>(int)>($i0) 

(declare-const var1123!1 var1940)
(declare-const var2205!1 Int)
(define-const var1030 var1940 var1940-init) ; Statement: $r89 = new java.util.BitSet 
(define-const var1851 Int (var496_size/-1594421051 var1331)) ; Statement: $i1 = interfaceinvoke r1.<java.util.Map: int size()>() 
(assert true)
;(assert (<init>/643259939 var1030 var1851)) ; Statement: specialinvoke $r89.<java.util.BitSet: void <init>(int)>($i1) 

(declare-const var1030!1 var1940)
(declare-const var1851!1 Int)
(define-const var504 var1940 var1940-init) ; Statement: $r90 = new java.util.BitSet 
(define-const var2078 Int (var496_size/-1594421051 var1331)) ; Statement: $i2 = interfaceinvoke r1.<java.util.Map: int size()>() 
(assert true)
;(assert (<init>/643259939 var504 var2078)) ; Statement: specialinvoke $r90.<java.util.BitSet: void <init>(int)>($i2) 

(declare-const var504!1 var1940)
(declare-const var2078!1 Int)
(define-const var2251 var1940 var1940-init) ; Statement: $r91 = new java.util.BitSet 
(define-const var188 Int (var496_size/-1594421051 var1331)) ; Statement: $i3 = interfaceinvoke r1.<java.util.Map: int size()>() 
(assert true)
;(assert (<init>/643259939 var2251 var188)) ; Statement: specialinvoke $r91.<java.util.BitSet: void <init>(int)>($i3) 

(declare-const var2251!1 var1940)
(declare-const var188!1 Int)
(define-const var614 Int (var496_size/-1594421051 var1331)) ; Statement: $i4 = interfaceinvoke r1.<java.util.Map: int size()>() 
(define-const var2767 (Array Int Int) arr-Int-init) ; Statement: r6 = newarray (int)[$i4] 
(define-const var2054 Int (var496_size/-1594421051 var1331)) ; Statement: $i5 = interfaceinvoke r1.<java.util.Map: int size()>() 
(define-const var748 Int (+ var2054 1)) ; Statement: $i6 = $i5 + 1 
(assert true)
;(assert (set/1811966405 var1123!1 var748 (ite (= 1 1) true false))) ; Statement: virtualinvoke $r88.<java.util.BitSet: void set(int,boolean)>($i6, 1) 

(declare-const var1123!2 var1940)
(declare-const var748!1 Int)
(declare-const var1097 Int)
(define-const var1978 Int (var496_size/-1594421051 var1331)) ; Statement: $i7 = interfaceinvoke r1.<java.util.Map: int size()>() 
(define-const var983 Int (+ var1978 1)) ; Statement: $i8 = $i7 + 1 
(assert true)
;(assert (set/1811966405 var2251!1 var983 (ite (= 1 1) true false))) ; Statement: virtualinvoke $r91.<java.util.BitSet: void set(int,boolean)>($i8, 1) 

(declare-const var2251!2 var1940)
(declare-const var983!1 Int)
(declare-const var1097!1 Int)
(define-const var3271 Int (var496_size/-1594421051 var1331)) ; Statement: $i9 = interfaceinvoke r1.<java.util.Map: int size()>() 
(define-const var3391 Int (+ var3271 1)) ; Statement: $i10 = $i9 + 1 
(assert true)
;(assert (set/1811966405 var504!1 var3391 (ite (= 1 1) true false))) ; Statement: virtualinvoke $r90.<java.util.BitSet: void set(int,boolean)>($i10, 1) 

(declare-const var504!2 var1940)
(declare-const var3391!1 Int)
(declare-const var1097!2 Int)
(define-const var897 Int (var496_size/-1594421051 var1331)) ; Statement: $i11 = interfaceinvoke r1.<java.util.Map: int size()>() 
(define-const var1082 Int (+ var897 1)) ; Statement: $i12 = $i11 + 1 
(assert true)
;(assert (set/1811966405 var1030!1 var1082 (ite (= 1 1) true false))) ; Statement: virtualinvoke $r89.<java.util.BitSet: void set(int,boolean)>($i12, 1) 

(declare-const var1030!2 var1940)
(declare-const var1082!1 Int)
(declare-const var1097!3 Int)
(define-const var898 (Array Int var319) arr-var319-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(declare-const var898!1 (Array Int var319))
(assert (not (= var898!1 null-__Array__Int__var319__)))
(assert (= (select var898!1 0) (cast-from-String-to-var319 "public static final String[] jjstrLiteralImages = {"))) ; Statement: $r8[0] = "public static final String[] jjstrLiteralImages = {" 
(assert true)
;(assert (genCodeLine/787715242 var102 var898!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r8) 

(declare-const var102!1 var2320)
(declare-const var898!2 (Array Int var319))
(define-const var2618 Int 0) ; Statement: i22 = 0 
(define-const var2813 var2409 (var496_keySet/-712633290 var1331)) ; Statement: $r9 = interfaceinvoke r1.<java.util.Map: java.util.Set keySet()>() 
(define-const var2553 Iterator (var2409_iterator/1911472585 var2813)) ; Statement: r80 = interfaceinvoke $r9.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2188 Bool (Iterator_hasNext/-1669924200 var2553)) ; Statement: $z0 = interfaceinvoke r80.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r10 = newarray (java.lang.Object)[1] 
(assert (= (ite var2188 1 0) 0)) ; Cond: $z0 == 0 
(define-const var108 (Array Int var319) arr-var319-init) ; Statement: $r10 = newarray (java.lang.Object)[1] 
(declare-const var108!1 (Array Int var319))
(assert (not (= var108!1 null-__Array__Int__var319__)))
(assert (= (select var108!1 0) (cast-from-String-to-var319 "};"))) ; Statement: $r10[0] = "};" 
(assert true)
;(assert (genCodeLine/787715242 var102!1 var108!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r10) 

(declare-const var102!2 var2320)
(declare-const var108!2 (Array Int var319))
;(assert (var1634_generateBitVector/-1939883418 "jjtoSkip" var1123!2 var102!2)) ; Statement: staticinvoke <org.javacc.parser.TableDrivenJavaCodeGenerator: void generateBitVector(java.lang.String,java.util.BitSet,org.javacc.parser.CodeGenerator)>("jjtoSkip", $r88, r7) 

(declare-const var3340 String)
(declare-const var1123!3 var1940)
(declare-const var102!3 var2320)
;(assert (var1634_generateBitVector/-1939883418 "jjtoSpecial" var1030!2 var102!3)) ; Statement: staticinvoke <org.javacc.parser.TableDrivenJavaCodeGenerator: void generateBitVector(java.lang.String,java.util.BitSet,org.javacc.parser.CodeGenerator)>("jjtoSpecial", $r89, r7) 

(declare-const var3880 String)
(declare-const var1030!3 var1940)
(declare-const var102!4 var2320)
;(assert (var1634_generateBitVector/-1939883418 "jjtoMore" var504!2 var102!4)) ; Statement: staticinvoke <org.javacc.parser.TableDrivenJavaCodeGenerator: void generateBitVector(java.lang.String,java.util.BitSet,org.javacc.parser.CodeGenerator)>("jjtoMore", $r90, r7) 

(declare-const var941 String)
(declare-const var504!3 var1940)
(declare-const var102!5 var2320)
;(assert (var1634_generateBitVector/-1939883418 "jjtoToken" var2251!2 var102!5)) ; Statement: staticinvoke <org.javacc.parser.TableDrivenJavaCodeGenerator: void generateBitVector(java.lang.String,java.util.BitSet,org.javacc.parser.CodeGenerator)>("jjtoToken", $r91, r7) 

(declare-const var3393 String)
(declare-const var2251!3 var1940)
(declare-const var102!6 var2320)
(define-const var2036 (Array Int var319) arr-var319-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var2036!1 (Array Int var319))
(assert (not (= var2036!1 null-__Array__Int__var319__)))
(assert (= (select var2036!1 0) (cast-from-String-to-var319 "private static final int[] jjnewLexState = {"))) ; Statement: $r11[0] = "private static final int[] jjnewLexState = {" 
(assert true)
;(assert (genCodeLine/787715242 var102!6 var2036!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11) 

(declare-const var102!7 var2320)
(declare-const var2036!2 (Array Int var319))
(define-const var1903 Int 0) ; Statement: i27 = 0 
(assert true) ; Non Conditional
(define-const var3060 Int (getLength-Arr-Int-1 var2767)) ; Statement: $i13 = lengthof r6 
 ; Statement: if i27 >= $i13 goto $r12 = newarray (java.lang.Object)[1] 
(assert (>= var1903 var3060)) ; Cond: i27 >= $i13 
(define-const var142 (Array Int var319) arr-var319-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(declare-const var142!1 (Array Int var319))
(assert (not (= var142!1 null-__Array__Int__var319__)))
(assert (= (select var142!1 0) (cast-from-String-to-var319 "};"))) ; Statement: $r12[0] = "};" 
(assert true)
;(assert (genCodeLine/787715242 var102!7 var142!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r12) 

(declare-const var102!8 var2320)
(declare-const var142!2 (Array Int var319))
(define-const var1742 Bool var3608_getStatic/-616544340) ; Statement: $z1 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z1 == 0 goto $r87 = "" 
(assert (not (= (ite var1742 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3629 String "static ") ; Statement: $r87 = "static " 
(define-const var323 String "static ") ; Statement: $r86 = "static " 
(define-const var1996 String "static ") ; Statement: $r85 = "static " 
 ; Statement: goto [?= $r13 = newarray (java.lang.Object)[1]] 
(assert true) ; Non Conditional
(define-const var3283 (Array Int var319) arr-var319-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(define-const var2902 String String-init) ; Statement: $r96 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2902)) ; Statement: specialinvoke $r96.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2902!1 String)
(assert (= var2902!1 ""))
(assert true)
(define-const var97 String (append/672562846 var2902!1 var323)) ; Statement: $r15 = virtualinvoke $r96.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r86) 
(declare-const var2902!2 String)
(assert (= var2902!2 (str.++ var2902!1 var323)))
(assert true)
(define-const var1183 String (append/672562846 var97 "void TokenLexicalActions(Token matchedToken) {")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("void TokenLexicalActions(Token matchedToken) {") 
(declare-const var97!1 String)
(assert (= var97!1 (str.++ var97 "void TokenLexicalActions(Token matchedToken) {")))
(assert true)
(define-const var1998 String (toString/-2075883882 var1183)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3283!1 (Array Int var319))
(assert (not (= var3283!1 null-__Array__Int__var319__)))
(assert (= (select var3283!1 0) (cast-from-String-to-var319 var1998))) ; Statement: $r13[0] = $r17 
(assert true)
;(assert (genCodeLine/787715242 var102!8 var3283!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13) 

(declare-const var102!9 var2320)
(declare-const var3283!2 (Array Int var319))
(define-const var189 var1137 var1137-TOKEN) ; Statement: $r19 = <org.javacc.parser.TokenizerData$MatchType: org.javacc.parser.TokenizerData$MatchType TOKEN> 
(assert true)
;(assert (dumpLexicalActions/-471926748 var3768 var1331 var189 "matchedToken.kind" var102!9)) ; Statement: specialinvoke r18.<org.javacc.parser.TableDrivenJavaCodeGenerator: void dumpLexicalActions(java.util.Map,org.javacc.parser.TokenizerData$MatchType,java.lang.String,org.javacc.parser.CodeGenerator)>(r1, $r19, "matchedToken.kind", r7) 

(declare-const var3768!1 var1634)
(declare-const var1331!1 var496)
(declare-const var189!1 var1137)
(declare-const var821 String)
(declare-const var102!10 var2320)
(define-const var3022 (Array Int var319) arr-var319-init) ; Statement: $r20 = newarray (java.lang.Object)[1] 
(declare-const var3022!1 (Array Int var319))
(assert (not (= var3022!1 null-__Array__Int__var319__)))
(assert (= (select var3022!1 0) (cast-from-String-to-var319 "}"))) ; Statement: $r20[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var102!10 var3022!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r20) 

(declare-const var102!11 var2320)
(declare-const var3022!2 (Array Int var319))
(define-const var3071 (Array Int var319) arr-var319-init) ; Statement: $r21 = newarray (java.lang.Object)[1] 
(define-const var2605 String String-init) ; Statement: $r97 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2605)) ; Statement: specialinvoke $r97.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2605!1 String)
(assert (= var2605!1 ""))
(assert true)
(define-const var215 String (append/672562846 var2605!1 var1996)) ; Statement: $r23 = virtualinvoke $r97.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r85) 
(declare-const var2605!2 String)
(assert (= var2605!2 (str.++ var2605!1 var1996)))
(assert true)
(define-const var2284 String (append/672562846 var215 "void SkipLexicalActions(Token matchedToken) {")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("void SkipLexicalActions(Token matchedToken) {") 
(declare-const var215!1 String)
(assert (= var215!1 (str.++ var215 "void SkipLexicalActions(Token matchedToken) {")))
(assert true)
(define-const var2075 String (toString/-2075883882 var2284)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3071!1 (Array Int var319))
(assert (not (= var3071!1 null-__Array__Int__var319__)))
(assert (= (select var3071!1 0) (cast-from-String-to-var319 var2075))) ; Statement: $r21[0] = $r25 
(assert true)
;(assert (genCodeLine/787715242 var102!11 var3071!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21) 

(declare-const var102!12 var2320)
(declare-const var3071!2 (Array Int var319))
(define-const var3376 var1137 var1137-SKIP) ; Statement: $r26 = <org.javacc.parser.TokenizerData$MatchType: org.javacc.parser.TokenizerData$MatchType SKIP> 
(assert true)
;(assert (dumpLexicalActions/-471926748 var3768!1 var1331!1 var3376 "jjmatchedKind" var102!12)) ; Statement: specialinvoke r18.<org.javacc.parser.TableDrivenJavaCodeGenerator: void dumpLexicalActions(java.util.Map,org.javacc.parser.TokenizerData$MatchType,java.lang.String,org.javacc.parser.CodeGenerator)>(r1, $r26, "jjmatchedKind", r7) 

(declare-const var3768!2 var1634)
(declare-const var1331!2 var496)
(declare-const var3376!1 var1137)
(declare-const var2921 String)
(declare-const var102!13 var2320)
(define-const var123 var1137 var1137-SPECIAL_TOKEN) ; Statement: $r27 = <org.javacc.parser.TokenizerData$MatchType: org.javacc.parser.TokenizerData$MatchType SPECIAL_TOKEN> 
(assert true)
;(assert (dumpLexicalActions/-471926748 var3768!2 var1331!2 var123 "jjmatchedKind" var102!13)) ; Statement: specialinvoke r18.<org.javacc.parser.TableDrivenJavaCodeGenerator: void dumpLexicalActions(java.util.Map,org.javacc.parser.TokenizerData$MatchType,java.lang.String,org.javacc.parser.CodeGenerator)>(r1, $r27, "jjmatchedKind", r7) 

(declare-const var3768!3 var1634)
(declare-const var1331!3 var496)
(declare-const var123!1 var1137)
(declare-const var2921!1 String)
(declare-const var102!14 var2320)
(define-const var943 (Array Int var319) arr-var319-init) ; Statement: $r28 = newarray (java.lang.Object)[1] 
(declare-const var943!1 (Array Int var319))
(assert (not (= var943!1 null-__Array__Int__var319__)))
(assert (= (select var943!1 0) (cast-from-String-to-var319 "}"))) ; Statement: $r28[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var102!14 var943!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r28) 

(declare-const var102!15 var2320)
(declare-const var943!2 (Array Int var319))
(define-const var1057 (Array Int var319) arr-var319-init) ; Statement: $r29 = newarray (java.lang.Object)[1] 
(define-const var2217 String String-init) ; Statement: $r98 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2217)) ; Statement: specialinvoke $r98.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2217!1 String)
(assert (= var2217!1 ""))
(assert true)
(define-const var3760 String (append/672562846 var2217!1 var3629)) ; Statement: $r31 = virtualinvoke $r98.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r87) 
(declare-const var2217!2 String)
(assert (= var2217!2 (str.++ var2217!1 var3629)))
(assert true)
(define-const var3625 String (append/672562846 var3760 "void MoreLexicalActions() {")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("void MoreLexicalActions() {") 
(declare-const var3760!1 String)
(assert (= var3760!1 (str.++ var3760 "void MoreLexicalActions() {")))
(assert true)
(define-const var1895 String (toString/-2075883882 var3625)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1057!1 (Array Int var319))
(assert (not (= var1057!1 null-__Array__Int__var319__)))
(assert (= (select var1057!1 0) (cast-from-String-to-var319 var1895))) ; Statement: $r29[0] = $r33 
(assert true)
;(assert (genCodeLine/787715242 var102!15 var1057!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r29) 

(declare-const var102!16 var2320)
(declare-const var1057!2 (Array Int var319))
(define-const var1211 (Array Int var319) arr-var319-init) ; Statement: $r34 = newarray (java.lang.Object)[1] 
(declare-const var1211!1 (Array Int var319))
(assert (not (= var1211!1 null-__Array__Int__var319__)))
(assert (= (select var1211!1 0) (cast-from-String-to-var319 "jjimageLen += (lengthOfMatch = jjmatchedPos + 1);"))) ; Statement: $r34[0] = "jjimageLen += (lengthOfMatch = jjmatchedPos + 1);" 
(assert true)
;(assert (genCodeLine/787715242 var102!16 var1211!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r34) 

(declare-const var102!17 var2320)
(declare-const var1211!2 (Array Int var319))
(define-const var3065 var1137 var1137-MORE) ; Statement: $r35 = <org.javacc.parser.TokenizerData$MatchType: org.javacc.parser.TokenizerData$MatchType MORE> 
(assert true)
;(assert (dumpLexicalActions/-471926748 var3768!3 var1331!3 var3065 "jjmatchedKind" var102!17)) ; Statement: specialinvoke r18.<org.javacc.parser.TableDrivenJavaCodeGenerator: void dumpLexicalActions(java.util.Map,org.javacc.parser.TokenizerData$MatchType,java.lang.String,org.javacc.parser.CodeGenerator)>(r1, $r35, "jjmatchedKind", r7) 

(declare-const var3768!4 var1634)
(declare-const var1331!4 var496)
(declare-const var3065!1 var1137)
(declare-const var2921!2 String)
(declare-const var102!18 var2320)
(define-const var2670 (Array Int var319) arr-var319-init) ; Statement: $r36 = newarray (java.lang.Object)[1] 
(declare-const var2670!1 (Array Int var319))
(assert (not (= var2670!1 null-__Array__Int__var319__)))
(assert (= (select var2670!1 0) (cast-from-String-to-var319 "}"))) ; Statement: $r36[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var102!18 var2670!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r36) 

(declare-const var102!19 var2320)
(declare-const var2670!2 (Array Int var319))
(define-const var1119 (Array Int var319) arr-var319-init) ; Statement: $r37 = newarray (java.lang.Object)[1] 
(declare-const var1119!1 (Array Int var319))
(assert (not (= var1119!1 null-__Array__Int__var319__)))
(assert (= (select var1119!1 0) (cast-from-String-to-var319 "public String[] lexStateNames = {"))) ; Statement: $r37[0] = "public String[] lexStateNames = {" 
(assert true)
;(assert (genCodeLine/787715242 var102!19 var1119!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r37) 

(declare-const var102!20 var2320)
(declare-const var1119!2 (Array Int var319))
(define-const var2435 Int 0) ; Statement: i28 = 0 
(assert true) ; Non Conditional
(define-const var928 (Array Int String) (lexStateNames/658263060 var3002)) ; Statement: $r84 = r0.<org.javacc.parser.TokenizerData: java.lang.String[] lexStateNames> 
(define-const var1871 Int (getLength-Arr-String-1 var928)) ; Statement: $i29 = lengthof $r84 
 ; Statement: if i28 >= $i29 goto $r38 = newarray (java.lang.Object)[1] 
(assert (>= var2435 var1871)) ; Cond: i28 >= $i29 
(define-const var1233 (Array Int var319) arr-var319-init) ; Statement: $r38 = newarray (java.lang.Object)[1] 
(declare-const var1233!1 (Array Int var319))
(assert (not (= var1233!1 null-__Array__Int__var319__)))
(assert (= (select var1233!1 0) (cast-from-String-to-var319 "};"))) ; Statement: $r38[0] = "};" 
(assert true)
;(assert (genCodeLine/787715242 var102!20 var1233!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r38) 

(declare-const var102!21 var2320)
(declare-const var1233!2 (Array Int var319))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {allMatches/658263060=([org.javacc.parser.TokenizerData], java.util.Map), var1940-init=([], java.util.BitSet), var496_size/-1594421051=([java.util.Map], int), <init>/643259939=([java.util.BitSet, int], void), arr-Int-init=([], int[]), set/1811966405=([java.util.BitSet, int, boolean], void), arr-var319-init=([], java.lang.Object[]), cast-from-String-to-var319=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), var496_keySet/-712633290=([java.util.Map], java.util.Set), var2409_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var1634_generateBitVector/-1939883418=([java.lang.String, java.util.BitSet, org.javacc.parser.CodeGenerator], void), getLength-Arr-Int-1=([int[]], int), var3608_getStatic/-616544340=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), dumpLexicalActions/-471926748=([org.javacc.parser.TableDrivenJavaCodeGenerator, java.util.Map, org.javacc.parser.TokenizerData$MatchType, java.lang.String, org.javacc.parser.CodeGenerator], void), lexStateNames/658263060=([org.javacc.parser.TokenizerData], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var1634=org.javacc.parser.TableDrivenJavaCodeGenerator, var3768=r18, var2320=org.javacc.parser.CodeGenerator, var102=r7, var2762=org.javacc.parser.TokenizerData, var3002=r0, var496=java.util.Map, var1331=r1, var1940=java.util.BitSet, var1123=$r88, var2205=$i0, var1030=$r89, var1851=$i1, var504=$r90, var2078=$i2, var2251=$r91, var188=$i3, var614=$i4, var2767=r6, var2054=$i5, var748=$i6, var1097=1, var1978=$i7, var983=$i8, var3271=$i9, var3391=$i10, var897=$i11, var1082=$i12, var319=java.lang.Object, var898=$r8, var2618=i22, var2409=java.util.Set, var2813=$r9, var2553=r80, var2188=$z0, var108=$r10, var3340="jjtoSkip", var3880="jjtoSpecial", var941="jjtoMore", var3393="jjtoToken", var2036=$r11, var1903=i27, var3060=$i13, var142=$r12, var3608=org.javacc.parser.Options, var1742=$z1, var3629=$r87, var323=$r86, var1996=$r85, var3283=$r13, var2902=$r96, var97=$r15, var1183=$r16, var1998=$r17, var1137=org.javacc.parser.TokenizerData$MatchType, var189=$r19, var821="matchedToken.kind", var3022=$r20, var3071=$r21, var2605=$r97, var215=$r23, var2284=$r24, var2075=$r25, var3376=$r26, var2921="jjmatchedKind", var123=$r27, var943=$r28, var1057=$r29, var2217=$r98, var3760=$r31, var3625=$r32, var1895=$r33, var1211=$r34, var3065=$r35, var2670=$r36, var1119=$r37, var2435=i28, var928=$r84, var1871=$i29, var1233=$r38}
; {org.javacc.parser.TableDrivenJavaCodeGenerator=var1634, r18=var3768, org.javacc.parser.CodeGenerator=var2320, r7=var102, org.javacc.parser.TokenizerData=var2762, r0=var3002, java.util.Map=var496, r1=var1331, java.util.BitSet=var1940, $r88=var1123, $i0=var2205, $r89=var1030, $i1=var1851, $r90=var504, $i2=var2078, $r91=var2251, $i3=var188, $i4=var614, r6=var2767, $i5=var2054, $i6=var748, 1=var1097, $i7=var1978, $i8=var983, $i9=var3271, $i10=var3391, $i11=var897, $i12=var1082, java.lang.Object=var319, $r8=var898, i22=var2618, java.util.Set=var2409, $r9=var2813, r80=var2553, $z0=var2188, $r10=var108, "jjtoSkip"=var3340, "jjtoSpecial"=var3880, "jjtoMore"=var941, "jjtoToken"=var3393, $r11=var2036, i27=var1903, $i13=var3060, $r12=var142, org.javacc.parser.Options=var3608, $z1=var1742, $r87=var3629, $r86=var323, $r85=var1996, $r13=var3283, $r96=var2902, $r15=var97, $r16=var1183, $r17=var1998, org.javacc.parser.TokenizerData$MatchType=var1137, $r19=var189, "matchedToken.kind"=var821, $r20=var3022, $r21=var3071, $r97=var2605, $r23=var215, $r24=var2284, $r25=var2075, $r26=var3376, "jjmatchedKind"=var2921, $r27=var123, $r28=var943, $r29=var1057, $r98=var2217, $r31=var3760, $r32=var3625, $r33=var1895, $r34=var1211, $r35=var3065, $r36=var2670, $r37=var1119, i28=var2435, $r84=var928, $i29=var1871, $r38=var1233}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r18 := @this: org.javacc.parser.TableDrivenJavaCodeGenerator;	r7 := @parameter0: org.javacc.parser.CodeGenerator;	r0 := @parameter1: org.javacc.parser.TokenizerData;	r1 = r0.<org.javacc.parser.TokenizerData: java.util.Map allMatches>;	$r88 = new java.util.BitSet;	$i0 = interfaceinvoke r1.<java.util.Map: int size()>();	specialinvoke $r88.<java.util.BitSet: void <init>(int)>($i0);	$r89 = new java.util.BitSet;	$i1 = interfaceinvoke r1.<java.util.Map: int size()>();	specialinvoke $r89.<java.util.BitSet: void <init>(int)>($i1);	$r90 = new java.util.BitSet;	$i2 = interfaceinvoke r1.<java.util.Map: int size()>();	specialinvoke $r90.<java.util.BitSet: void <init>(int)>($i2);	$r91 = new java.util.BitSet;	$i3 = interfaceinvoke r1.<java.util.Map: int size()>();	specialinvoke $r91.<java.util.BitSet: void <init>(int)>($i3);	$i4 = interfaceinvoke r1.<java.util.Map: int size()>();	r6 = newarray (int)[$i4];	$i5 = interfaceinvoke r1.<java.util.Map: int size()>();	$i6 = $i5 + 1;	virtualinvoke $r88.<java.util.BitSet: void set(int,boolean)>($i6, 1);	$i7 = interfaceinvoke r1.<java.util.Map: int size()>();	$i8 = $i7 + 1;	virtualinvoke $r91.<java.util.BitSet: void set(int,boolean)>($i8, 1);	$i9 = interfaceinvoke r1.<java.util.Map: int size()>();	$i10 = $i9 + 1;	virtualinvoke $r90.<java.util.BitSet: void set(int,boolean)>($i10, 1);	$i11 = interfaceinvoke r1.<java.util.Map: int size()>();	$i12 = $i11 + 1;	virtualinvoke $r89.<java.util.BitSet: void set(int,boolean)>($i12, 1);	$r8 = newarray (java.lang.Object)[1];	$r8[0] = "public static final String[] jjstrLiteralImages = {";	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r8);	i22 = 0;	$r9 = interfaceinvoke r1.<java.util.Map: java.util.Set keySet()>();	r80 = interfaceinvoke $r9.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r80.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r10 = newarray (java.lang.Object)[1];	$r10 = newarray (java.lang.Object)[1];	$r10[0] = "};";	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r10);	staticinvoke <org.javacc.parser.TableDrivenJavaCodeGenerator: void generateBitVector(java.lang.String,java.util.BitSet,org.javacc.parser.CodeGenerator)>("jjtoSkip", $r88, r7);	staticinvoke <org.javacc.parser.TableDrivenJavaCodeGenerator: void generateBitVector(java.lang.String,java.util.BitSet,org.javacc.parser.CodeGenerator)>("jjtoSpecial", $r89, r7);	staticinvoke <org.javacc.parser.TableDrivenJavaCodeGenerator: void generateBitVector(java.lang.String,java.util.BitSet,org.javacc.parser.CodeGenerator)>("jjtoMore", $r90, r7);	staticinvoke <org.javacc.parser.TableDrivenJavaCodeGenerator: void generateBitVector(java.lang.String,java.util.BitSet,org.javacc.parser.CodeGenerator)>("jjtoToken", $r91, r7);	$r11 = newarray (java.lang.Object)[1];	$r11[0] = "private static final int[] jjnewLexState = {";	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11);	i27 = 0;	$i13 = lengthof r6;	if i27 >= $i13 goto $r12 = newarray (java.lang.Object)[1];	$r12 = newarray (java.lang.Object)[1];	$r12[0] = "};";	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r12);	$z1 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z1 == 0 goto $r87 = "";	$r87 = "static ";	$r86 = "static ";	$r85 = "static ";	goto [?= $r13 = newarray (java.lang.Object)[1]];	$r13 = newarray (java.lang.Object)[1];	$r96 = new java.lang.StringBuilder;	specialinvoke $r96.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r96.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r86);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("void TokenLexicalActions(Token matchedToken) {");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r13[0] = $r17;	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13);	$r19 = <org.javacc.parser.TokenizerData$MatchType: org.javacc.parser.TokenizerData$MatchType TOKEN>;	specialinvoke r18.<org.javacc.parser.TableDrivenJavaCodeGenerator: void dumpLexicalActions(java.util.Map,org.javacc.parser.TokenizerData$MatchType,java.lang.String,org.javacc.parser.CodeGenerator)>(r1, $r19, "matchedToken.kind", r7);	$r20 = newarray (java.lang.Object)[1];	$r20[0] = "}";	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r20);	$r21 = newarray (java.lang.Object)[1];	$r97 = new java.lang.StringBuilder;	specialinvoke $r97.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r97.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r85);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("void SkipLexicalActions(Token matchedToken) {");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	$r21[0] = $r25;	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21);	$r26 = <org.javacc.parser.TokenizerData$MatchType: org.javacc.parser.TokenizerData$MatchType SKIP>;	specialinvoke r18.<org.javacc.parser.TableDrivenJavaCodeGenerator: void dumpLexicalActions(java.util.Map,org.javacc.parser.TokenizerData$MatchType,java.lang.String,org.javacc.parser.CodeGenerator)>(r1, $r26, "jjmatchedKind", r7);	$r27 = <org.javacc.parser.TokenizerData$MatchType: org.javacc.parser.TokenizerData$MatchType SPECIAL_TOKEN>;	specialinvoke r18.<org.javacc.parser.TableDrivenJavaCodeGenerator: void dumpLexicalActions(java.util.Map,org.javacc.parser.TokenizerData$MatchType,java.lang.String,org.javacc.parser.CodeGenerator)>(r1, $r27, "jjmatchedKind", r7);	$r28 = newarray (java.lang.Object)[1];	$r28[0] = "}";	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r28);	$r29 = newarray (java.lang.Object)[1];	$r98 = new java.lang.StringBuilder;	specialinvoke $r98.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r98.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r87);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("void MoreLexicalActions() {");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	$r29[0] = $r33;	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r29);	$r34 = newarray (java.lang.Object)[1];	$r34[0] = "jjimageLen += (lengthOfMatch = jjmatchedPos + 1);";	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r34);	$r35 = <org.javacc.parser.TokenizerData$MatchType: org.javacc.parser.TokenizerData$MatchType MORE>;	specialinvoke r18.<org.javacc.parser.TableDrivenJavaCodeGenerator: void dumpLexicalActions(java.util.Map,org.javacc.parser.TokenizerData$MatchType,java.lang.String,org.javacc.parser.CodeGenerator)>(r1, $r35, "jjmatchedKind", r7);	$r36 = newarray (java.lang.Object)[1];	$r36[0] = "}";	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r36);	$r37 = newarray (java.lang.Object)[1];	$r37[0] = "public String[] lexStateNames = {";	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r37);	i28 = 0;	$r84 = r0.<org.javacc.parser.TokenizerData: java.lang.String[] lexStateNames>;	$i29 = lengthof $r84;	if i28 >= $i29 goto $r38 = newarray (java.lang.Object)[1];	$r38 = newarray (java.lang.Object)[1];	$r38[0] = "};";	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r38);	return
;block_num 9