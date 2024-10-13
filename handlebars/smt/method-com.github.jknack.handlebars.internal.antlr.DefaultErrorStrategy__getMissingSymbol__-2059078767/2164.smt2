(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var129 0)
(declare-sort var87 0)
(declare-sort var134 0)
(declare-sort var88 0)
(declare-sort var2021 0)
(declare-sort var3481 0)
(declare-sort var1472 0)
(declare-sort var522 0)
(declare-sort var230 0)
(declare-sort var2733 0)
(declare-sort var3253 0)
(declare-sort var1758 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCurrentToken/-1939156433 (var87) var134)
(declare-fun getExpectedTokens/-787020131 (var129 var87) var88)
(declare-fun isNil/-563919797 (var88) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getVocabulary/1387097077 (var3481) var2021)
(declare-fun cast-from-var87-to-var3481 (var87) var3481)
(declare-fun var2021_getDisplayName/-1919121882 (var2021 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getInputStream/-931086399 (var87) var1472)
(declare-fun var1472_LT/-1327699634 (var1472 Int) var134)
(declare-fun var134_getType/665307457 (var134) Int)
(declare-fun getTokenFactory/1999186884 (var87) var522)
(declare-fun var230-init () var230)
(declare-fun var134_getTokenSource/662618352 (var134) var2733)
(declare-fun var2733_getInputStream/-677263395 (var2733) var3253)
(declare-fun <init>/331376177 (var230 var1758 var1758) void)
(declare-fun cast-from-var2733-to-var1758 (var2733) var1758)
(declare-fun cast-from-var3253-to-var1758 (var3253) var1758)
(declare-fun var134_getLine/1695299143 (var134) Int)
(declare-fun var134_getCharPositionInLine/-1512232701 (var134) Int)
(declare-fun var522_create/-1971486104 (var522 var230 Int String Int Int Int Int Int) var134)
(declare-const null-var129 var129)
(declare-const null-var87 var87)
(declare-const var3311 var129) ; Statement: r2 := @this: com.github.jknack.handlebars.internal.antlr.DefaultErrorStrategy 
(assert (not (= var3311 null-var129)))
(declare-const var893 var87) ; Statement: r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.Parser 
(assert (not (= var893 null-var87)))
(assert true)
(define-const var1326 var134 (getCurrentToken/-1939156433 var893)) ; Statement: r1 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.Token getCurrentToken()>() 
(assert true)
(define-const var1770 var88 (getExpectedTokens/-787020131 var3311 var893)) ; Statement: r3 = virtualinvoke r2.<com.github.jknack.handlebars.internal.antlr.DefaultErrorStrategy: com.github.jknack.handlebars.internal.antlr.misc.IntervalSet getExpectedTokens(com.github.jknack.handlebars.internal.antlr.Parser)>(r0) 
(define-const var748 Int 0) ; Statement: i1 = 0 
(assert true)
(define-const var822 Bool (isNil/-563919797 var1770)) ; Statement: $z0 = virtualinvoke r3.<com.github.jknack.handlebars.internal.antlr.misc.IntervalSet: boolean isNil()>() 
 ; Statement: if $z0 != 0 goto $i5 = (int) -1 
(assert (not (= (ite var822 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2082 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i1 != $i5 goto $r20 = new java.lang.StringBuilder 
(assert (not (= var748 var2082))) ; Cond: i1 != $i5 
(define-const var1011 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1011)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1011!1 String)
(assert (= var1011!1 ""))
(assert true)
(define-const var3746 String (append/672562846 var1011!1 "<missing ")) ; Statement: $r7 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<missing ") 
(declare-const var1011!2 String)
(assert (= var1011!2 (str.++ var1011!1 "<missing ")))
(assert true)
(define-const var2862 var2021 (getVocabulary/1387097077 (cast-from-var87-to-var3481 var893))) ; Statement: $r5 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.Vocabulary getVocabulary()>() 
(define-const var3131 String (var2021_getDisplayName/-1919121882 var2862 var748)) ; Statement: $r6 = interfaceinvoke $r5.<com.github.jknack.handlebars.internal.antlr.Vocabulary: java.lang.String getDisplayName(int)>(i1) 
(assert true)
(define-const var3269 String (append/672562846 var3746 var3131)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3746!1 String)
(assert (= var3746!1 (str.++ var3746 var3131)))
(assert true)
(define-const var1951 String (append/672562846 var3269 ">")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var3269!1 String)
(assert (= var3269!1 (str.++ var3269 ">")))
(assert true)
(define-const var1163 String (toString/-2075883882 var1951)) ; Statement: r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2549 var134 var1326) ; Statement: r13 = r1 
(assert true)
(define-const var1069 var1472 (getInputStream/-931086399 var893)) ; Statement: $r10 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getInputStream()>() 
(define-const var2696 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
(define-const var3135 var134 (var1472_LT/-1327699634 var1069 var2696)) ; Statement: $r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: com.github.jknack.handlebars.internal.antlr.Token LT(int)>($i7) 
(define-const var831 Int (var134_getType/665307457 var1326)) ; Statement: $i0 = interfaceinvoke r1.<com.github.jknack.handlebars.internal.antlr.Token: int getType()>() 
(define-const var2698 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if $i0 != $i9 goto $r14 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenFactory getTokenFactory()>() 
(assert (not (= var831 var2698))) ; Cond: $i0 != $i9 
(assert true)
(define-const var347 var522 (getTokenFactory/1999186884 var893)) ; Statement: $r14 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenFactory getTokenFactory()>() 
(define-const var119 var230 var230-init) ; Statement: $r21 = new com.github.jknack.handlebars.internal.antlr.misc.Pair 
(define-const var2582 var2733 (var134_getTokenSource/662618352 var2549)) ; Statement: $r16 = interfaceinvoke r13.<com.github.jknack.handlebars.internal.antlr.Token: com.github.jknack.handlebars.internal.antlr.TokenSource getTokenSource()>() 
(define-const var290 var2733 (var134_getTokenSource/662618352 var2549)) ; Statement: $r17 = interfaceinvoke r13.<com.github.jknack.handlebars.internal.antlr.Token: com.github.jknack.handlebars.internal.antlr.TokenSource getTokenSource()>() 
(define-const var2253 var3253 (var2733_getInputStream/-677263395 var290)) ; Statement: $r18 = interfaceinvoke $r17.<com.github.jknack.handlebars.internal.antlr.TokenSource: com.github.jknack.handlebars.internal.antlr.CharStream getInputStream()>() 
(assert true)
;(assert (<init>/331376177 var119 (cast-from-var2733-to-var1758 var2582) (cast-from-var3253-to-var1758 var2253))) ; Statement: specialinvoke $r21.<com.github.jknack.handlebars.internal.antlr.misc.Pair: void <init>(java.lang.Object,java.lang.Object)>($r16, $r18) 

(declare-const var119!1 var230)
(declare-const var2582!1 var2733)
(declare-const var2253!1 var3253)
(define-const var1878 Int (var134_getLine/1695299143 var2549)) ; Statement: $i2 = interfaceinvoke r13.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>() 
(define-const var1784 Int (var134_getCharPositionInLine/-1512232701 var2549)) ; Statement: $i3 = interfaceinvoke r13.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>() 
(define-const var3663 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
(define-const var2545 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
(define-const var2777 var134 (var522_create/-1971486104 var347 var119!1 var748 var1163 0 var3663 var2545 var1878 var1784)) ; Statement: $r19 = interfaceinvoke $r14.<com.github.jknack.handlebars.internal.antlr.TokenFactory: com.github.jknack.handlebars.internal.antlr.Token create(com.github.jknack.handlebars.internal.antlr.misc.Pair,int,java.lang.String,int,int,int,int,int)>($r21, i1, r12, 0, $i11, $i13, $i2, $i3) 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {getCurrentToken/-1939156433=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.Token), getExpectedTokens/-787020131=([com.github.jknack.handlebars.internal.antlr.DefaultErrorStrategy, com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.misc.IntervalSet), isNil/-563919797=([com.github.jknack.handlebars.internal.antlr.misc.IntervalSet], boolean), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getVocabulary/1387097077=([com.github.jknack.handlebars.internal.antlr.Recognizer], com.github.jknack.handlebars.internal.antlr.Vocabulary), cast-from-var87-to-var3481=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.Recognizer), var2021_getDisplayName/-1919121882=([com.github.jknack.handlebars.internal.antlr.Vocabulary, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getInputStream/-931086399=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.TokenStream), var1472_LT/-1327699634=([com.github.jknack.handlebars.internal.antlr.TokenStream, int], com.github.jknack.handlebars.internal.antlr.Token), var134_getType/665307457=([com.github.jknack.handlebars.internal.antlr.Token], int), getTokenFactory/1999186884=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.TokenFactory), var230-init=([], com.github.jknack.handlebars.internal.antlr.misc.Pair), var134_getTokenSource/662618352=([com.github.jknack.handlebars.internal.antlr.Token], com.github.jknack.handlebars.internal.antlr.TokenSource), var2733_getInputStream/-677263395=([com.github.jknack.handlebars.internal.antlr.TokenSource], com.github.jknack.handlebars.internal.antlr.CharStream), <init>/331376177=([com.github.jknack.handlebars.internal.antlr.misc.Pair, java.lang.Object, java.lang.Object], void), cast-from-var2733-to-var1758=([com.github.jknack.handlebars.internal.antlr.TokenSource], java.lang.Object), cast-from-var3253-to-var1758=([com.github.jknack.handlebars.internal.antlr.CharStream], java.lang.Object), var134_getLine/1695299143=([com.github.jknack.handlebars.internal.antlr.Token], int), var134_getCharPositionInLine/-1512232701=([com.github.jknack.handlebars.internal.antlr.Token], int), var522_create/-1971486104=([com.github.jknack.handlebars.internal.antlr.TokenFactory, com.github.jknack.handlebars.internal.antlr.misc.Pair, int, java.lang.String, int, int, int, int, int], com.github.jknack.handlebars.internal.antlr.Token)}
; {var129=com.github.jknack.handlebars.internal.antlr.DefaultErrorStrategy, var3311=r2, var87=com.github.jknack.handlebars.internal.antlr.Parser, var893=r0, var134=com.github.jknack.handlebars.internal.antlr.Token, var1326=r1, var88=com.github.jknack.handlebars.internal.antlr.misc.IntervalSet, var1770=r3, var748=i1, var822=$z0, var2082=$i5, var1011=$r20, var3746=$r7, var2021=com.github.jknack.handlebars.internal.antlr.Vocabulary, var3481=com.github.jknack.handlebars.internal.antlr.Recognizer, var2862=$r5, var3131=$r6, var3269=$r8, var1951=$r9, var1163=r12, var2549=r13, var1472=com.github.jknack.handlebars.internal.antlr.TokenStream, var1069=$r10, var2696=$i7, var3135=$r11, var831=$i0, var2698=$i9, var522=com.github.jknack.handlebars.internal.antlr.TokenFactory, var347=$r14, var230=com.github.jknack.handlebars.internal.antlr.misc.Pair, var119=$r21, var2733=com.github.jknack.handlebars.internal.antlr.TokenSource, var2582=$r16, var290=$r17, var3253=com.github.jknack.handlebars.internal.antlr.CharStream, var2253=$r18, var1758=java.lang.Object, var1878=$i2, var1784=$i3, var3663=$i11, var2545=$i13, var2777=$r19}
; {com.github.jknack.handlebars.internal.antlr.DefaultErrorStrategy=var129, r2=var3311, com.github.jknack.handlebars.internal.antlr.Parser=var87, r0=var893, com.github.jknack.handlebars.internal.antlr.Token=var134, r1=var1326, com.github.jknack.handlebars.internal.antlr.misc.IntervalSet=var88, r3=var1770, i1=var748, $z0=var822, $i5=var2082, $r20=var1011, $r7=var3746, com.github.jknack.handlebars.internal.antlr.Vocabulary=var2021, com.github.jknack.handlebars.internal.antlr.Recognizer=var3481, $r5=var2862, $r6=var3131, $r8=var3269, $r9=var1951, r12=var1163, r13=var2549, com.github.jknack.handlebars.internal.antlr.TokenStream=var1472, $r10=var1069, $i7=var2696, $r11=var3135, $i0=var831, $i9=var2698, com.github.jknack.handlebars.internal.antlr.TokenFactory=var522, $r14=var347, com.github.jknack.handlebars.internal.antlr.misc.Pair=var230, $r21=var119, com.github.jknack.handlebars.internal.antlr.TokenSource=var2733, $r16=var2582, $r17=var290, com.github.jknack.handlebars.internal.antlr.CharStream=var3253, $r18=var2253, java.lang.Object=var1758, $i2=var1878, $i3=var1784, $i11=var3663, $i13=var2545, $r19=var2777}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.github.jknack.handlebars.internal.antlr.DefaultErrorStrategy;	r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.Parser;	r1 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.Token getCurrentToken()>();	r3 = virtualinvoke r2.<com.github.jknack.handlebars.internal.antlr.DefaultErrorStrategy: com.github.jknack.handlebars.internal.antlr.misc.IntervalSet getExpectedTokens(com.github.jknack.handlebars.internal.antlr.Parser)>(r0);	i1 = 0;	$z0 = virtualinvoke r3.<com.github.jknack.handlebars.internal.antlr.misc.IntervalSet: boolean isNil()>();	if $z0 != 0 goto $i5 = (int) -1;	$i5 = (int) -1;	if i1 != $i5 goto $r20 = new java.lang.StringBuilder;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<missing ");	$r5 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.Vocabulary getVocabulary()>();	$r6 = interfaceinvoke $r5.<com.github.jknack.handlebars.internal.antlr.Vocabulary: java.lang.String getDisplayName(int)>(i1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	r13 = r1;	$r10 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getInputStream()>();	$i7 = (int) -1;	$r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: com.github.jknack.handlebars.internal.antlr.Token LT(int)>($i7);	$i0 = interfaceinvoke r1.<com.github.jknack.handlebars.internal.antlr.Token: int getType()>();	$i9 = (int) -1;	if $i0 != $i9 goto $r14 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenFactory getTokenFactory()>();	$r14 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenFactory getTokenFactory()>();	$r21 = new com.github.jknack.handlebars.internal.antlr.misc.Pair;	$r16 = interfaceinvoke r13.<com.github.jknack.handlebars.internal.antlr.Token: com.github.jknack.handlebars.internal.antlr.TokenSource getTokenSource()>();	$r17 = interfaceinvoke r13.<com.github.jknack.handlebars.internal.antlr.Token: com.github.jknack.handlebars.internal.antlr.TokenSource getTokenSource()>();	$r18 = interfaceinvoke $r17.<com.github.jknack.handlebars.internal.antlr.TokenSource: com.github.jknack.handlebars.internal.antlr.CharStream getInputStream()>();	specialinvoke $r21.<com.github.jknack.handlebars.internal.antlr.misc.Pair: void <init>(java.lang.Object,java.lang.Object)>($r16, $r18);	$i2 = interfaceinvoke r13.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>();	$i3 = interfaceinvoke r13.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>();	$i11 = (int) -1;	$i13 = (int) -1;	$r19 = interfaceinvoke $r14.<com.github.jknack.handlebars.internal.antlr.TokenFactory: com.github.jknack.handlebars.internal.antlr.Token create(com.github.jknack.handlebars.internal.antlr.misc.Pair,int,java.lang.String,int,int,int,int,int)>($r21, i1, r12, 0, $i11, $i13, $i2, $i3);	return $r19
;block_num 5