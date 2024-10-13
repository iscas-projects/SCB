(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3389 0)
(declare-sort var1664 0)
(declare-sort var3465 0)
(declare-sort var1996 0)
(declare-sort var961 0)
(declare-sort var3643 0)
(declare-sort var2315 0)
(declare-sort var2557 0)
(declare-sort var2441 0)
(declare-sort var726 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun println/1773605060 (var3465 String) void)
(declare-fun getDeadEndConfigs/2093823935 (var1664) var961)
(declare-fun iterator/-658998505 (var961) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var3643)
(declare-fun cast-from-var3643-to-var2315 (var3643) var2315)
(declare-fun state/-95796982 (var2315) var2557)
(declare-fun getNumberOfTransitions/-827376135 (var2557) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun parser/310440123 (var3389) var2441)
(declare-fun toString/1227196586 (var2315 var726 Bool) String)
(declare-fun cast-from-var2441-to-var726 (var2441) var726)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3389 var3389)
(declare-const null-var1664 var1664)
(declare-const var1996-err var3465)
(declare-const var870 var3389) ; Statement: r7 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var870 null-var3389)))
(declare-const var3923 var1664) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.NoViableAltException 
(assert (not (= var3923 null-var1664)))
(define-const var3266 var3465 var1996-err) ; Statement: $r0 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/1773605060 var3266 "dead end configs: ")) ; Statement: virtualinvoke $r0.<java.io.PrintStream: void println(java.lang.String)>("dead end configs: ") 

(declare-const var3266!1 var3465)
(declare-const var2550 String)
(assert true)
(define-const var3993 var961 (getDeadEndConfigs/2093823935 var3923)) ; Statement: $r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.NoViableAltException: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet getDeadEndConfigs()>() 
(assert true)
(define-const var2664 Iterator (iterator/-658998505 var3993)) ; Statement: r3 = virtualinvoke $r2.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3759 Bool (Iterator_hasNext/-1669924200 var2664)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var3759 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2347 var3643 (Iterator_next/-1124697587 var2664)) ; Statement: $r4 = interfaceinvoke r3.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2664!1 Iterator)
(define-const var2555 var2315 (cast-from-var3643-to-var2315 var2347)) ; Statement: r5 = (com.github.jknack.handlebars.internal.antlr.atn.ATNConfig) $r4 
(define-const var976 String "no edges") ; Statement: r20 = "no edges" 
(define-const var3355 var2557 (state/-95796982 var2555)) ; Statement: $r6 = r5.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.ATNState state> 
(assert true)
(define-const var1270 Int (getNumberOfTransitions/-827376135 var3355)) ; Statement: $i0 = virtualinvoke $r6.<com.github.jknack.handlebars.internal.antlr.atn.ATNState: int getNumberOfTransitions()>() 
 ; Statement: if $i0 <= 0 goto $r24 = <java.lang.System: java.io.PrintStream err> 
(assert (<= var1270 0)) ; Cond: $i0 <= 0 
(define-const var2847 var3465 var1996-err) ; Statement: $r24 = <java.lang.System: java.io.PrintStream err> 
(define-const var3459 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3459)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3459!1 String)
(assert (= var3459!1 ""))
(define-const var1527 var2441 (parser/310440123 var870)) ; Statement: $r26 = r7.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var3672 String (toString/1227196586 var2555 (cast-from-var2441-to-var726 var1527) (ite (= 1 1) true false))) ; Statement: $r27 = virtualinvoke r5.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: java.lang.String toString(com.github.jknack.handlebars.internal.antlr.Recognizer,boolean)>($r26, 1) 
(assert true)
(define-const var2991 String (append/672562846 var3459!1 var3672)) ; Statement: $r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var3459!2 String)
(assert (= var3459!2 (str.++ var3459!1 var3672)))
(assert true)
(define-const var1617 String (append/672562846 var2991 ":")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2991!1 String)
(assert (= var2991!1 (str.++ var2991 ":")))
(assert true)
(define-const var408 String (append/672562846 var1617 var976)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20) 
(declare-const var1617!1 String)
(assert (= var1617!1 (str.++ var1617 var976)))
(assert true)
(define-const var3692 String (toString/-2075883882 var408)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2847 var3692)) ; Statement: virtualinvoke $r24.<java.io.PrintStream: void println(java.lang.String)>($r31) 

(declare-const var2847!1 var3465)
(declare-const var3692!1 String)
 ; Statement: goto [?= $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var3759!1 Bool (Iterator_hasNext/-1669924200 var2664!1)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var3759!1 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {println/1773605060=([java.io.PrintStream, java.lang.String], void), getDeadEndConfigs/2093823935=([com.github.jknack.handlebars.internal.antlr.NoViableAltException], com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet), iterator/-658998505=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var3643-to-var2315=([java.lang.Object], com.github.jknack.handlebars.internal.antlr.atn.ATNConfig), state/-95796982=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfig], com.github.jknack.handlebars.internal.antlr.atn.ATNState), getNumberOfTransitions/-827376135=([com.github.jknack.handlebars.internal.antlr.atn.ATNState], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), toString/1227196586=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, com.github.jknack.handlebars.internal.antlr.Recognizer, boolean], java.lang.String), cast-from-var2441-to-var726=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.Recognizer), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3389=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var870=r7, var1664=com.github.jknack.handlebars.internal.antlr.NoViableAltException, var3923=r1, var3465=java.io.PrintStream, var1996=java.lang.System, var3266=$r0, var2550="dead end configs: ", var961=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var3993=$r2, var2664=r3, var3759=$z0, var3643=java.lang.Object, var2347=$r4, var2315=com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, var2555=r5, var976=r20, var2557=com.github.jknack.handlebars.internal.antlr.atn.ATNState, var3355=$r6, var1270=$i0, var2847=$r24, var3459=$r25, var2441=com.github.jknack.handlebars.internal.antlr.Parser, var1527=$r26, var726=com.github.jknack.handlebars.internal.antlr.Recognizer, var3672=$r27, var2991=$r28, var1617=$r29, var408=$r30, var3692=$r31}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var3389, r7=var870, com.github.jknack.handlebars.internal.antlr.NoViableAltException=var1664, r1=var3923, java.io.PrintStream=var3465, java.lang.System=var1996, $r0=var3266, "dead end configs: "=var2550, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var961, $r2=var3993, r3=var2664, $z0=var3759, java.lang.Object=var3643, $r4=var2347, com.github.jknack.handlebars.internal.antlr.atn.ATNConfig=var2315, r5=var2555, r20=var976, com.github.jknack.handlebars.internal.antlr.atn.ATNState=var2557, $r6=var3355, $i0=var1270, $r24=var2847, $r25=var3459, com.github.jknack.handlebars.internal.antlr.Parser=var2441, $r26=var1527, com.github.jknack.handlebars.internal.antlr.Recognizer=var726, $r27=var3672, $r28=var2991, $r29=var1617, $r30=var408, $r31=var3692}
;seq <java.lang.StringBuilder: void <init>()>;	<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: java.lang.String toString(com.github.jknack.handlebars.internal.antlr.Recognizer,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.NoViableAltException;	$r0 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r0.<java.io.PrintStream: void println(java.lang.String)>("dead end configs: ");	$r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.NoViableAltException: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet getDeadEndConfigs()>();	r3 = virtualinvoke $r2.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return;	$r4 = interfaceinvoke r3.<java.util.Iterator: java.lang.Object next()>();	r5 = (com.github.jknack.handlebars.internal.antlr.atn.ATNConfig) $r4;	r20 = "no edges";	$r6 = r5.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.ATNState state>;	$i0 = virtualinvoke $r6.<com.github.jknack.handlebars.internal.antlr.atn.ATNState: int getNumberOfTransitions()>();	if $i0 <= 0 goto $r24 = <java.lang.System: java.io.PrintStream err>;	$r24 = <java.lang.System: java.io.PrintStream err>;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r26 = r7.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r27 = virtualinvoke r5.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: java.lang.String toString(com.github.jknack.handlebars.internal.antlr.Recognizer,boolean)>($r26, 1);	$r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r24.<java.io.PrintStream: void println(java.lang.String)>($r31);	goto [?= $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return;	return
;block_num 6