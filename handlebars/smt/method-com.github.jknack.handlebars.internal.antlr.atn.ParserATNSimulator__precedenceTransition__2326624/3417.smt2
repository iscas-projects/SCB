(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var785 0)
(declare-sort var2391 0)
(declare-sort var2929 0)
(declare-sort var330 0)
(declare-sort var3593 0)
(declare-sort var1392 0)
(declare-sort var761 0)
(declare-sort var1204 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2391-init () var2391)
(declare-fun target/1869339560 (var3593) var330)
(declare-fun cast-from-var2929-to-var3593 (var2929) var3593)
(declare-fun <init>/-1127165186 (var2391 var2391 var330) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1204) String)
(declare-fun cast-from-var2391-to-var1204 (var2391) var1204)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1392 String) void)
(declare-const null-var785 var785)
(declare-const null-var2391 var2391)
(declare-const null-var2929 var2929)
(declare-const null-Bool Bool)
(declare-const var785-debug Bool)
(declare-const var761-out var1392)
(declare-const var998 var785) ; Statement: r13 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var998 null-var785)))
(declare-const var3039 var2391) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.atn.ATNConfig 
(assert (not (= var3039 null-var2391)))
(declare-const var3231 var2929) ; Statement: r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition 
(assert (not (= var3231 null-var2929)))
(declare-const var1237 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var1237 null-Bool)))
(declare-const var1961 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var1961 null-Bool)))
(declare-const var3412 Bool) ; Statement: z3 := @parameter4: boolean 
(assert (not (= var3412 null-Bool)))
(define-const var93 Bool var785-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto r37 = null 
(assert (= (ite var93 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2180 var2391 null-var2391) ; Statement: r37 = null 
 ; Statement: if z1 == 0 goto $r0 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig 
(assert (= (ite var1237 1 0) 0)) ; Cond: z1 == 0 
(define-const var2649 var2391 var2391-init) ; Statement: $r0 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig 
(define-const var3135 var330 (target/1869339560 (cast-from-var2929-to-var3593 var3231))) ; Statement: $r3 = r2.<com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition: com.github.jknack.handlebars.internal.antlr.atn.ATNState target> 
(assert true)
;(assert (<init>/-1127165186 var2649 var3039 var3135)) ; Statement: specialinvoke $r0.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: void <init>(com.github.jknack.handlebars.internal.antlr.atn.ATNConfig,com.github.jknack.handlebars.internal.antlr.atn.ATNState)>(r1, $r3) 

(declare-const var2649!1 var2391)
(declare-const var3039!1 var2391)
(declare-const var3135!1 var330)
(define-const var2180!1 var2391 var2649!1) ; Statement: r37 = $r0 
(assert true) ; Non Conditional
(define-const var2917 Bool var785-debug) ; Statement: $z5 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z5 == 0 goto return r37 
(assert (not (= (ite var2917 1 0) 0))) ; Negate: Cond: $z5 == 0  
(define-const var3049 var1392 var761-out) ; Statement: $r5 = <java.lang.System: java.io.PrintStream out> 
(define-const var3612 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3612)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3612!1 String)
(assert (= var3612!1 ""))
(assert true)
(define-const var2586 String (append/672562846 var3612!1 "config from pred transition=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("config from pred transition=") 
(declare-const var3612!2 String)
(assert (= var3612!2 (str.++ var3612!1 "config from pred transition=")))
(assert true)
(define-const var1051 String (append/-1031950772 var2586 (cast-from-var2391-to-var1204 var2180!1))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r37) 
(declare-const var2586!1 String)
(assert (str.prefixof var2586 var2586!1))
(assert true)
(define-const var2939 String (toString/-2075883882 var1051)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3049 var2939)) ; Statement: virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>($r8) 

(declare-const var3049!1 var1392)
(declare-const var2939!1 String)
(assert true) ; Non Conditional
 ; Statement: return r37 
(check-sat)
(get-model)
(get-unsat-core)
; {var2391-init=([], com.github.jknack.handlebars.internal.antlr.atn.ATNConfig), target/1869339560=([com.github.jknack.handlebars.internal.antlr.atn.Transition], com.github.jknack.handlebars.internal.antlr.atn.ATNState), cast-from-var2929-to-var3593=([com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition], com.github.jknack.handlebars.internal.antlr.atn.Transition), <init>/-1127165186=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, com.github.jknack.handlebars.internal.antlr.atn.ATNState], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2391-to-var1204=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfig], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var785=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var998=r13, var2391=com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, var3039=r1, var2929=com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition, var3231=r2, var1237=z1, var1961=z2, var3412=z3, var93=$z0, var2180=r37, var2649=$r0, var330=com.github.jknack.handlebars.internal.antlr.atn.ATNState, var3593=com.github.jknack.handlebars.internal.antlr.atn.Transition, var3135=$r3, var2917=$z5, var1392=java.io.PrintStream, var761=java.lang.System, var3049=$r5, var3612=$r4, var2586=$r6, var1204=java.lang.Object, var1051=$r7, var2939=$r8}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var785, r13=var998, com.github.jknack.handlebars.internal.antlr.atn.ATNConfig=var2391, r1=var3039, com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition=var2929, r2=var3231, z1=var1237, z2=var1961, z3=var3412, $z0=var93, r37=var2180, $r0=var2649, com.github.jknack.handlebars.internal.antlr.atn.ATNState=var330, com.github.jknack.handlebars.internal.antlr.atn.Transition=var3593, $r3=var3135, $z5=var2917, java.io.PrintStream=var1392, java.lang.System=var761, $r5=var3049, $r4=var3612, $r6=var2586, java.lang.Object=var1204, $r7=var1051, $r8=var2939}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.atn.ATNConfig;	r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition;	z1 := @parameter2: boolean;	z2 := @parameter3: boolean;	z3 := @parameter4: boolean;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto r37 = null;	r37 = null;	if z1 == 0 goto $r0 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig;	$r0 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig;	$r3 = r2.<com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition: com.github.jknack.handlebars.internal.antlr.atn.ATNState target>;	specialinvoke $r0.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: void <init>(com.github.jknack.handlebars.internal.antlr.atn.ATNConfig,com.github.jknack.handlebars.internal.antlr.atn.ATNState)>(r1, $r3);	r37 = $r0;	$z5 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z5 == 0 goto return r37;	$r5 = <java.lang.System: java.io.PrintStream out>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("config from pred transition=");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r37);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>($r8);	return r37
;block_num 6