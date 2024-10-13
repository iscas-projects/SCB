(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2436 0)
(declare-sort var1193 0)
(declare-sort var1821 0)
(declare-sort var3655 0)
(declare-sort var1880 0)
(declare-sort var2839 0)
(declare-sort var2568 0)
(declare-sort var3726 0)
(declare-sort var1658 0)
(declare-sort var866 0)
(declare-sort var2334 0)
(declare-sort var3633 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun println/1773605060 (var1821 String) void)
(declare-fun getDeadEndConfigs/2093823935 (var1193) var1880)
(declare-fun iterator/-658998505 (var1880) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var2839)
(declare-fun cast-from-var2839-to-var2568 (var2839) var2568)
(declare-fun state/-95796982 (var2568) var3726)
(declare-fun getNumberOfTransitions/-827376135 (var3726) Int)
(declare-fun transition/342891646 (var3726 Int) var1658)
(declare-fun cast-from-var1658-to-var866 (var1658) var866)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun label/-994607527 (var866) Int)
(declare-fun getTokenName/1989343816 (var2436 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun parser/310440123 (var2436) var2334)
(declare-fun toString/1227196586 (var2568 var3633 Bool) String)
(declare-fun cast-from-var2334-to-var3633 (var2334) var3633)
(declare-const null-var2436 var2436)
(declare-const null-var1193 var1193)
(declare-const var3655-err var1821)
(declare-const var1694 var2436) ; Statement: r7 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var1694 null-var2436)))
(declare-const var3366 var1193) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.NoViableAltException 
(assert (not (= var3366 null-var1193)))
(define-const var1922 var1821 var3655-err) ; Statement: $r0 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/1773605060 var1922 "dead end configs: ")) ; Statement: virtualinvoke $r0.<java.io.PrintStream: void println(java.lang.String)>("dead end configs: ") 

(declare-const var1922!1 var1821)
(declare-const var717 String)
(assert true)
(define-const var2605 var1880 (getDeadEndConfigs/2093823935 var3366)) ; Statement: $r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.NoViableAltException: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet getDeadEndConfigs()>() 
(assert true)
(define-const var3781 Iterator (iterator/-658998505 var2605)) ; Statement: r3 = virtualinvoke $r2.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1926 Bool (Iterator_hasNext/-1669924200 var3781)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var1926 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3443 var2839 (Iterator_next/-1124697587 var3781)) ; Statement: $r4 = interfaceinvoke r3.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3781!1 Iterator)
(define-const var2743 var2568 (cast-from-var2839-to-var2568 var3443)) ; Statement: r5 = (com.github.jknack.handlebars.internal.antlr.atn.ATNConfig) $r4 
(define-const var1960 String "no edges") ; Statement: r20 = "no edges" 
(define-const var3314 var3726 (state/-95796982 var2743)) ; Statement: $r6 = r5.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.ATNState state> 
(assert true)
(define-const var451 Int (getNumberOfTransitions/-827376135 var3314)) ; Statement: $i0 = virtualinvoke $r6.<com.github.jknack.handlebars.internal.antlr.atn.ATNState: int getNumberOfTransitions()>() 
 ; Statement: if $i0 <= 0 goto $r24 = <java.lang.System: java.io.PrintStream err> 
(assert (not (<= var451 0))) ; Negate: Cond: $i0 <= 0  
(define-const var1234 var3726 (state/-95796982 var2743)) ; Statement: $r8 = r5.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.ATNState state> 
(assert true)
(define-const var2462 var1658 (transition/342891646 var1234 0)) ; Statement: r9 = virtualinvoke $r8.<com.github.jknack.handlebars.internal.antlr.atn.ATNState: com.github.jknack.handlebars.internal.antlr.atn.Transition transition(int)>(0) 
(define-const var2951 Bool false) ; Statement: $z1 = r9 instanceof com.github.jknack.handlebars.internal.antlr.atn.AtomTransition 
 ; Statement: if $z1 == 0 goto $z2 = r9 instanceof com.github.jknack.handlebars.internal.antlr.atn.SetTransition 
(assert (not (= (ite var2951 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var103 var866 (cast-from-var1658-to-var866 var2462)) ; Statement: r21 = (com.github.jknack.handlebars.internal.antlr.atn.AtomTransition) r9 
(define-const var3933 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3933)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3933!1 String)
(assert (= var3933!1 ""))
(assert true)
(define-const var1237 String (append/672562846 var3933!1 "Atom ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Atom ") 
(declare-const var3933!2 String)
(assert (= var3933!2 (str.++ var3933!1 "Atom ")))
(define-const var936 Int (label/-994607527 var103)) ; Statement: $i1 = r21.<com.github.jknack.handlebars.internal.antlr.atn.AtomTransition: int label> 
(assert true)
(define-const var828 String (getTokenName/1989343816 var1694 var936)) ; Statement: $r17 = virtualinvoke r7.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: java.lang.String getTokenName(int)>($i1) 
(assert true)
(define-const var502 String (append/672562846 var1237 var828)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1237!1 String)
(assert (= var1237!1 (str.++ var1237 var828)))
(assert true)
(define-const var1960!1 String (toString/-2075883882 var502)) ; Statement: r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r24 = <java.lang.System: java.io.PrintStream err>] 
(assert true) ; Non Conditional
(define-const var1665 var1821 var3655-err) ; Statement: $r24 = <java.lang.System: java.io.PrintStream err> 
(define-const var3200 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3200)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3200!1 String)
(assert (= var3200!1 ""))
(define-const var979 var2334 (parser/310440123 var1694)) ; Statement: $r26 = r7.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var2623 String (toString/1227196586 var2743 (cast-from-var2334-to-var3633 var979) (ite (= 1 1) true false))) ; Statement: $r27 = virtualinvoke r5.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: java.lang.String toString(com.github.jknack.handlebars.internal.antlr.Recognizer,boolean)>($r26, 1) 
(assert true)
(define-const var2985 String (append/672562846 var3200!1 var2623)) ; Statement: $r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var3200!2 String)
(assert (= var3200!2 (str.++ var3200!1 var2623)))
(assert true)
(define-const var2942 String (append/672562846 var2985 ":")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2985!1 String)
(assert (= var2985!1 (str.++ var2985 ":")))
(assert true)
(define-const var729 String (append/672562846 var2942 var1960!1)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20) 
(declare-const var2942!1 String)
(assert (= var2942!1 (str.++ var2942 var1960!1)))
(assert true)
(define-const var41 String (toString/-2075883882 var729)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1665 var41)) ; Statement: virtualinvoke $r24.<java.io.PrintStream: void println(java.lang.String)>($r31) 

(declare-const var1665!1 var1821)
(declare-const var41!1 String)
 ; Statement: goto [?= $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1926!1 Bool (Iterator_hasNext/-1669924200 var3781!1)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var1926!1 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {println/1773605060=([java.io.PrintStream, java.lang.String], void), getDeadEndConfigs/2093823935=([com.github.jknack.handlebars.internal.antlr.NoViableAltException], com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet), iterator/-658998505=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var2839-to-var2568=([java.lang.Object], com.github.jknack.handlebars.internal.antlr.atn.ATNConfig), state/-95796982=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfig], com.github.jknack.handlebars.internal.antlr.atn.ATNState), getNumberOfTransitions/-827376135=([com.github.jknack.handlebars.internal.antlr.atn.ATNState], int), transition/342891646=([com.github.jknack.handlebars.internal.antlr.atn.ATNState, int], com.github.jknack.handlebars.internal.antlr.atn.Transition), cast-from-var1658-to-var866=([com.github.jknack.handlebars.internal.antlr.atn.Transition], com.github.jknack.handlebars.internal.antlr.atn.AtomTransition), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), label/-994607527=([com.github.jknack.handlebars.internal.antlr.atn.AtomTransition], int), getTokenName/1989343816=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), toString/1227196586=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, com.github.jknack.handlebars.internal.antlr.Recognizer, boolean], java.lang.String), cast-from-var2334-to-var3633=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.Recognizer)}
; {var2436=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var1694=r7, var1193=com.github.jknack.handlebars.internal.antlr.NoViableAltException, var3366=r1, var1821=java.io.PrintStream, var3655=java.lang.System, var1922=$r0, var717="dead end configs: ", var1880=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var2605=$r2, var3781=r3, var1926=$z0, var2839=java.lang.Object, var3443=$r4, var2568=com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, var2743=r5, var1960=r20, var3726=com.github.jknack.handlebars.internal.antlr.atn.ATNState, var3314=$r6, var451=$i0, var1234=$r8, var1658=com.github.jknack.handlebars.internal.antlr.atn.Transition, var2462=r9, var2951=$z1, var866=com.github.jknack.handlebars.internal.antlr.atn.AtomTransition, var103=r21, var3933=$r16, var1237=$r18, var936=$i1, var828=$r17, var502=$r19, var1665=$r24, var3200=$r25, var2334=com.github.jknack.handlebars.internal.antlr.Parser, var979=$r26, var3633=com.github.jknack.handlebars.internal.antlr.Recognizer, var2623=$r27, var2985=$r28, var2942=$r29, var729=$r30, var41=$r31}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var2436, r7=var1694, com.github.jknack.handlebars.internal.antlr.NoViableAltException=var1193, r1=var3366, java.io.PrintStream=var1821, java.lang.System=var3655, $r0=var1922, "dead end configs: "=var717, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var1880, $r2=var2605, r3=var3781, $z0=var1926, java.lang.Object=var2839, $r4=var3443, com.github.jknack.handlebars.internal.antlr.atn.ATNConfig=var2568, r5=var2743, r20=var1960, com.github.jknack.handlebars.internal.antlr.atn.ATNState=var3726, $r6=var3314, $i0=var451, $r8=var1234, com.github.jknack.handlebars.internal.antlr.atn.Transition=var1658, r9=var2462, $z1=var2951, com.github.jknack.handlebars.internal.antlr.atn.AtomTransition=var866, r21=var103, $r16=var3933, $r18=var1237, $i1=var936, $r17=var828, $r19=var502, $r24=var1665, $r25=var3200, com.github.jknack.handlebars.internal.antlr.Parser=var2334, $r26=var979, com.github.jknack.handlebars.internal.antlr.Recognizer=var3633, $r27=var2623, $r28=var2985, $r29=var2942, $r30=var729, $r31=var41}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: java.lang.String toString(com.github.jknack.handlebars.internal.antlr.Recognizer,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r7 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.NoViableAltException;	$r0 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r0.<java.io.PrintStream: void println(java.lang.String)>("dead end configs: ");	$r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.NoViableAltException: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet getDeadEndConfigs()>();	r3 = virtualinvoke $r2.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return;	$r4 = interfaceinvoke r3.<java.util.Iterator: java.lang.Object next()>();	r5 = (com.github.jknack.handlebars.internal.antlr.atn.ATNConfig) $r4;	r20 = "no edges";	$r6 = r5.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.ATNState state>;	$i0 = virtualinvoke $r6.<com.github.jknack.handlebars.internal.antlr.atn.ATNState: int getNumberOfTransitions()>();	if $i0 <= 0 goto $r24 = <java.lang.System: java.io.PrintStream err>;	$r8 = r5.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.ATNState state>;	r9 = virtualinvoke $r8.<com.github.jknack.handlebars.internal.antlr.atn.ATNState: com.github.jknack.handlebars.internal.antlr.atn.Transition transition(int)>(0);	$z1 = r9 instanceof com.github.jknack.handlebars.internal.antlr.atn.AtomTransition;	if $z1 == 0 goto $z2 = r9 instanceof com.github.jknack.handlebars.internal.antlr.atn.SetTransition;	r21 = (com.github.jknack.handlebars.internal.antlr.atn.AtomTransition) r9;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Atom ");	$i1 = r21.<com.github.jknack.handlebars.internal.antlr.atn.AtomTransition: int label>;	$r17 = virtualinvoke r7.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: java.lang.String getTokenName(int)>($i1);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r24 = <java.lang.System: java.io.PrintStream err>];	$r24 = <java.lang.System: java.io.PrintStream err>;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r26 = r7.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r27 = virtualinvoke r5.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: java.lang.String toString(com.github.jknack.handlebars.internal.antlr.Recognizer,boolean)>($r26, 1);	$r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r24.<java.io.PrintStream: void println(java.lang.String)>($r31);	goto [?= $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return;	return
;block_num 8