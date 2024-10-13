(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var277 0)
(declare-sort var681 0)
(declare-sort var2527 0)
(declare-sort var930 0)
(declare-sort var3254 0)
(declare-sort var1726 0)
(declare-sort var3010 0)
(declare-sort var3804 0)
(declare-sort var871 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun allMatches/658263060 (var2527) var930)
(declare-fun var3254-init () var3254)
(declare-fun var930_size/-1594421051 (var930) Int)
(declare-fun <init>/643259939 (var3254 Int) void)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun set/1811966405 (var3254 Int Bool) void)
(declare-fun arr-var1726-init () (Array Int var1726))
(declare-fun cast-from-String-to-var1726 (String) var1726)
(declare-fun genCodeLine/787715242 (var681 (Array Int var1726)) void)
(declare-fun var930_keySet/-712633290 (var930) var3010)
(declare-fun var3010_iterator/1911472585 (var3010) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var277_generateBitVector/-1939883418 (String var3254 var681) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var3804_getStatic/-616544340 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun dumpLexicalActions/-471926748 (var277 var930 var871 String var681) void)
(declare-fun lexStateNames/658263060 (var2527) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var277 var277)
(declare-const null-var681 var681)
(declare-const null-var2527 var2527)
(declare-const null-__Array__Int__var1726__ (Array Int var1726))
(declare-const var871-TOKEN var871)
(declare-const var871-SKIP var871)
(declare-const var871-SPECIAL_TOKEN var871)
(declare-const var871-MORE var871)
(declare-const var2164 var277) ; Statement: r18 := @this: org.javacc.parser.TableDrivenJavaCodeGenerator 
(assert (not (= var2164 null-var277)))
(declare-const var678 var681) ; Statement: r7 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var678 null-var681)))
(declare-const var852 var2527) ; Statement: r0 := @parameter1: org.javacc.parser.TokenizerData 
(assert (not (= var852 null-var2527)))
(define-const var2541 var930 (allMatches/658263060 var852)) ; Statement: r1 = r0.<org.javacc.parser.TokenizerData: java.util.Map allMatches> 
(define-const var308 var3254 var3254-init) ; Statement: $r88 = new java.util.BitSet 
(define-const var1327 Int (var930_size/-1594421051 var2541)) ; Statement: $i0 = interfaceinvoke r1.<java.util.Map: int size()>() 
(assert true)
;(assert (<init>/643259939 var308 var1327)) ; Statement: specialinvoke $r88.<java.util.BitSet: void <init>(int)>($i0) 

(declare-const var308!1 var3254)
(declare-const var1327!1 Int)
(define-const var163 var3254 var3254-init) ; Statement: $r89 = new java.util.BitSet 
(define-const var275 Int (var930_size/-1594421051 var2541)) ; Statement: $i1 = interfaceinvoke r1.<java.util.Map: int size()>() 
(assert true)
;(assert (<init>/643259939 var163 var275)) ; Statement: specialinvoke $r89.<java.util.BitSet: void <init>(int)>($i1) 

(declare-const var163!1 var3254)
(declare-const var275!1 Int)
(define-const var952 var3254 var3254-init) ; Statement: $r90 = new java.util.BitSet 
(define-const var2265 Int (var930_size/-1594421051 var2541)) ; Statement: $i2 = interfaceinvoke r1.<java.util.Map: int size()>() 
(assert true)
;(assert (<init>/643259939 var952 var2265)) ; Statement: specialinvoke $r90.<java.util.BitSet: void <init>(int)>($i2) 

(declare-const var952!1 var3254)
(declare-const var2265!1 Int)
(define-const var50 var3254 var3254-init) ; Statement: $r91 = new java.util.BitSet 
(define-const var1237 Int (var930_size/-1594421051 var2541)) ; Statement: $i3 = interfaceinvoke r1.<java.util.Map: int size()>() 
(assert true)
;(assert (<init>/643259939 var50 var1237)) ; Statement: specialinvoke $r91.<java.util.BitSet: void <init>(int)>($i3) 

(declare-const var50!1 var3254)
(declare-const var1237!1 Int)
(define-const var1530 Int (var930_size/-1594421051 var2541)) ; Statement: $i4 = interfaceinvoke r1.<java.util.Map: int size()>() 
(define-const var733 (Array Int Int) arr-Int-init) ; Statement: r6 = newarray (int)[$i4] 
(define-const var3497 Int (var930_size/-1594421051 var2541)) ; Statement: $i5 = interfaceinvoke r1.<java.util.Map: int size()>() 
(define-const var1076 Int (+ var3497 1)) ; Statement: $i6 = $i5 + 1 
(assert true)
;(assert (set/1811966405 var308!1 var1076 (ite (= 1 1) true false))) ; Statement: virtualinvoke $r88.<java.util.BitSet: void set(int,boolean)>($i6, 1) 

(declare-const var308!2 var3254)
(declare-const var1076!1 Int)
(declare-const var2650 Int)
(define-const var2124 Int (var930_size/-1594421051 var2541)) ; Statement: $i7 = interfaceinvoke r1.<java.util.Map: int size()>() 
(define-const var3570 Int (+ var2124 1)) ; Statement: $i8 = $i7 + 1 
(assert true)
;(assert (set/1811966405 var50!1 var3570 (ite (= 1 1) true false))) ; Statement: virtualinvoke $r91.<java.util.BitSet: void set(int,boolean)>($i8, 1) 

(declare-const var50!2 var3254)
(declare-const var3570!1 Int)
(declare-const var2650!1 Int)
(define-const var2824 Int (var930_size/-1594421051 var2541)) ; Statement: $i9 = interfaceinvoke r1.<java.util.Map: int size()>() 
(define-const var2624 Int (+ var2824 1)) ; Statement: $i10 = $i9 + 1 
(assert true)
;(assert (set/1811966405 var952!1 var2624 (ite (= 1 1) true false))) ; Statement: virtualinvoke $r90.<java.util.BitSet: void set(int,boolean)>($i10, 1) 

(declare-const var952!2 var3254)
(declare-const var2624!1 Int)
(declare-const var2650!2 Int)
(define-const var3513 Int (var930_size/-1594421051 var2541)) ; Statement: $i11 = interfaceinvoke r1.<java.util.Map: int size()>() 
(define-const var1077 Int (+ var3513 1)) ; Statement: $i12 = $i11 + 1 
(assert true)
;(assert (set/1811966405 var163!1 var1077 (ite (= 1 1) true false))) ; Statement: virtualinvoke $r89.<java.util.BitSet: void set(int,boolean)>($i12, 1) 

(declare-const var163!2 var3254)
(declare-const var1077!1 Int)
(declare-const var2650!3 Int)
(define-const var68 (Array Int var1726) arr-var1726-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(declare-const var68!1 (Array Int var1726))
(assert (not (= var68!1 null-__Array__Int__var1726__)))
(assert (= (select var68!1 0) (cast-from-String-to-var1726 "public static final String[] jjstrLiteralImages = {"))) ; Statement: $r8[0] = "public static final String[] jjstrLiteralImages = {" 
(assert true)
;(assert (genCodeLine/787715242 var678 var68!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r8) 

(declare-const var678!1 var681)
(declare-const var68!2 (Array Int var1726))
(define-const var3073 Int 0) ; Statement: i22 = 0 
(define-const var831 var3010 (var930_keySet/-712633290 var2541)) ; Statement: $r9 = interfaceinvoke r1.<java.util.Map: java.util.Set keySet()>() 
(define-const var3782 Iterator (var3010_iterator/1911472585 var831)) ; Statement: r80 = interfaceinvoke $r9.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var570 Bool (Iterator_hasNext/-1669924200 var3782)) ; Statement: $z0 = interfaceinvoke r80.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r10 = newarray (java.lang.Object)[1] 
(assert (= (ite var570 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1599 (Array Int var1726) arr-var1726-init) ; Statement: $r10 = newarray (java.lang.Object)[1] 
(declare-const var1599!1 (Array Int var1726))
(assert (not (= var1599!1 null-__Array__Int__var1726__)))
(assert (= (select var1599!1 0) (cast-from-String-to-var1726 "};"))) ; Statement: $r10[0] = "};" 
(assert true)
;(assert (genCodeLine/787715242 var678!1 var1599!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r10) 

(declare-const var678!2 var681)
(declare-const var1599!2 (Array Int var1726))
;(assert (var277_generateBitVector/-1939883418 "jjtoSkip" var308!2 var678!2)) ; Statement: staticinvoke <org.javacc.parser.TableDrivenJavaCodeGenerator: void generateBitVector(java.lang.String,java.util.BitSet,org.javacc.parser.CodeGenerator)>("jjtoSkip", $r88, r7) 

(declare-const var3532 String)
(declare-const var308!3 var3254)
(declare-const var678!3 var681)
;(assert (var277_generateBitVector/-1939883418 "jjtoSpecial" var163!2 var678!3)) ; Statement: staticinvoke <org.javacc.parser.TableDrivenJavaCodeGenerator: void generateBitVector(java.lang.String,java.util.BitSet,org.javacc.parser.CodeGenerator)>("jjtoSpecial", $r89, r7) 

(declare-const var2691 String)
(declare-const var163!3 var3254)
(declare-const var678!4 var681)
;(assert (var277_generateBitVector/-1939883418 "jjtoMore" var952!2 var678!4)) ; Statement: staticinvoke <org.javacc.parser.TableDrivenJavaCodeGenerator: void generateBitVector(java.lang.String,java.util.BitSet,org.javacc.parser.CodeGenerator)>("jjtoMore", $r90, r7) 

(declare-const var3223 String)
(declare-const var952!3 var3254)
(declare-const var678!5 var681)
;(assert (var277_generateBitVector/-1939883418 "jjtoToken" var50!2 var678!5)) ; Statement: staticinvoke <org.javacc.parser.TableDrivenJavaCodeGenerator: void generateBitVector(java.lang.String,java.util.BitSet,org.javacc.parser.CodeGenerator)>("jjtoToken", $r91, r7) 

(declare-const var2873 String)
(declare-const var50!3 var3254)
(declare-const var678!6 var681)
(define-const var2973 (Array Int var1726) arr-var1726-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var2973!1 (Array Int var1726))
(assert (not (= var2973!1 null-__Array__Int__var1726__)))
(assert (= (select var2973!1 0) (cast-from-String-to-var1726 "private static final int[] jjnewLexState = {"))) ; Statement: $r11[0] = "private static final int[] jjnewLexState = {" 
(assert true)
;(assert (genCodeLine/787715242 var678!6 var2973!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11) 

(declare-const var678!7 var681)
(declare-const var2973!2 (Array Int var1726))
(define-const var2939 Int 0) ; Statement: i27 = 0 
(assert true) ; Non Conditional
(define-const var3759 Int (getLength-Arr-Int-1 var733)) ; Statement: $i13 = lengthof r6 
 ; Statement: if i27 >= $i13 goto $r12 = newarray (java.lang.Object)[1] 
(assert (>= var2939 var3759)) ; Cond: i27 >= $i13 
(define-const var593 (Array Int var1726) arr-var1726-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(declare-const var593!1 (Array Int var1726))
(assert (not (= var593!1 null-__Array__Int__var1726__)))
(assert (= (select var593!1 0) (cast-from-String-to-var1726 "};"))) ; Statement: $r12[0] = "};" 
(assert true)
;(assert (genCodeLine/787715242 var678!7 var593!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r12) 

(declare-const var678!8 var681)
(declare-const var593!2 (Array Int var1726))
(define-const var3734 Bool var3804_getStatic/-616544340) ; Statement: $z1 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z1 == 0 goto $r87 = "" 
(assert (= (ite var3734 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1079 String "") ; Statement: $r87 = "" 
(define-const var2390 String "") ; Statement: $r86 = "" 
(define-const var457 String "") ; Statement: $r85 = "" 
(assert true) ; Non Conditional
(define-const var2157 (Array Int var1726) arr-var1726-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(define-const var1947 String String-init) ; Statement: $r96 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1947)) ; Statement: specialinvoke $r96.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1947!1 String)
(assert (= var1947!1 ""))
(assert true)
(define-const var2041 String (append/672562846 var1947!1 var2390)) ; Statement: $r15 = virtualinvoke $r96.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r86) 
(declare-const var1947!2 String)
(assert (= var1947!2 (str.++ var1947!1 var2390)))
(assert true)
(define-const var2286 String (append/672562846 var2041 "void TokenLexicalActions(Token matchedToken) {")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("void TokenLexicalActions(Token matchedToken) {") 
(declare-const var2041!1 String)
(assert (= var2041!1 (str.++ var2041 "void TokenLexicalActions(Token matchedToken) {")))
(assert true)
(define-const var1553 String (toString/-2075883882 var2286)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2157!1 (Array Int var1726))
(assert (not (= var2157!1 null-__Array__Int__var1726__)))
(assert (= (select var2157!1 0) (cast-from-String-to-var1726 var1553))) ; Statement: $r13[0] = $r17 
(assert true)
;(assert (genCodeLine/787715242 var678!8 var2157!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13) 

(declare-const var678!9 var681)
(declare-const var2157!2 (Array Int var1726))
(define-const var240 var871 var871-TOKEN) ; Statement: $r19 = <org.javacc.parser.TokenizerData$MatchType: org.javacc.parser.TokenizerData$MatchType TOKEN> 
(assert true)
;(assert (dumpLexicalActions/-471926748 var2164 var2541 var240 "matchedToken.kind" var678!9)) ; Statement: specialinvoke r18.<org.javacc.parser.TableDrivenJavaCodeGenerator: void dumpLexicalActions(java.util.Map,org.javacc.parser.TokenizerData$MatchType,java.lang.String,org.javacc.parser.CodeGenerator)>(r1, $r19, "matchedToken.kind", r7) 

(declare-const var2164!1 var277)
(declare-const var2541!1 var930)
(declare-const var240!1 var871)
(declare-const var2544 String)
(declare-const var678!10 var681)
(define-const var2948 (Array Int var1726) arr-var1726-init) ; Statement: $r20 = newarray (java.lang.Object)[1] 
(declare-const var2948!1 (Array Int var1726))
(assert (not (= var2948!1 null-__Array__Int__var1726__)))
(assert (= (select var2948!1 0) (cast-from-String-to-var1726 "}"))) ; Statement: $r20[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var678!10 var2948!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r20) 

(declare-const var678!11 var681)
(declare-const var2948!2 (Array Int var1726))
(define-const var142 (Array Int var1726) arr-var1726-init) ; Statement: $r21 = newarray (java.lang.Object)[1] 
(define-const var1673 String String-init) ; Statement: $r97 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1673)) ; Statement: specialinvoke $r97.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1673!1 String)
(assert (= var1673!1 ""))
(assert true)
(define-const var3661 String (append/672562846 var1673!1 var457)) ; Statement: $r23 = virtualinvoke $r97.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r85) 
(declare-const var1673!2 String)
(assert (= var1673!2 (str.++ var1673!1 var457)))
(assert true)
(define-const var3690 String (append/672562846 var3661 "void SkipLexicalActions(Token matchedToken) {")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("void SkipLexicalActions(Token matchedToken) {") 
(declare-const var3661!1 String)
(assert (= var3661!1 (str.++ var3661 "void SkipLexicalActions(Token matchedToken) {")))
(assert true)
(define-const var2430 String (toString/-2075883882 var3690)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var142!1 (Array Int var1726))
(assert (not (= var142!1 null-__Array__Int__var1726__)))
(assert (= (select var142!1 0) (cast-from-String-to-var1726 var2430))) ; Statement: $r21[0] = $r25 
(assert true)
;(assert (genCodeLine/787715242 var678!11 var142!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21) 

(declare-const var678!12 var681)
(declare-const var142!2 (Array Int var1726))
(define-const var2687 var871 var871-SKIP) ; Statement: $r26 = <org.javacc.parser.TokenizerData$MatchType: org.javacc.parser.TokenizerData$MatchType SKIP> 
(assert true)
;(assert (dumpLexicalActions/-471926748 var2164!1 var2541!1 var2687 "jjmatchedKind" var678!12)) ; Statement: specialinvoke r18.<org.javacc.parser.TableDrivenJavaCodeGenerator: void dumpLexicalActions(java.util.Map,org.javacc.parser.TokenizerData$MatchType,java.lang.String,org.javacc.parser.CodeGenerator)>(r1, $r26, "jjmatchedKind", r7) 

(declare-const var2164!2 var277)
(declare-const var2541!2 var930)
(declare-const var2687!1 var871)
(declare-const var381 String)
(declare-const var678!13 var681)
(define-const var101 var871 var871-SPECIAL_TOKEN) ; Statement: $r27 = <org.javacc.parser.TokenizerData$MatchType: org.javacc.parser.TokenizerData$MatchType SPECIAL_TOKEN> 
(assert true)
;(assert (dumpLexicalActions/-471926748 var2164!2 var2541!2 var101 "jjmatchedKind" var678!13)) ; Statement: specialinvoke r18.<org.javacc.parser.TableDrivenJavaCodeGenerator: void dumpLexicalActions(java.util.Map,org.javacc.parser.TokenizerData$MatchType,java.lang.String,org.javacc.parser.CodeGenerator)>(r1, $r27, "jjmatchedKind", r7) 

(declare-const var2164!3 var277)
(declare-const var2541!3 var930)
(declare-const var101!1 var871)
(declare-const var381!1 String)
(declare-const var678!14 var681)
(define-const var1011 (Array Int var1726) arr-var1726-init) ; Statement: $r28 = newarray (java.lang.Object)[1] 
(declare-const var1011!1 (Array Int var1726))
(assert (not (= var1011!1 null-__Array__Int__var1726__)))
(assert (= (select var1011!1 0) (cast-from-String-to-var1726 "}"))) ; Statement: $r28[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var678!14 var1011!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r28) 

(declare-const var678!15 var681)
(declare-const var1011!2 (Array Int var1726))
(define-const var3721 (Array Int var1726) arr-var1726-init) ; Statement: $r29 = newarray (java.lang.Object)[1] 
(define-const var2021 String String-init) ; Statement: $r98 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2021)) ; Statement: specialinvoke $r98.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2021!1 String)
(assert (= var2021!1 ""))
(assert true)
(define-const var3926 String (append/672562846 var2021!1 var1079)) ; Statement: $r31 = virtualinvoke $r98.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r87) 
(declare-const var2021!2 String)
(assert (= var2021!2 (str.++ var2021!1 var1079)))
(assert true)
(define-const var182 String (append/672562846 var3926 "void MoreLexicalActions() {")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("void MoreLexicalActions() {") 
(declare-const var3926!1 String)
(assert (= var3926!1 (str.++ var3926 "void MoreLexicalActions() {")))
(assert true)
(define-const var2431 String (toString/-2075883882 var182)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3721!1 (Array Int var1726))
(assert (not (= var3721!1 null-__Array__Int__var1726__)))
(assert (= (select var3721!1 0) (cast-from-String-to-var1726 var2431))) ; Statement: $r29[0] = $r33 
(assert true)
;(assert (genCodeLine/787715242 var678!15 var3721!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r29) 

(declare-const var678!16 var681)
(declare-const var3721!2 (Array Int var1726))
(define-const var189 (Array Int var1726) arr-var1726-init) ; Statement: $r34 = newarray (java.lang.Object)[1] 
(declare-const var189!1 (Array Int var1726))
(assert (not (= var189!1 null-__Array__Int__var1726__)))
(assert (= (select var189!1 0) (cast-from-String-to-var1726 "jjimageLen += (lengthOfMatch = jjmatchedPos + 1);"))) ; Statement: $r34[0] = "jjimageLen += (lengthOfMatch = jjmatchedPos + 1);" 
(assert true)
;(assert (genCodeLine/787715242 var678!16 var189!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r34) 

(declare-const var678!17 var681)
(declare-const var189!2 (Array Int var1726))
(define-const var2586 var871 var871-MORE) ; Statement: $r35 = <org.javacc.parser.TokenizerData$MatchType: org.javacc.parser.TokenizerData$MatchType MORE> 
(assert true)
;(assert (dumpLexicalActions/-471926748 var2164!3 var2541!3 var2586 "jjmatchedKind" var678!17)) ; Statement: specialinvoke r18.<org.javacc.parser.TableDrivenJavaCodeGenerator: void dumpLexicalActions(java.util.Map,org.javacc.parser.TokenizerData$MatchType,java.lang.String,org.javacc.parser.CodeGenerator)>(r1, $r35, "jjmatchedKind", r7) 

(declare-const var2164!4 var277)
(declare-const var2541!4 var930)
(declare-const var2586!1 var871)
(declare-const var381!2 String)
(declare-const var678!18 var681)
(define-const var3966 (Array Int var1726) arr-var1726-init) ; Statement: $r36 = newarray (java.lang.Object)[1] 
(declare-const var3966!1 (Array Int var1726))
(assert (not (= var3966!1 null-__Array__Int__var1726__)))
(assert (= (select var3966!1 0) (cast-from-String-to-var1726 "}"))) ; Statement: $r36[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var678!18 var3966!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r36) 

(declare-const var678!19 var681)
(declare-const var3966!2 (Array Int var1726))
(define-const var1283 (Array Int var1726) arr-var1726-init) ; Statement: $r37 = newarray (java.lang.Object)[1] 
(declare-const var1283!1 (Array Int var1726))
(assert (not (= var1283!1 null-__Array__Int__var1726__)))
(assert (= (select var1283!1 0) (cast-from-String-to-var1726 "public String[] lexStateNames = {"))) ; Statement: $r37[0] = "public String[] lexStateNames = {" 
(assert true)
;(assert (genCodeLine/787715242 var678!19 var1283!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r37) 

(declare-const var678!20 var681)
(declare-const var1283!2 (Array Int var1726))
(define-const var2963 Int 0) ; Statement: i28 = 0 
(assert true) ; Non Conditional
(define-const var1265 (Array Int String) (lexStateNames/658263060 var852)) ; Statement: $r84 = r0.<org.javacc.parser.TokenizerData: java.lang.String[] lexStateNames> 
(define-const var3657 Int (getLength-Arr-String-1 var1265)) ; Statement: $i29 = lengthof $r84 
 ; Statement: if i28 >= $i29 goto $r38 = newarray (java.lang.Object)[1] 
(assert (>= var2963 var3657)) ; Cond: i28 >= $i29 
(define-const var403 (Array Int var1726) arr-var1726-init) ; Statement: $r38 = newarray (java.lang.Object)[1] 
(declare-const var403!1 (Array Int var1726))
(assert (not (= var403!1 null-__Array__Int__var1726__)))
(assert (= (select var403!1 0) (cast-from-String-to-var1726 "};"))) ; Statement: $r38[0] = "};" 
(assert true)
;(assert (genCodeLine/787715242 var678!20 var403!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r38) 

(declare-const var678!21 var681)
(declare-const var403!2 (Array Int var1726))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {allMatches/658263060=([org.javacc.parser.TokenizerData], java.util.Map), var3254-init=([], java.util.BitSet), var930_size/-1594421051=([java.util.Map], int), <init>/643259939=([java.util.BitSet, int], void), arr-Int-init=([], int[]), set/1811966405=([java.util.BitSet, int, boolean], void), arr-var1726-init=([], java.lang.Object[]), cast-from-String-to-var1726=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), var930_keySet/-712633290=([java.util.Map], java.util.Set), var3010_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var277_generateBitVector/-1939883418=([java.lang.String, java.util.BitSet, org.javacc.parser.CodeGenerator], void), getLength-Arr-Int-1=([int[]], int), var3804_getStatic/-616544340=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), dumpLexicalActions/-471926748=([org.javacc.parser.TableDrivenJavaCodeGenerator, java.util.Map, org.javacc.parser.TokenizerData$MatchType, java.lang.String, org.javacc.parser.CodeGenerator], void), lexStateNames/658263060=([org.javacc.parser.TokenizerData], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var277=org.javacc.parser.TableDrivenJavaCodeGenerator, var2164=r18, var681=org.javacc.parser.CodeGenerator, var678=r7, var2527=org.javacc.parser.TokenizerData, var852=r0, var930=java.util.Map, var2541=r1, var3254=java.util.BitSet, var308=$r88, var1327=$i0, var163=$r89, var275=$i1, var952=$r90, var2265=$i2, var50=$r91, var1237=$i3, var1530=$i4, var733=r6, var3497=$i5, var1076=$i6, var2650=1, var2124=$i7, var3570=$i8, var2824=$i9, var2624=$i10, var3513=$i11, var1077=$i12, var1726=java.lang.Object, var68=$r8, var3073=i22, var3010=java.util.Set, var831=$r9, var3782=r80, var570=$z0, var1599=$r10, var3532="jjtoSkip", var2691="jjtoSpecial", var3223="jjtoMore", var2873="jjtoToken", var2973=$r11, var2939=i27, var3759=$i13, var593=$r12, var3804=org.javacc.parser.Options, var3734=$z1, var1079=$r87, var2390=$r86, var457=$r85, var2157=$r13, var1947=$r96, var2041=$r15, var2286=$r16, var1553=$r17, var871=org.javacc.parser.TokenizerData$MatchType, var240=$r19, var2544="matchedToken.kind", var2948=$r20, var142=$r21, var1673=$r97, var3661=$r23, var3690=$r24, var2430=$r25, var2687=$r26, var381="jjmatchedKind", var101=$r27, var1011=$r28, var3721=$r29, var2021=$r98, var3926=$r31, var182=$r32, var2431=$r33, var189=$r34, var2586=$r35, var3966=$r36, var1283=$r37, var2963=i28, var1265=$r84, var3657=$i29, var403=$r38}
; {org.javacc.parser.TableDrivenJavaCodeGenerator=var277, r18=var2164, org.javacc.parser.CodeGenerator=var681, r7=var678, org.javacc.parser.TokenizerData=var2527, r0=var852, java.util.Map=var930, r1=var2541, java.util.BitSet=var3254, $r88=var308, $i0=var1327, $r89=var163, $i1=var275, $r90=var952, $i2=var2265, $r91=var50, $i3=var1237, $i4=var1530, r6=var733, $i5=var3497, $i6=var1076, 1=var2650, $i7=var2124, $i8=var3570, $i9=var2824, $i10=var2624, $i11=var3513, $i12=var1077, java.lang.Object=var1726, $r8=var68, i22=var3073, java.util.Set=var3010, $r9=var831, r80=var3782, $z0=var570, $r10=var1599, "jjtoSkip"=var3532, "jjtoSpecial"=var2691, "jjtoMore"=var3223, "jjtoToken"=var2873, $r11=var2973, i27=var2939, $i13=var3759, $r12=var593, org.javacc.parser.Options=var3804, $z1=var3734, $r87=var1079, $r86=var2390, $r85=var457, $r13=var2157, $r96=var1947, $r15=var2041, $r16=var2286, $r17=var1553, org.javacc.parser.TokenizerData$MatchType=var871, $r19=var240, "matchedToken.kind"=var2544, $r20=var2948, $r21=var142, $r97=var1673, $r23=var3661, $r24=var3690, $r25=var2430, $r26=var2687, "jjmatchedKind"=var381, $r27=var101, $r28=var1011, $r29=var3721, $r98=var2021, $r31=var3926, $r32=var182, $r33=var2431, $r34=var189, $r35=var2586, $r36=var3966, $r37=var1283, i28=var2963, $r84=var1265, $i29=var3657, $r38=var403}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r18 := @this: org.javacc.parser.TableDrivenJavaCodeGenerator;	r7 := @parameter0: org.javacc.parser.CodeGenerator;	r0 := @parameter1: org.javacc.parser.TokenizerData;	r1 = r0.<org.javacc.parser.TokenizerData: java.util.Map allMatches>;	$r88 = new java.util.BitSet;	$i0 = interfaceinvoke r1.<java.util.Map: int size()>();	specialinvoke $r88.<java.util.BitSet: void <init>(int)>($i0);	$r89 = new java.util.BitSet;	$i1 = interfaceinvoke r1.<java.util.Map: int size()>();	specialinvoke $r89.<java.util.BitSet: void <init>(int)>($i1);	$r90 = new java.util.BitSet;	$i2 = interfaceinvoke r1.<java.util.Map: int size()>();	specialinvoke $r90.<java.util.BitSet: void <init>(int)>($i2);	$r91 = new java.util.BitSet;	$i3 = interfaceinvoke r1.<java.util.Map: int size()>();	specialinvoke $r91.<java.util.BitSet: void <init>(int)>($i3);	$i4 = interfaceinvoke r1.<java.util.Map: int size()>();	r6 = newarray (int)[$i4];	$i5 = interfaceinvoke r1.<java.util.Map: int size()>();	$i6 = $i5 + 1;	virtualinvoke $r88.<java.util.BitSet: void set(int,boolean)>($i6, 1);	$i7 = interfaceinvoke r1.<java.util.Map: int size()>();	$i8 = $i7 + 1;	virtualinvoke $r91.<java.util.BitSet: void set(int,boolean)>($i8, 1);	$i9 = interfaceinvoke r1.<java.util.Map: int size()>();	$i10 = $i9 + 1;	virtualinvoke $r90.<java.util.BitSet: void set(int,boolean)>($i10, 1);	$i11 = interfaceinvoke r1.<java.util.Map: int size()>();	$i12 = $i11 + 1;	virtualinvoke $r89.<java.util.BitSet: void set(int,boolean)>($i12, 1);	$r8 = newarray (java.lang.Object)[1];	$r8[0] = "public static final String[] jjstrLiteralImages = {";	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r8);	i22 = 0;	$r9 = interfaceinvoke r1.<java.util.Map: java.util.Set keySet()>();	r80 = interfaceinvoke $r9.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r80.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r10 = newarray (java.lang.Object)[1];	$r10 = newarray (java.lang.Object)[1];	$r10[0] = "};";	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r10);	staticinvoke <org.javacc.parser.TableDrivenJavaCodeGenerator: void generateBitVector(java.lang.String,java.util.BitSet,org.javacc.parser.CodeGenerator)>("jjtoSkip", $r88, r7);	staticinvoke <org.javacc.parser.TableDrivenJavaCodeGenerator: void generateBitVector(java.lang.String,java.util.BitSet,org.javacc.parser.CodeGenerator)>("jjtoSpecial", $r89, r7);	staticinvoke <org.javacc.parser.TableDrivenJavaCodeGenerator: void generateBitVector(java.lang.String,java.util.BitSet,org.javacc.parser.CodeGenerator)>("jjtoMore", $r90, r7);	staticinvoke <org.javacc.parser.TableDrivenJavaCodeGenerator: void generateBitVector(java.lang.String,java.util.BitSet,org.javacc.parser.CodeGenerator)>("jjtoToken", $r91, r7);	$r11 = newarray (java.lang.Object)[1];	$r11[0] = "private static final int[] jjnewLexState = {";	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11);	i27 = 0;	$i13 = lengthof r6;	if i27 >= $i13 goto $r12 = newarray (java.lang.Object)[1];	$r12 = newarray (java.lang.Object)[1];	$r12[0] = "};";	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r12);	$z1 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z1 == 0 goto $r87 = "";	$r87 = "";	$r86 = "";	$r85 = "";	$r13 = newarray (java.lang.Object)[1];	$r96 = new java.lang.StringBuilder;	specialinvoke $r96.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r96.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r86);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("void TokenLexicalActions(Token matchedToken) {");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r13[0] = $r17;	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13);	$r19 = <org.javacc.parser.TokenizerData$MatchType: org.javacc.parser.TokenizerData$MatchType TOKEN>;	specialinvoke r18.<org.javacc.parser.TableDrivenJavaCodeGenerator: void dumpLexicalActions(java.util.Map,org.javacc.parser.TokenizerData$MatchType,java.lang.String,org.javacc.parser.CodeGenerator)>(r1, $r19, "matchedToken.kind", r7);	$r20 = newarray (java.lang.Object)[1];	$r20[0] = "}";	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r20);	$r21 = newarray (java.lang.Object)[1];	$r97 = new java.lang.StringBuilder;	specialinvoke $r97.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r97.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r85);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("void SkipLexicalActions(Token matchedToken) {");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	$r21[0] = $r25;	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21);	$r26 = <org.javacc.parser.TokenizerData$MatchType: org.javacc.parser.TokenizerData$MatchType SKIP>;	specialinvoke r18.<org.javacc.parser.TableDrivenJavaCodeGenerator: void dumpLexicalActions(java.util.Map,org.javacc.parser.TokenizerData$MatchType,java.lang.String,org.javacc.parser.CodeGenerator)>(r1, $r26, "jjmatchedKind", r7);	$r27 = <org.javacc.parser.TokenizerData$MatchType: org.javacc.parser.TokenizerData$MatchType SPECIAL_TOKEN>;	specialinvoke r18.<org.javacc.parser.TableDrivenJavaCodeGenerator: void dumpLexicalActions(java.util.Map,org.javacc.parser.TokenizerData$MatchType,java.lang.String,org.javacc.parser.CodeGenerator)>(r1, $r27, "jjmatchedKind", r7);	$r28 = newarray (java.lang.Object)[1];	$r28[0] = "}";	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r28);	$r29 = newarray (java.lang.Object)[1];	$r98 = new java.lang.StringBuilder;	specialinvoke $r98.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r98.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r87);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("void MoreLexicalActions() {");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	$r29[0] = $r33;	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r29);	$r34 = newarray (java.lang.Object)[1];	$r34[0] = "jjimageLen += (lengthOfMatch = jjmatchedPos + 1);";	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r34);	$r35 = <org.javacc.parser.TokenizerData$MatchType: org.javacc.parser.TokenizerData$MatchType MORE>;	specialinvoke r18.<org.javacc.parser.TableDrivenJavaCodeGenerator: void dumpLexicalActions(java.util.Map,org.javacc.parser.TokenizerData$MatchType,java.lang.String,org.javacc.parser.CodeGenerator)>(r1, $r35, "jjmatchedKind", r7);	$r36 = newarray (java.lang.Object)[1];	$r36[0] = "}";	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r36);	$r37 = newarray (java.lang.Object)[1];	$r37[0] = "public String[] lexStateNames = {";	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r37);	i28 = 0;	$r84 = r0.<org.javacc.parser.TokenizerData: java.lang.String[] lexStateNames>;	$i29 = lengthof $r84;	if i28 >= $i29 goto $r38 = newarray (java.lang.Object)[1];	$r38 = newarray (java.lang.Object)[1];	$r38[0] = "};";	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r38);	return
;block_num 9