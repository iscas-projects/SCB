(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1471 0)
(declare-sort var2938 0)
(declare-sort var1244 0)
(declare-sort var1812 0)
(declare-sort var1134 0)
(declare-sort var3039 0)
(declare-sort var2668 0)
(declare-sort var3072 0)
(declare-sort var663 0)
(declare-sort var1502 0)
(declare-sort var2766 0)
(declare-sort var863 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCurrentToken/-769398171 (var2938) var1244)
(declare-fun getExpectedTokens/-264551610 (var1471 var2938) var1812)
(declare-fun isNil/-899506418 (var1812) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getVocabulary/1556073641 (var3039) var1134)
(declare-fun cast-from-var2938-to-var3039 (var2938) var3039)
(declare-fun var1134_getDisplayName/1574563075 (var1134 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getInputStream/2128369995 (var2938) var2668)
(declare-fun var2668_LT/-1699631322 (var2668 Int) var1244)
(declare-fun var1244_getType/1377643934 (var1244) Int)
(declare-fun getTokenFactory/84183758 (var2938) var3072)
(declare-fun var663-init () var663)
(declare-fun var1244_getTokenSource/-1383691752 (var1244) var1502)
(declare-fun var1502_getInputStream/82696287 (var1502) var2766)
(declare-fun <init>/1587308532 (var663 var863 var863) void)
(declare-fun cast-from-var1502-to-var863 (var1502) var863)
(declare-fun cast-from-var2766-to-var863 (var2766) var863)
(declare-fun var1244_getLine/-1887331676 (var1244) Int)
(declare-fun var1244_getCharPositionInLine/969483936 (var1244) Int)
(declare-fun var3072_create/-1002010863 (var3072 var663 Int String Int Int Int Int Int) var1244)
(declare-const null-var1471 var1471)
(declare-const null-var2938 var2938)
(declare-const var347 var1471) ; Statement: r2 := @this: org.antlr.v4.runtime.DefaultErrorStrategy 
(assert (not (= var347 null-var1471)))
(declare-const var2562 var2938) ; Statement: r0 := @parameter0: org.antlr.v4.runtime.Parser 
(assert (not (= var2562 null-var2938)))
(assert true)
(define-const var730 var1244 (getCurrentToken/-769398171 var2562)) ; Statement: r1 = virtualinvoke r0.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.Token getCurrentToken()>() 
(assert true)
(define-const var309 var1812 (getExpectedTokens/-264551610 var347 var2562)) ; Statement: r3 = virtualinvoke r2.<org.antlr.v4.runtime.DefaultErrorStrategy: org.antlr.v4.runtime.misc.IntervalSet getExpectedTokens(org.antlr.v4.runtime.Parser)>(r0) 
(define-const var969 Int 0) ; Statement: i1 = 0 
(assert true)
(define-const var3708 Bool (isNil/-899506418 var309)) ; Statement: $z0 = virtualinvoke r3.<org.antlr.v4.runtime.misc.IntervalSet: boolean isNil()>() 
 ; Statement: if $z0 != 0 goto $i5 = (int) -1 
(assert (not (= (ite var3708 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3398 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i1 != $i5 goto $r20 = new java.lang.StringBuilder 
(assert (not (= var969 var3398))) ; Cond: i1 != $i5 
(define-const var2895 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2895)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2895!1 String)
(assert (= var2895!1 ""))
(assert true)
(define-const var1274 String (append/672562846 var2895!1 "<missing ")) ; Statement: $r7 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<missing ") 
(declare-const var2895!2 String)
(assert (= var2895!2 (str.++ var2895!1 "<missing ")))
(assert true)
(define-const var1242 var1134 (getVocabulary/1556073641 (cast-from-var2938-to-var3039 var2562))) ; Statement: $r5 = virtualinvoke r0.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.Vocabulary getVocabulary()>() 
(define-const var2576 String (var1134_getDisplayName/1574563075 var1242 var969)) ; Statement: $r6 = interfaceinvoke $r5.<org.antlr.v4.runtime.Vocabulary: java.lang.String getDisplayName(int)>(i1) 
(assert true)
(define-const var1121 String (append/672562846 var1274 var2576)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1274!1 String)
(assert (= var1274!1 (str.++ var1274 var2576)))
(assert true)
(define-const var1615 String (append/672562846 var1121 ">")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1121!1 String)
(assert (= var1121!1 (str.++ var1121 ">")))
(assert true)
(define-const var450 String (toString/-2075883882 var1615)) ; Statement: r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1285 var1244 var730) ; Statement: r13 = r1 
(assert true)
(define-const var1196 var2668 (getInputStream/2128369995 var2562)) ; Statement: $r10 = virtualinvoke r0.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getInputStream()>() 
(define-const var3958 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
(define-const var3385 var1244 (var2668_LT/-1699631322 var1196 var3958)) ; Statement: $r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token LT(int)>($i7) 
(define-const var319 Int (var1244_getType/1377643934 var730)) ; Statement: $i0 = interfaceinvoke r1.<org.antlr.v4.runtime.Token: int getType()>() 
(define-const var2220 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if $i0 != $i9 goto $r14 = virtualinvoke r0.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenFactory getTokenFactory()>() 
(assert (not (= var319 var2220))) ; Cond: $i0 != $i9 
(assert true)
(define-const var63 var3072 (getTokenFactory/84183758 var2562)) ; Statement: $r14 = virtualinvoke r0.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenFactory getTokenFactory()>() 
(define-const var2439 var663 var663-init) ; Statement: $r21 = new org.antlr.v4.runtime.misc.Pair 
(define-const var1182 var1502 (var1244_getTokenSource/-1383691752 var1285)) ; Statement: $r16 = interfaceinvoke r13.<org.antlr.v4.runtime.Token: org.antlr.v4.runtime.TokenSource getTokenSource()>() 
(define-const var648 var1502 (var1244_getTokenSource/-1383691752 var1285)) ; Statement: $r17 = interfaceinvoke r13.<org.antlr.v4.runtime.Token: org.antlr.v4.runtime.TokenSource getTokenSource()>() 
(define-const var3143 var2766 (var1502_getInputStream/82696287 var648)) ; Statement: $r18 = interfaceinvoke $r17.<org.antlr.v4.runtime.TokenSource: org.antlr.v4.runtime.CharStream getInputStream()>() 
(assert true)
;(assert (<init>/1587308532 var2439 (cast-from-var1502-to-var863 var1182) (cast-from-var2766-to-var863 var3143))) ; Statement: specialinvoke $r21.<org.antlr.v4.runtime.misc.Pair: void <init>(java.lang.Object,java.lang.Object)>($r16, $r18) 

(declare-const var2439!1 var663)
(declare-const var1182!1 var1502)
(declare-const var3143!1 var2766)
(define-const var833 Int (var1244_getLine/-1887331676 var1285)) ; Statement: $i2 = interfaceinvoke r13.<org.antlr.v4.runtime.Token: int getLine()>() 
(define-const var420 Int (var1244_getCharPositionInLine/969483936 var1285)) ; Statement: $i3 = interfaceinvoke r13.<org.antlr.v4.runtime.Token: int getCharPositionInLine()>() 
(define-const var2008 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
(define-const var512 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
(define-const var2568 var1244 (var3072_create/-1002010863 var63 var2439!1 var969 var450 0 var2008 var512 var833 var420)) ; Statement: $r19 = interfaceinvoke $r14.<org.antlr.v4.runtime.TokenFactory: org.antlr.v4.runtime.Token create(org.antlr.v4.runtime.misc.Pair,int,java.lang.String,int,int,int,int,int)>($r21, i1, r12, 0, $i11, $i13, $i2, $i3) 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {getCurrentToken/-769398171=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Token), getExpectedTokens/-264551610=([org.antlr.v4.runtime.DefaultErrorStrategy, org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.misc.IntervalSet), isNil/-899506418=([org.antlr.v4.runtime.misc.IntervalSet], boolean), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getVocabulary/1556073641=([org.antlr.v4.runtime.Recognizer], org.antlr.v4.runtime.Vocabulary), cast-from-var2938-to-var3039=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Recognizer), var1134_getDisplayName/1574563075=([org.antlr.v4.runtime.Vocabulary, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getInputStream/2128369995=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.TokenStream), var2668_LT/-1699631322=([org.antlr.v4.runtime.TokenStream, int], org.antlr.v4.runtime.Token), var1244_getType/1377643934=([org.antlr.v4.runtime.Token], int), getTokenFactory/84183758=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.TokenFactory), var663-init=([], org.antlr.v4.runtime.misc.Pair), var1244_getTokenSource/-1383691752=([org.antlr.v4.runtime.Token], org.antlr.v4.runtime.TokenSource), var1502_getInputStream/82696287=([org.antlr.v4.runtime.TokenSource], org.antlr.v4.runtime.CharStream), <init>/1587308532=([org.antlr.v4.runtime.misc.Pair, java.lang.Object, java.lang.Object], void), cast-from-var1502-to-var863=([org.antlr.v4.runtime.TokenSource], java.lang.Object), cast-from-var2766-to-var863=([org.antlr.v4.runtime.CharStream], java.lang.Object), var1244_getLine/-1887331676=([org.antlr.v4.runtime.Token], int), var1244_getCharPositionInLine/969483936=([org.antlr.v4.runtime.Token], int), var3072_create/-1002010863=([org.antlr.v4.runtime.TokenFactory, org.antlr.v4.runtime.misc.Pair, int, java.lang.String, int, int, int, int, int], org.antlr.v4.runtime.Token)}
; {var1471=org.antlr.v4.runtime.DefaultErrorStrategy, var347=r2, var2938=org.antlr.v4.runtime.Parser, var2562=r0, var1244=org.antlr.v4.runtime.Token, var730=r1, var1812=org.antlr.v4.runtime.misc.IntervalSet, var309=r3, var969=i1, var3708=$z0, var3398=$i5, var2895=$r20, var1274=$r7, var1134=org.antlr.v4.runtime.Vocabulary, var3039=org.antlr.v4.runtime.Recognizer, var1242=$r5, var2576=$r6, var1121=$r8, var1615=$r9, var450=r12, var1285=r13, var2668=org.antlr.v4.runtime.TokenStream, var1196=$r10, var3958=$i7, var3385=$r11, var319=$i0, var2220=$i9, var3072=org.antlr.v4.runtime.TokenFactory, var63=$r14, var663=org.antlr.v4.runtime.misc.Pair, var2439=$r21, var1502=org.antlr.v4.runtime.TokenSource, var1182=$r16, var648=$r17, var2766=org.antlr.v4.runtime.CharStream, var3143=$r18, var863=java.lang.Object, var833=$i2, var420=$i3, var2008=$i11, var512=$i13, var2568=$r19}
; {org.antlr.v4.runtime.DefaultErrorStrategy=var1471, r2=var347, org.antlr.v4.runtime.Parser=var2938, r0=var2562, org.antlr.v4.runtime.Token=var1244, r1=var730, org.antlr.v4.runtime.misc.IntervalSet=var1812, r3=var309, i1=var969, $z0=var3708, $i5=var3398, $r20=var2895, $r7=var1274, org.antlr.v4.runtime.Vocabulary=var1134, org.antlr.v4.runtime.Recognizer=var3039, $r5=var1242, $r6=var2576, $r8=var1121, $r9=var1615, r12=var450, r13=var1285, org.antlr.v4.runtime.TokenStream=var2668, $r10=var1196, $i7=var3958, $r11=var3385, $i0=var319, $i9=var2220, org.antlr.v4.runtime.TokenFactory=var3072, $r14=var63, org.antlr.v4.runtime.misc.Pair=var663, $r21=var2439, org.antlr.v4.runtime.TokenSource=var1502, $r16=var1182, $r17=var648, org.antlr.v4.runtime.CharStream=var2766, $r18=var3143, java.lang.Object=var863, $i2=var833, $i3=var420, $i11=var2008, $i13=var512, $r19=var2568}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.antlr.v4.runtime.DefaultErrorStrategy;	r0 := @parameter0: org.antlr.v4.runtime.Parser;	r1 = virtualinvoke r0.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.Token getCurrentToken()>();	r3 = virtualinvoke r2.<org.antlr.v4.runtime.DefaultErrorStrategy: org.antlr.v4.runtime.misc.IntervalSet getExpectedTokens(org.antlr.v4.runtime.Parser)>(r0);	i1 = 0;	$z0 = virtualinvoke r3.<org.antlr.v4.runtime.misc.IntervalSet: boolean isNil()>();	if $z0 != 0 goto $i5 = (int) -1;	$i5 = (int) -1;	if i1 != $i5 goto $r20 = new java.lang.StringBuilder;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<missing ");	$r5 = virtualinvoke r0.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.Vocabulary getVocabulary()>();	$r6 = interfaceinvoke $r5.<org.antlr.v4.runtime.Vocabulary: java.lang.String getDisplayName(int)>(i1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	r13 = r1;	$r10 = virtualinvoke r0.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getInputStream()>();	$i7 = (int) -1;	$r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token LT(int)>($i7);	$i0 = interfaceinvoke r1.<org.antlr.v4.runtime.Token: int getType()>();	$i9 = (int) -1;	if $i0 != $i9 goto $r14 = virtualinvoke r0.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenFactory getTokenFactory()>();	$r14 = virtualinvoke r0.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenFactory getTokenFactory()>();	$r21 = new org.antlr.v4.runtime.misc.Pair;	$r16 = interfaceinvoke r13.<org.antlr.v4.runtime.Token: org.antlr.v4.runtime.TokenSource getTokenSource()>();	$r17 = interfaceinvoke r13.<org.antlr.v4.runtime.Token: org.antlr.v4.runtime.TokenSource getTokenSource()>();	$r18 = interfaceinvoke $r17.<org.antlr.v4.runtime.TokenSource: org.antlr.v4.runtime.CharStream getInputStream()>();	specialinvoke $r21.<org.antlr.v4.runtime.misc.Pair: void <init>(java.lang.Object,java.lang.Object)>($r16, $r18);	$i2 = interfaceinvoke r13.<org.antlr.v4.runtime.Token: int getLine()>();	$i3 = interfaceinvoke r13.<org.antlr.v4.runtime.Token: int getCharPositionInLine()>();	$i11 = (int) -1;	$i13 = (int) -1;	$r19 = interfaceinvoke $r14.<org.antlr.v4.runtime.TokenFactory: org.antlr.v4.runtime.Token create(org.antlr.v4.runtime.misc.Pair,int,java.lang.String,int,int,int,int,int)>($r21, i1, r12, 0, $i11, $i13, $i2, $i3);	return $r19
;block_num 5