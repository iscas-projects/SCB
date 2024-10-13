(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2975 0)
(declare-sort var3021 0)
(declare-sort var3503 0)
(declare-sort var3525 0)
(declare-sort var252 0)
(declare-sort var500 0)
(declare-sort var2695 0)
(declare-sort var3273 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3021-init () var3021)
(declare-fun target/1869339560 (var252) var3525)
(declare-fun cast-from-var3503-to-var252 (var3503) var252)
(declare-fun <init>/-1127165186 (var3021 var3021 var3525) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3273) String)
(declare-fun cast-from-var3021-to-var3273 (var3021) var3273)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var500 String) void)
(declare-const null-var2975 var2975)
(declare-const null-var3021 var3021)
(declare-const null-var3503 var3503)
(declare-const null-Bool Bool)
(declare-const var2975-debug Bool)
(declare-const var2695-out var500)
(declare-const var3178 var2975) ; Statement: r11 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var3178 null-var2975)))
(declare-const var689 var3021) ; Statement: r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.atn.ATNConfig 
(assert (not (= var689 null-var3021)))
(declare-const var3115 var3503) ; Statement: r1 := @parameter1: com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition 
(assert (not (= var3115 null-var3503)))
(declare-const var2316 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var2316 null-Bool)))
(declare-const var254 Bool) ; Statement: z6 := @parameter3: boolean 
(assert (not (= var254 null-Bool)))
(declare-const var1628 Bool) ; Statement: z3 := @parameter4: boolean 
(assert (not (= var1628 null-Bool)))
(define-const var2923 Bool var2975-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto r38 = null 
(assert (= (ite var2923 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1801 var3021 null-var3021) ; Statement: r38 = null 
 ; Statement: if z1 == 0 goto $r40 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig 
(assert (= (ite var2316 1 0) 0)) ; Cond: z1 == 0 
(define-const var1976 var3021 var3021-init) ; Statement: $r40 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig 
(define-const var2912 var3525 (target/1869339560 (cast-from-var3503-to-var252 var3115))) ; Statement: $r41 = r1.<com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition: com.github.jknack.handlebars.internal.antlr.atn.ATNState target> 
(assert true)
;(assert (<init>/-1127165186 var1976 var689 var2912)) ; Statement: specialinvoke $r40.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: void <init>(com.github.jknack.handlebars.internal.antlr.atn.ATNConfig,com.github.jknack.handlebars.internal.antlr.atn.ATNState)>(r0, $r41) 

(declare-const var1976!1 var3021)
(declare-const var689!1 var3021)
(declare-const var2912!1 var3525)
(define-const var1801!1 var3021 var1976!1) ; Statement: r38 = $r40 
(assert true) ; Non Conditional
(define-const var164 Bool var2975-debug) ; Statement: $z8 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z8 == 0 goto return r38 
(assert (not (= (ite var164 1 0) 0))) ; Negate: Cond: $z8 == 0  
(define-const var821 var500 var2695-out) ; Statement: $r3 = <java.lang.System: java.io.PrintStream out> 
(define-const var3848 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3848)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3848!1 String)
(assert (= var3848!1 ""))
(assert true)
(define-const var1832 String (append/672562846 var3848!1 "config from pred transition=")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("config from pred transition=") 
(declare-const var3848!2 String)
(assert (= var3848!2 (str.++ var3848!1 "config from pred transition=")))
(assert true)
(define-const var2224 String (append/-1031950772 var1832 (cast-from-var3021-to-var3273 var1801!1))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r38) 
(declare-const var1832!1 String)
(assert (str.prefixof var1832 var1832!1))
(assert true)
(define-const var2090 String (toString/-2075883882 var2224)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var821 var2090)) ; Statement: virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r6) 

(declare-const var821!1 var500)
(declare-const var2090!1 String)
(assert true) ; Non Conditional
 ; Statement: return r38 
(check-sat)
(get-model)
(get-unsat-core)
; {var3021-init=([], com.github.jknack.handlebars.internal.antlr.atn.ATNConfig), target/1869339560=([com.github.jknack.handlebars.internal.antlr.atn.Transition], com.github.jknack.handlebars.internal.antlr.atn.ATNState), cast-from-var3503-to-var252=([com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition], com.github.jknack.handlebars.internal.antlr.atn.Transition), <init>/-1127165186=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, com.github.jknack.handlebars.internal.antlr.atn.ATNState], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3021-to-var3273=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfig], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var2975=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var3178=r11, var3021=com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, var689=r0, var3503=com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition, var3115=r1, var2316=z1, var254=z6, var1628=z3, var2923=$z0, var1801=r38, var1976=$r40, var3525=com.github.jknack.handlebars.internal.antlr.atn.ATNState, var252=com.github.jknack.handlebars.internal.antlr.atn.Transition, var2912=$r41, var164=$z8, var500=java.io.PrintStream, var2695=java.lang.System, var821=$r3, var3848=$r2, var1832=$r4, var3273=java.lang.Object, var2224=$r5, var2090=$r6}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var2975, r11=var3178, com.github.jknack.handlebars.internal.antlr.atn.ATNConfig=var3021, r0=var689, com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition=var3503, r1=var3115, z1=var2316, z6=var254, z3=var1628, $z0=var2923, r38=var1801, $r40=var1976, com.github.jknack.handlebars.internal.antlr.atn.ATNState=var3525, com.github.jknack.handlebars.internal.antlr.atn.Transition=var252, $r41=var2912, $z8=var164, java.io.PrintStream=var500, java.lang.System=var2695, $r3=var821, $r2=var3848, $r4=var1832, java.lang.Object=var3273, $r5=var2224, $r6=var2090}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.atn.ATNConfig;	r1 := @parameter1: com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition;	z1 := @parameter2: boolean;	z6 := @parameter3: boolean;	z3 := @parameter4: boolean;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto r38 = null;	r38 = null;	if z1 == 0 goto $r40 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig;	$r40 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig;	$r41 = r1.<com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition: com.github.jknack.handlebars.internal.antlr.atn.ATNState target>;	specialinvoke $r40.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: void <init>(com.github.jknack.handlebars.internal.antlr.atn.ATNConfig,com.github.jknack.handlebars.internal.antlr.atn.ATNState)>(r0, $r41);	r38 = $r40;	$z8 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z8 == 0 goto return r38;	$r3 = <java.lang.System: java.io.PrintStream out>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("config from pred transition=");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r38);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r6);	return r38
;block_num 6