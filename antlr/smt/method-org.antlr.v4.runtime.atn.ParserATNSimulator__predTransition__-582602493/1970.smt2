(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2697 0)
(declare-sort var2554 0)
(declare-sort var1339 0)
(declare-sort var912 0)
(declare-sort var3337 0)
(declare-sort var243 0)
(declare-sort var1809 0)
(declare-sort var2382 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2554-init () var2554)
(declare-fun target/104774883 (var3337) var912)
(declare-fun cast-from-var1339-to-var3337 (var1339) var3337)
(declare-fun <init>/-1611607817 (var2554 var2554 var912) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2382) String)
(declare-fun cast-from-var2554-to-var2382 (var2554) var2382)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var243 String) void)
(declare-const null-var2697 var2697)
(declare-const null-var2554 var2554)
(declare-const null-var1339 var1339)
(declare-const null-Bool Bool)
(declare-const var2697-debug Bool)
(declare-const var1809-out var243)
(declare-const var352 var2697) ; Statement: r11 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var352 null-var2697)))
(declare-const var1188 var2554) ; Statement: r0 := @parameter0: org.antlr.v4.runtime.atn.ATNConfig 
(assert (not (= var1188 null-var2554)))
(declare-const var812 var1339) ; Statement: r1 := @parameter1: org.antlr.v4.runtime.atn.PredicateTransition 
(assert (not (= var812 null-var1339)))
(declare-const var2811 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var2811 null-Bool)))
(declare-const var1831 Bool) ; Statement: z6 := @parameter3: boolean 
(assert (not (= var1831 null-Bool)))
(declare-const var3054 Bool) ; Statement: z3 := @parameter4: boolean 
(assert (not (= var3054 null-Bool)))
(define-const var902 Bool var2697-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto r38 = null 
(assert (= (ite var902 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2419 var2554 null-var2554) ; Statement: r38 = null 
 ; Statement: if z1 == 0 goto $r40 = new org.antlr.v4.runtime.atn.ATNConfig 
(assert (= (ite var2811 1 0) 0)) ; Cond: z1 == 0 
(define-const var1803 var2554 var2554-init) ; Statement: $r40 = new org.antlr.v4.runtime.atn.ATNConfig 
(define-const var2472 var912 (target/104774883 (cast-from-var1339-to-var3337 var812))) ; Statement: $r41 = r1.<org.antlr.v4.runtime.atn.PredicateTransition: org.antlr.v4.runtime.atn.ATNState target> 
(assert true)
;(assert (<init>/-1611607817 var1803 var1188 var2472)) ; Statement: specialinvoke $r40.<org.antlr.v4.runtime.atn.ATNConfig: void <init>(org.antlr.v4.runtime.atn.ATNConfig,org.antlr.v4.runtime.atn.ATNState)>(r0, $r41) 

(declare-const var1803!1 var2554)
(declare-const var1188!1 var2554)
(declare-const var2472!1 var912)
(define-const var2419!1 var2554 var1803!1) ; Statement: r38 = $r40 
(assert true) ; Non Conditional
(define-const var2375 Bool var2697-debug) ; Statement: $z8 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z8 == 0 goto return r38 
(assert (not (= (ite var2375 1 0) 0))) ; Negate: Cond: $z8 == 0  
(define-const var3229 var243 var1809-out) ; Statement: $r3 = <java.lang.System: java.io.PrintStream out> 
(define-const var1106 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1106)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1106!1 String)
(assert (= var1106!1 ""))
(assert true)
(define-const var1109 String (append/672562846 var1106!1 "config from pred transition=")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("config from pred transition=") 
(declare-const var1106!2 String)
(assert (= var1106!2 (str.++ var1106!1 "config from pred transition=")))
(assert true)
(define-const var2007 String (append/-1031950772 var1109 (cast-from-var2554-to-var2382 var2419!1))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r38) 
(declare-const var1109!1 String)
(assert (str.prefixof var1109 var1109!1))
(assert true)
(define-const var1915 String (toString/-2075883882 var2007)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3229 var1915)) ; Statement: virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r6) 

(declare-const var3229!1 var243)
(declare-const var1915!1 String)
(assert true) ; Non Conditional
 ; Statement: return r38 
(check-sat)
(get-model)
(get-unsat-core)
; {var2554-init=([], org.antlr.v4.runtime.atn.ATNConfig), target/104774883=([org.antlr.v4.runtime.atn.Transition], org.antlr.v4.runtime.atn.ATNState), cast-from-var1339-to-var3337=([org.antlr.v4.runtime.atn.PredicateTransition], org.antlr.v4.runtime.atn.Transition), <init>/-1611607817=([org.antlr.v4.runtime.atn.ATNConfig, org.antlr.v4.runtime.atn.ATNConfig, org.antlr.v4.runtime.atn.ATNState], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2554-to-var2382=([org.antlr.v4.runtime.atn.ATNConfig], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var2697=org.antlr.v4.runtime.atn.ParserATNSimulator, var352=r11, var2554=org.antlr.v4.runtime.atn.ATNConfig, var1188=r0, var1339=org.antlr.v4.runtime.atn.PredicateTransition, var812=r1, var2811=z1, var1831=z6, var3054=z3, var902=$z0, var2419=r38, var1803=$r40, var912=org.antlr.v4.runtime.atn.ATNState, var3337=org.antlr.v4.runtime.atn.Transition, var2472=$r41, var2375=$z8, var243=java.io.PrintStream, var1809=java.lang.System, var3229=$r3, var1106=$r2, var1109=$r4, var2382=java.lang.Object, var2007=$r5, var1915=$r6}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var2697, r11=var352, org.antlr.v4.runtime.atn.ATNConfig=var2554, r0=var1188, org.antlr.v4.runtime.atn.PredicateTransition=var1339, r1=var812, z1=var2811, z6=var1831, z3=var3054, $z0=var902, r38=var2419, $r40=var1803, org.antlr.v4.runtime.atn.ATNState=var912, org.antlr.v4.runtime.atn.Transition=var3337, $r41=var2472, $z8=var2375, java.io.PrintStream=var243, java.lang.System=var1809, $r3=var3229, $r2=var1106, $r4=var1109, java.lang.Object=var2382, $r5=var2007, $r6=var1915}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r0 := @parameter0: org.antlr.v4.runtime.atn.ATNConfig;	r1 := @parameter1: org.antlr.v4.runtime.atn.PredicateTransition;	z1 := @parameter2: boolean;	z6 := @parameter3: boolean;	z3 := @parameter4: boolean;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto r38 = null;	r38 = null;	if z1 == 0 goto $r40 = new org.antlr.v4.runtime.atn.ATNConfig;	$r40 = new org.antlr.v4.runtime.atn.ATNConfig;	$r41 = r1.<org.antlr.v4.runtime.atn.PredicateTransition: org.antlr.v4.runtime.atn.ATNState target>;	specialinvoke $r40.<org.antlr.v4.runtime.atn.ATNConfig: void <init>(org.antlr.v4.runtime.atn.ATNConfig,org.antlr.v4.runtime.atn.ATNState)>(r0, $r41);	r38 = $r40;	$z8 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z8 == 0 goto return r38;	$r3 = <java.lang.System: java.io.PrintStream out>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("config from pred transition=");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r38);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r6);	return r38
;block_num 6