(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var554 0)
(declare-sort var2849 0)
(declare-sort var1915 0)
(declare-sort var730 0)
(declare-sort var242 0)
(declare-sort var1276 0)
(declare-sort var3747 0)
(declare-sort var682 0)
(declare-sort var3544 0)
(declare-sort var3884 0)
(declare-sort var3504 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun println/1773605060 (var1915 String) void)
(declare-fun getDeadEndConfigs/2093823935 (var2849) var242)
(declare-fun iterator/-658998505 (var242) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var1276)
(declare-fun cast-from-var1276-to-var3747 (var1276) var3747)
(declare-fun state/-95796982 (var3747) var682)
(declare-fun getNumberOfTransitions/-827376135 (var682) Int)
(declare-fun transition/342891646 (var682 Int) var3544)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun parser/310440123 (var554) var3884)
(declare-fun toString/1227196586 (var3747 var3504 Bool) String)
(declare-fun cast-from-var3884-to-var3504 (var3884) var3504)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var554 var554)
(declare-const null-var2849 var2849)
(declare-const var730-err var1915)
(declare-const var83 var554) ; Statement: r7 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var83 null-var554)))
(declare-const var1237 var2849) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.NoViableAltException 
(assert (not (= var1237 null-var2849)))
(define-const var3461 var1915 var730-err) ; Statement: $r0 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/1773605060 var3461 "dead end configs: ")) ; Statement: virtualinvoke $r0.<java.io.PrintStream: void println(java.lang.String)>("dead end configs: ") 

(declare-const var3461!1 var1915)
(declare-const var1784 String)
(assert true)
(define-const var3689 var242 (getDeadEndConfigs/2093823935 var1237)) ; Statement: $r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.NoViableAltException: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet getDeadEndConfigs()>() 
(assert true)
(define-const var3136 Iterator (iterator/-658998505 var3689)) ; Statement: r3 = virtualinvoke $r2.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1948 Bool (Iterator_hasNext/-1669924200 var3136)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var1948 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3590 var1276 (Iterator_next/-1124697587 var3136)) ; Statement: $r4 = interfaceinvoke r3.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3136!1 Iterator)
(define-const var3513 var3747 (cast-from-var1276-to-var3747 var3590)) ; Statement: r5 = (com.github.jknack.handlebars.internal.antlr.atn.ATNConfig) $r4 
(define-const var1261 String "no edges") ; Statement: r20 = "no edges" 
(define-const var3418 var682 (state/-95796982 var3513)) ; Statement: $r6 = r5.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.ATNState state> 
(assert true)
(define-const var1408 Int (getNumberOfTransitions/-827376135 var3418)) ; Statement: $i0 = virtualinvoke $r6.<com.github.jknack.handlebars.internal.antlr.atn.ATNState: int getNumberOfTransitions()>() 
 ; Statement: if $i0 <= 0 goto $r24 = <java.lang.System: java.io.PrintStream err> 
(assert (not (<= var1408 0))) ; Negate: Cond: $i0 <= 0  
(define-const var3415 var682 (state/-95796982 var3513)) ; Statement: $r8 = r5.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.ATNState state> 
(assert true)
(define-const var1580 var3544 (transition/342891646 var3415 0)) ; Statement: r9 = virtualinvoke $r8.<com.github.jknack.handlebars.internal.antlr.atn.ATNState: com.github.jknack.handlebars.internal.antlr.atn.Transition transition(int)>(0) 
(define-const var2530 Bool false) ; Statement: $z1 = r9 instanceof com.github.jknack.handlebars.internal.antlr.atn.AtomTransition 
 ; Statement: if $z1 == 0 goto $z2 = r9 instanceof com.github.jknack.handlebars.internal.antlr.atn.SetTransition 
(assert (= (ite var2530 1 0) 0)) ; Cond: $z1 == 0 
(define-const var446 Bool false) ; Statement: $z2 = r9 instanceof com.github.jknack.handlebars.internal.antlr.atn.SetTransition 
 ; Statement: if $z2 == 0 goto $r24 = <java.lang.System: java.io.PrintStream err> 
(assert (= (ite var446 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2758 var1915 var730-err) ; Statement: $r24 = <java.lang.System: java.io.PrintStream err> 
(define-const var919 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var919)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var919!1 String)
(assert (= var919!1 ""))
(define-const var1338 var3884 (parser/310440123 var83)) ; Statement: $r26 = r7.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var2487 String (toString/1227196586 var3513 (cast-from-var3884-to-var3504 var1338) (ite (= 1 1) true false))) ; Statement: $r27 = virtualinvoke r5.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: java.lang.String toString(com.github.jknack.handlebars.internal.antlr.Recognizer,boolean)>($r26, 1) 
(assert true)
(define-const var661 String (append/672562846 var919!1 var2487)) ; Statement: $r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var919!2 String)
(assert (= var919!2 (str.++ var919!1 var2487)))
(assert true)
(define-const var1458 String (append/672562846 var661 ":")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var661!1 String)
(assert (= var661!1 (str.++ var661 ":")))
(assert true)
(define-const var2268 String (append/672562846 var1458 var1261)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20) 
(declare-const var1458!1 String)
(assert (= var1458!1 (str.++ var1458 var1261)))
(assert true)
(define-const var1406 String (toString/-2075883882 var2268)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2758 var1406)) ; Statement: virtualinvoke $r24.<java.io.PrintStream: void println(java.lang.String)>($r31) 

(declare-const var2758!1 var1915)
(declare-const var1406!1 String)
 ; Statement: goto [?= $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1948!1 Bool (Iterator_hasNext/-1669924200 var3136!1)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var1948!1 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {println/1773605060=([java.io.PrintStream, java.lang.String], void), getDeadEndConfigs/2093823935=([com.github.jknack.handlebars.internal.antlr.NoViableAltException], com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet), iterator/-658998505=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var1276-to-var3747=([java.lang.Object], com.github.jknack.handlebars.internal.antlr.atn.ATNConfig), state/-95796982=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfig], com.github.jknack.handlebars.internal.antlr.atn.ATNState), getNumberOfTransitions/-827376135=([com.github.jknack.handlebars.internal.antlr.atn.ATNState], int), transition/342891646=([com.github.jknack.handlebars.internal.antlr.atn.ATNState, int], com.github.jknack.handlebars.internal.antlr.atn.Transition), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), toString/1227196586=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, com.github.jknack.handlebars.internal.antlr.Recognizer, boolean], java.lang.String), cast-from-var3884-to-var3504=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.Recognizer), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var554=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var83=r7, var2849=com.github.jknack.handlebars.internal.antlr.NoViableAltException, var1237=r1, var1915=java.io.PrintStream, var730=java.lang.System, var3461=$r0, var1784="dead end configs: ", var242=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var3689=$r2, var3136=r3, var1948=$z0, var1276=java.lang.Object, var3590=$r4, var3747=com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, var3513=r5, var1261=r20, var682=com.github.jknack.handlebars.internal.antlr.atn.ATNState, var3418=$r6, var1408=$i0, var3415=$r8, var3544=com.github.jknack.handlebars.internal.antlr.atn.Transition, var1580=r9, var2530=$z1, var446=$z2, var2758=$r24, var919=$r25, var3884=com.github.jknack.handlebars.internal.antlr.Parser, var1338=$r26, var3504=com.github.jknack.handlebars.internal.antlr.Recognizer, var2487=$r27, var661=$r28, var1458=$r29, var2268=$r30, var1406=$r31}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var554, r7=var83, com.github.jknack.handlebars.internal.antlr.NoViableAltException=var2849, r1=var1237, java.io.PrintStream=var1915, java.lang.System=var730, $r0=var3461, "dead end configs: "=var1784, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var242, $r2=var3689, r3=var3136, $z0=var1948, java.lang.Object=var1276, $r4=var3590, com.github.jknack.handlebars.internal.antlr.atn.ATNConfig=var3747, r5=var3513, r20=var1261, com.github.jknack.handlebars.internal.antlr.atn.ATNState=var682, $r6=var3418, $i0=var1408, $r8=var3415, com.github.jknack.handlebars.internal.antlr.atn.Transition=var3544, r9=var1580, $z1=var2530, $z2=var446, $r24=var2758, $r25=var919, com.github.jknack.handlebars.internal.antlr.Parser=var3884, $r26=var1338, com.github.jknack.handlebars.internal.antlr.Recognizer=var3504, $r27=var2487, $r28=var661, $r29=var1458, $r30=var2268, $r31=var1406}
;seq <java.lang.StringBuilder: void <init>()>;	<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: java.lang.String toString(com.github.jknack.handlebars.internal.antlr.Recognizer,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.NoViableAltException;	$r0 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r0.<java.io.PrintStream: void println(java.lang.String)>("dead end configs: ");	$r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.NoViableAltException: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet getDeadEndConfigs()>();	r3 = virtualinvoke $r2.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return;	$r4 = interfaceinvoke r3.<java.util.Iterator: java.lang.Object next()>();	r5 = (com.github.jknack.handlebars.internal.antlr.atn.ATNConfig) $r4;	r20 = "no edges";	$r6 = r5.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.ATNState state>;	$i0 = virtualinvoke $r6.<com.github.jknack.handlebars.internal.antlr.atn.ATNState: int getNumberOfTransitions()>();	if $i0 <= 0 goto $r24 = <java.lang.System: java.io.PrintStream err>;	$r8 = r5.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.ATNState state>;	r9 = virtualinvoke $r8.<com.github.jknack.handlebars.internal.antlr.atn.ATNState: com.github.jknack.handlebars.internal.antlr.atn.Transition transition(int)>(0);	$z1 = r9 instanceof com.github.jknack.handlebars.internal.antlr.atn.AtomTransition;	if $z1 == 0 goto $z2 = r9 instanceof com.github.jknack.handlebars.internal.antlr.atn.SetTransition;	$z2 = r9 instanceof com.github.jknack.handlebars.internal.antlr.atn.SetTransition;	if $z2 == 0 goto $r24 = <java.lang.System: java.io.PrintStream err>;	$r24 = <java.lang.System: java.io.PrintStream err>;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r26 = r7.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r27 = virtualinvoke r5.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: java.lang.String toString(com.github.jknack.handlebars.internal.antlr.Recognizer,boolean)>($r26, 1);	$r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r24.<java.io.PrintStream: void println(java.lang.String)>($r31);	goto [?= $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return;	return
;block_num 8