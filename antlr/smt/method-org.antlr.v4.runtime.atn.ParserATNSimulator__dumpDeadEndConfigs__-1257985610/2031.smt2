(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1622 0)
(declare-sort var1360 0)
(declare-sort var2155 0)
(declare-sort var774 0)
(declare-sort var823 0)
(declare-sort var106 0)
(declare-sort var2205 0)
(declare-sort var2655 0)
(declare-sort var999 0)
(declare-sort var2977 0)
(declare-sort var402 0)
(declare-sort var918 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun println/1773605060 (var2155 String) void)
(declare-fun getDeadEndConfigs/667854675 (var1360) var823)
(declare-fun iterator/-269204326 (var823) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var106)
(declare-fun cast-from-var106-to-var2205 (var106) var2205)
(declare-fun state/-2092381073 (var2205) var2655)
(declare-fun getNumberOfTransitions/-683258218 (var2655) Int)
(declare-fun transition/110262428 (var2655 Int) var999)
(declare-fun cast-from-var999-to-var2977 (var999) var2977)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun label/141642260 (var2977) Int)
(declare-fun getTokenName/-2026426139 (var1622 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun parser/145254134 (var1622) var402)
(declare-fun toString/727813534 (var2205 var918 Bool) String)
(declare-fun cast-from-var402-to-var918 (var402) var918)
(declare-const null-var1622 var1622)
(declare-const null-var1360 var1360)
(declare-const var774-err var2155)
(declare-const var3126 var1622) ; Statement: r7 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var3126 null-var1622)))
(declare-const var3317 var1360) ; Statement: r1 := @parameter0: org.antlr.v4.runtime.NoViableAltException 
(assert (not (= var3317 null-var1360)))
(define-const var1640 var2155 var774-err) ; Statement: $r0 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/1773605060 var1640 "dead end configs: ")) ; Statement: virtualinvoke $r0.<java.io.PrintStream: void println(java.lang.String)>("dead end configs: ") 

(declare-const var1640!1 var2155)
(declare-const var1509 String)
(assert true)
(define-const var3898 var823 (getDeadEndConfigs/667854675 var3317)) ; Statement: $r2 = virtualinvoke r1.<org.antlr.v4.runtime.NoViableAltException: org.antlr.v4.runtime.atn.ATNConfigSet getDeadEndConfigs()>() 
(assert true)
(define-const var1260 Iterator (iterator/-269204326 var3898)) ; Statement: r3 = virtualinvoke $r2.<org.antlr.v4.runtime.atn.ATNConfigSet: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2659 Bool (Iterator_hasNext/-1669924200 var1260)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var2659 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2007 var106 (Iterator_next/-1124697587 var1260)) ; Statement: $r4 = interfaceinvoke r3.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1260!1 Iterator)
(define-const var2885 var2205 (cast-from-var106-to-var2205 var2007)) ; Statement: r5 = (org.antlr.v4.runtime.atn.ATNConfig) $r4 
(define-const var564 String "no edges") ; Statement: r20 = "no edges" 
(define-const var3807 var2655 (state/-2092381073 var2885)) ; Statement: $r6 = r5.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.ATNState state> 
(assert true)
(define-const var1772 Int (getNumberOfTransitions/-683258218 var3807)) ; Statement: $i0 = virtualinvoke $r6.<org.antlr.v4.runtime.atn.ATNState: int getNumberOfTransitions()>() 
 ; Statement: if $i0 <= 0 goto $r24 = <java.lang.System: java.io.PrintStream err> 
(assert (not (<= var1772 0))) ; Negate: Cond: $i0 <= 0  
(define-const var2571 var2655 (state/-2092381073 var2885)) ; Statement: $r8 = r5.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.ATNState state> 
(assert true)
(define-const var3727 var999 (transition/110262428 var2571 0)) ; Statement: r9 = virtualinvoke $r8.<org.antlr.v4.runtime.atn.ATNState: org.antlr.v4.runtime.atn.Transition transition(int)>(0) 
(define-const var1733 Bool false) ; Statement: $z1 = r9 instanceof org.antlr.v4.runtime.atn.AtomTransition 
 ; Statement: if $z1 == 0 goto $z2 = r9 instanceof org.antlr.v4.runtime.atn.SetTransition 
(assert (not (= (ite var1733 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var282 var2977 (cast-from-var999-to-var2977 var3727)) ; Statement: r21 = (org.antlr.v4.runtime.atn.AtomTransition) r9 
(define-const var2362 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2362)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2362!1 String)
(assert (= var2362!1 ""))
(assert true)
(define-const var2867 String (append/672562846 var2362!1 "Atom ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Atom ") 
(declare-const var2362!2 String)
(assert (= var2362!2 (str.++ var2362!1 "Atom ")))
(define-const var834 Int (label/141642260 var282)) ; Statement: $i1 = r21.<org.antlr.v4.runtime.atn.AtomTransition: int label> 
(assert true)
(define-const var1924 String (getTokenName/-2026426139 var3126 var834)) ; Statement: $r17 = virtualinvoke r7.<org.antlr.v4.runtime.atn.ParserATNSimulator: java.lang.String getTokenName(int)>($i1) 
(assert true)
(define-const var2976 String (append/672562846 var2867 var1924)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2867!1 String)
(assert (= var2867!1 (str.++ var2867 var1924)))
(assert true)
(define-const var564!1 String (toString/-2075883882 var2976)) ; Statement: r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r24 = <java.lang.System: java.io.PrintStream err>] 
(assert true) ; Non Conditional
(define-const var3590 var2155 var774-err) ; Statement: $r24 = <java.lang.System: java.io.PrintStream err> 
(define-const var667 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var667)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var667!1 String)
(assert (= var667!1 ""))
(define-const var2758 var402 (parser/145254134 var3126)) ; Statement: $r26 = r7.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var2256 String (toString/727813534 var2885 (cast-from-var402-to-var918 var2758) (ite (= 1 1) true false))) ; Statement: $r27 = virtualinvoke r5.<org.antlr.v4.runtime.atn.ATNConfig: java.lang.String toString(org.antlr.v4.runtime.Recognizer,boolean)>($r26, 1) 
(assert true)
(define-const var1734 String (append/672562846 var667!1 var2256)) ; Statement: $r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var667!2 String)
(assert (= var667!2 (str.++ var667!1 var2256)))
(assert true)
(define-const var1050 String (append/672562846 var1734 ":")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1734!1 String)
(assert (= var1734!1 (str.++ var1734 ":")))
(assert true)
(define-const var933 String (append/672562846 var1050 var564!1)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20) 
(declare-const var1050!1 String)
(assert (= var1050!1 (str.++ var1050 var564!1)))
(assert true)
(define-const var467 String (toString/-2075883882 var933)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3590 var467)) ; Statement: virtualinvoke $r24.<java.io.PrintStream: void println(java.lang.String)>($r31) 

(declare-const var3590!1 var2155)
(declare-const var467!1 String)
 ; Statement: goto [?= $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var2659!1 Bool (Iterator_hasNext/-1669924200 var1260!1)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var2659!1 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {println/1773605060=([java.io.PrintStream, java.lang.String], void), getDeadEndConfigs/667854675=([org.antlr.v4.runtime.NoViableAltException], org.antlr.v4.runtime.atn.ATNConfigSet), iterator/-269204326=([org.antlr.v4.runtime.atn.ATNConfigSet], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var106-to-var2205=([java.lang.Object], org.antlr.v4.runtime.atn.ATNConfig), state/-2092381073=([org.antlr.v4.runtime.atn.ATNConfig], org.antlr.v4.runtime.atn.ATNState), getNumberOfTransitions/-683258218=([org.antlr.v4.runtime.atn.ATNState], int), transition/110262428=([org.antlr.v4.runtime.atn.ATNState, int], org.antlr.v4.runtime.atn.Transition), cast-from-var999-to-var2977=([org.antlr.v4.runtime.atn.Transition], org.antlr.v4.runtime.atn.AtomTransition), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), label/141642260=([org.antlr.v4.runtime.atn.AtomTransition], int), getTokenName/-2026426139=([org.antlr.v4.runtime.atn.ParserATNSimulator, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), toString/727813534=([org.antlr.v4.runtime.atn.ATNConfig, org.antlr.v4.runtime.Recognizer, boolean], java.lang.String), cast-from-var402-to-var918=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Recognizer)}
; {var1622=org.antlr.v4.runtime.atn.ParserATNSimulator, var3126=r7, var1360=org.antlr.v4.runtime.NoViableAltException, var3317=r1, var2155=java.io.PrintStream, var774=java.lang.System, var1640=$r0, var1509="dead end configs: ", var823=org.antlr.v4.runtime.atn.ATNConfigSet, var3898=$r2, var1260=r3, var2659=$z0, var106=java.lang.Object, var2007=$r4, var2205=org.antlr.v4.runtime.atn.ATNConfig, var2885=r5, var564=r20, var2655=org.antlr.v4.runtime.atn.ATNState, var3807=$r6, var1772=$i0, var2571=$r8, var999=org.antlr.v4.runtime.atn.Transition, var3727=r9, var1733=$z1, var2977=org.antlr.v4.runtime.atn.AtomTransition, var282=r21, var2362=$r16, var2867=$r18, var834=$i1, var1924=$r17, var2976=$r19, var3590=$r24, var667=$r25, var402=org.antlr.v4.runtime.Parser, var2758=$r26, var918=org.antlr.v4.runtime.Recognizer, var2256=$r27, var1734=$r28, var1050=$r29, var933=$r30, var467=$r31}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var1622, r7=var3126, org.antlr.v4.runtime.NoViableAltException=var1360, r1=var3317, java.io.PrintStream=var2155, java.lang.System=var774, $r0=var1640, "dead end configs: "=var1509, org.antlr.v4.runtime.atn.ATNConfigSet=var823, $r2=var3898, r3=var1260, $z0=var2659, java.lang.Object=var106, $r4=var2007, org.antlr.v4.runtime.atn.ATNConfig=var2205, r5=var2885, r20=var564, org.antlr.v4.runtime.atn.ATNState=var2655, $r6=var3807, $i0=var1772, $r8=var2571, org.antlr.v4.runtime.atn.Transition=var999, r9=var3727, $z1=var1733, org.antlr.v4.runtime.atn.AtomTransition=var2977, r21=var282, $r16=var2362, $r18=var2867, $i1=var834, $r17=var1924, $r19=var2976, $r24=var3590, $r25=var667, org.antlr.v4.runtime.Parser=var402, $r26=var2758, org.antlr.v4.runtime.Recognizer=var918, $r27=var2256, $r28=var1734, $r29=var1050, $r30=var933, $r31=var467}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<org.antlr.v4.runtime.atn.ATNConfig: java.lang.String toString(org.antlr.v4.runtime.Recognizer,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r7 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r1 := @parameter0: org.antlr.v4.runtime.NoViableAltException;	$r0 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r0.<java.io.PrintStream: void println(java.lang.String)>("dead end configs: ");	$r2 = virtualinvoke r1.<org.antlr.v4.runtime.NoViableAltException: org.antlr.v4.runtime.atn.ATNConfigSet getDeadEndConfigs()>();	r3 = virtualinvoke $r2.<org.antlr.v4.runtime.atn.ATNConfigSet: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return;	$r4 = interfaceinvoke r3.<java.util.Iterator: java.lang.Object next()>();	r5 = (org.antlr.v4.runtime.atn.ATNConfig) $r4;	r20 = "no edges";	$r6 = r5.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.ATNState state>;	$i0 = virtualinvoke $r6.<org.antlr.v4.runtime.atn.ATNState: int getNumberOfTransitions()>();	if $i0 <= 0 goto $r24 = <java.lang.System: java.io.PrintStream err>;	$r8 = r5.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.ATNState state>;	r9 = virtualinvoke $r8.<org.antlr.v4.runtime.atn.ATNState: org.antlr.v4.runtime.atn.Transition transition(int)>(0);	$z1 = r9 instanceof org.antlr.v4.runtime.atn.AtomTransition;	if $z1 == 0 goto $z2 = r9 instanceof org.antlr.v4.runtime.atn.SetTransition;	r21 = (org.antlr.v4.runtime.atn.AtomTransition) r9;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Atom ");	$i1 = r21.<org.antlr.v4.runtime.atn.AtomTransition: int label>;	$r17 = virtualinvoke r7.<org.antlr.v4.runtime.atn.ParserATNSimulator: java.lang.String getTokenName(int)>($i1);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r24 = <java.lang.System: java.io.PrintStream err>];	$r24 = <java.lang.System: java.io.PrintStream err>;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r26 = r7.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r27 = virtualinvoke r5.<org.antlr.v4.runtime.atn.ATNConfig: java.lang.String toString(org.antlr.v4.runtime.Recognizer,boolean)>($r26, 1);	$r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r24.<java.io.PrintStream: void println(java.lang.String)>($r31);	goto [?= $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return;	return
;block_num 8