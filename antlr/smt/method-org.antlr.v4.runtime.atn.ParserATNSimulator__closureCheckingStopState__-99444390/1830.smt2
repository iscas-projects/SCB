(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var9 0)
(declare-sort var2424 0)
(declare-sort var558 0)
(declare-sort var1494 0)
(declare-sort var2530 0)
(declare-sort var545 0)
(declare-sort var2986 0)
(declare-sort var3118 0)
(declare-sort var3742 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun parser/145254134 (var9) var2986)
(declare-fun toString/727813534 (var2424 var3118 Bool) String)
(declare-fun cast-from-var2986-to-var3118 (var2986) var3118)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2530 String) void)
(declare-fun state/-2092381073 (var2424) var3742)
(declare-fun closure_/-130406896 (var9 var2424 var558 var1494 Bool Bool Int Bool) void)
(declare-const null-var9 var9)
(declare-const null-var2424 var2424)
(declare-const null-var558 var558)
(declare-const null-var1494 var1494)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const var9-trace_atn_sim Bool)
(declare-const var545-out var2530)
(declare-const var2401 var9) ; Statement: r2 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var2401 null-var9)))
(declare-const var3057 var2424) ; Statement: r0 := @parameter0: org.antlr.v4.runtime.atn.ATNConfig 
(assert (not (= var3057 null-var2424)))
(declare-const var1174 var558) ; Statement: r3 := @parameter1: org.antlr.v4.runtime.atn.ATNConfigSet 
(assert (not (= var1174 null-var558)))
(declare-const var3849 var1494) ; Statement: r4 := @parameter2: java.util.Set 
(assert (not (= var3849 null-var1494)))
(declare-const var3654 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var3654 null-Bool)))
(declare-const var3176 Bool) ; Statement: z3 := @parameter4: boolean 
(assert (not (= var3176 null-Bool)))
(declare-const var1354 Int) ; Statement: i0 := @parameter5: int 
(assert (not (= var1354 null-Int)))
(declare-const var2638 Bool) ; Statement: z4 := @parameter6: boolean 
(assert (not (= var2638 null-Bool)))
(define-const var2833 Bool var9-trace_atn_sim) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean trace_atn_sim> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.ATNState state> 
(assert (not (= (ite var2833 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var378 var2530 var545-out) ; Statement: $r38 = <java.lang.System: java.io.PrintStream out> 
(define-const var1338 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1338)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1338!1 String)
(assert (= var1338!1 ""))
(assert true)
(define-const var999 String (append/672562846 var1338!1 "closure(")) ; Statement: $r41 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("closure(") 
(declare-const var1338!2 String)
(assert (= var1338!2 (str.++ var1338!1 "closure(")))
(define-const var1360 var2986 (parser/145254134 var2401)) ; Statement: $r39 = r2.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var2597 String (toString/727813534 var3057 (cast-from-var2986-to-var3118 var1360) (ite (= 1 1) true false))) ; Statement: $r40 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ATNConfig: java.lang.String toString(org.antlr.v4.runtime.Recognizer,boolean)>($r39, 1) 
(assert true)
(define-const var2475 String (append/672562846 var999 var2597)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var999!1 String)
(assert (= var999!1 (str.++ var999 var2597)))
(assert true)
(define-const var1619 String (append/672562846 var2475 ")")) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2475!1 String)
(assert (= var2475!1 (str.++ var2475 ")")))
(assert true)
(define-const var1424 String (toString/-2075883882 var1619)) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var378 var1424)) ; Statement: virtualinvoke $r38.<java.io.PrintStream: void println(java.lang.String)>($r44) 

(declare-const var378!1 var2530)
(declare-const var1424!1 String)
(assert true) ; Non Conditional
(define-const var2457 var3742 (state/-2092381073 var3057)) ; Statement: $r1 = r0.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.ATNState state> 
(define-const var931 Bool false) ; Statement: $z1 = $r1 instanceof org.antlr.v4.runtime.atn.RuleStopState 
 ; Statement: if $z1 == 0 goto virtualinvoke r2.<org.antlr.v4.runtime.atn.ParserATNSimulator: void closure_(org.antlr.v4.runtime.atn.ATNConfig,org.antlr.v4.runtime.atn.ATNConfigSet,java.util.Set,boolean,boolean,int,boolean)>(r0, r3, r4, z2, z3, i0, z4) 
(assert (= (ite var931 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
;(assert (closure_/-130406896 var2401 var3057 var1174 var3849 var3654 var3176 var1354 var2638)) ; Statement: virtualinvoke r2.<org.antlr.v4.runtime.atn.ParserATNSimulator: void closure_(org.antlr.v4.runtime.atn.ATNConfig,org.antlr.v4.runtime.atn.ATNConfigSet,java.util.Set,boolean,boolean,int,boolean)>(r0, r3, r4, z2, z3, i0, z4) 

(declare-const var2401!1 var9)
(declare-const var3057!1 var2424)
(declare-const var1174!1 var558)
(declare-const var3849!1 var1494)
(declare-const var3654!1 Bool)
(declare-const var3176!1 Bool)
(declare-const var1354!1 Int)
(declare-const var2638!1 Bool)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), toString/727813534=([org.antlr.v4.runtime.atn.ATNConfig, org.antlr.v4.runtime.Recognizer, boolean], java.lang.String), cast-from-var2986-to-var3118=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Recognizer), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), state/-2092381073=([org.antlr.v4.runtime.atn.ATNConfig], org.antlr.v4.runtime.atn.ATNState), closure_/-130406896=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.atn.ATNConfig, org.antlr.v4.runtime.atn.ATNConfigSet, java.util.Set, boolean, boolean, int, boolean], void)}
; {var9=org.antlr.v4.runtime.atn.ParserATNSimulator, var2401=r2, var2424=org.antlr.v4.runtime.atn.ATNConfig, var3057=r0, var558=org.antlr.v4.runtime.atn.ATNConfigSet, var1174=r3, var1494=java.util.Set, var3849=r4, var3654=z2, var3176=z3, var1354=i0, var2638=z4, var2833=$z0, var2530=java.io.PrintStream, var545=java.lang.System, var378=$r38, var1338=$r37, var999=$r41, var2986=org.antlr.v4.runtime.Parser, var1360=$r39, var3118=org.antlr.v4.runtime.Recognizer, var2597=$r40, var2475=$r42, var1619=$r43, var1424=$r44, var3742=org.antlr.v4.runtime.atn.ATNState, var2457=$r1, var931=$z1}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var9, r2=var2401, org.antlr.v4.runtime.atn.ATNConfig=var2424, r0=var3057, org.antlr.v4.runtime.atn.ATNConfigSet=var558, r3=var1174, java.util.Set=var1494, r4=var3849, z2=var3654, z3=var3176, i0=var1354, z4=var2638, $z0=var2833, java.io.PrintStream=var2530, java.lang.System=var545, $r38=var378, $r37=var1338, $r41=var999, org.antlr.v4.runtime.Parser=var2986, $r39=var1360, org.antlr.v4.runtime.Recognizer=var3118, $r40=var2597, $r42=var2475, $r43=var1619, $r44=var1424, org.antlr.v4.runtime.atn.ATNState=var3742, $r1=var2457, $z1=var931}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.antlr.v4.runtime.atn.ATNConfig: java.lang.String toString(org.antlr.v4.runtime.Recognizer,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r0 := @parameter0: org.antlr.v4.runtime.atn.ATNConfig;	r3 := @parameter1: org.antlr.v4.runtime.atn.ATNConfigSet;	r4 := @parameter2: java.util.Set;	z2 := @parameter3: boolean;	z3 := @parameter4: boolean;	i0 := @parameter5: int;	z4 := @parameter6: boolean;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean trace_atn_sim>;	if $z0 == 0 goto $r1 = r0.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.ATNState state>;	$r38 = <java.lang.System: java.io.PrintStream out>;	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r41 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("closure(");	$r39 = r2.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r40 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ATNConfig: java.lang.String toString(org.antlr.v4.runtime.Recognizer,boolean)>($r39, 1);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r38.<java.io.PrintStream: void println(java.lang.String)>($r44);	$r1 = r0.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.ATNState state>;	$z1 = $r1 instanceof org.antlr.v4.runtime.atn.RuleStopState;	if $z1 == 0 goto virtualinvoke r2.<org.antlr.v4.runtime.atn.ParserATNSimulator: void closure_(org.antlr.v4.runtime.atn.ATNConfig,org.antlr.v4.runtime.atn.ATNConfigSet,java.util.Set,boolean,boolean,int,boolean)>(r0, r3, r4, z2, z3, i0, z4);	virtualinvoke r2.<org.antlr.v4.runtime.atn.ParserATNSimulator: void closure_(org.antlr.v4.runtime.atn.ATNConfig,org.antlr.v4.runtime.atn.ATNConfigSet,java.util.Set,boolean,boolean,int,boolean)>(r0, r3, r4, z2, z3, i0, z4);	return
;block_num 4