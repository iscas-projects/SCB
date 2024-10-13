(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3470 0)
(declare-sort var1932 0)
(declare-sort var1673 0)
(declare-sort var3025 0)
(declare-sort var1111 0)
(declare-sort var269 0)
(declare-sort var2971 0)
(declare-sort var2673 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-388390247 (String Bool) String)
(declare-fun ruleIndex/871070073 (var1673) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun predIndex/871070073 (var1673) Int)
(declare-fun isCtxDependent/871070073 (var1673) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3025 String) void)
(declare-fun parser/310440123 (var3470) var269)
(declare-fun var1932-init () var1932)
(declare-fun target/1869339560 (var2673) var2971)
(declare-fun cast-from-var1673-to-var2673 (var1673) var2673)
(declare-fun <init>/-1127165186 (var1932 var1932 var2971) void)
(declare-const null-var3470 var3470)
(declare-const null-var1932 var1932)
(declare-const null-var1673 var1673)
(declare-const null-Bool Bool)
(declare-const var3470-debug Bool)
(declare-const var1111-out var3025)
(declare-const null-var269 var269)
(declare-const var3057 var3470) ; Statement: r11 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var3057 null-var3470)))
(declare-const var856 var1932) ; Statement: r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.atn.ATNConfig 
(assert (not (= var856 null-var1932)))
(declare-const var2785 var1673) ; Statement: r1 := @parameter1: com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition 
(assert (not (= var2785 null-var1673)))
(declare-const var1814 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var1814 null-Bool)))
(declare-const var710 Bool) ; Statement: z6 := @parameter3: boolean 
(assert (not (= var710 null-Bool)))
(declare-const var3796 Bool) ; Statement: z3 := @parameter4: boolean 
(assert (not (= var3796 null-Bool)))
(define-const var1012 Bool var3470-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto r38 = null 
(assert (not (= (ite var1012 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2598 var3025 var1111-out) ; Statement: $r20 = <java.lang.System: java.io.PrintStream out> 
(define-const var2462 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2462)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2462!1 String)
(assert (= var2462!1 ""))
(assert true)
(define-const var2509 String (append/672562846 var2462!1 "PRED (collectPredicates=")) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PRED (collectPredicates=") 
(declare-const var2462!2 String)
(assert (= var2462!2 (str.++ var2462!1 "PRED (collectPredicates=")))
(assert true)
(define-const var1969 String (append/-388390247 var2509 var1814)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z1) 
(declare-const var2509!1 String)
(assert (str.prefixof var2509 var2509!1))
(assert true)
(define-const var1229 String (append/672562846 var1969 ") ")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var1969!1 String)
(assert (= var1969!1 (str.++ var1969 ") ")))
(define-const var1079 Int (ruleIndex/871070073 var2785)) ; Statement: $i2 = r1.<com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition: int ruleIndex> 
(assert true)
(define-const var1469 String (append/-1001720160 var1229 var1079)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var1229!1 String)
(assert (str.prefixof var1229 var1229!1))
(assert true)
(define-const var700 String (append/672562846 var1469 ":")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1469!1 String)
(assert (= var1469!1 (str.++ var1469 ":")))
(define-const var2237 Int (predIndex/871070073 var2785)) ; Statement: $i3 = r1.<com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition: int predIndex> 
(assert true)
(define-const var1535 String (append/-1001720160 var700 var2237)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var700!1 String)
(assert (str.prefixof var700 var700!1))
(assert true)
(define-const var3523 String (append/672562846 var1535 ", ctx dependent=")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ctx dependent=") 
(declare-const var1535!1 String)
(assert (= var1535!1 (str.++ var1535 ", ctx dependent=")))
(define-const var3788 Bool (isCtxDependent/871070073 var2785)) ; Statement: $z7 = r1.<com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition: boolean isCtxDependent> 
(assert true)
(define-const var2152 String (append/-388390247 var3523 var3788)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z7) 
(declare-const var3523!1 String)
(assert (str.prefixof var3523 var3523!1))
(assert true)
(define-const var3578 String (toString/-2075883882 var2152)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2598 var3578)) ; Statement: virtualinvoke $r20.<java.io.PrintStream: void println(java.lang.String)>($r29) 

(declare-const var2598!1 var3025)
(declare-const var3578!1 String)
(define-const var1211 var269 (parser/310440123 var3057)) ; Statement: $r30 = r11.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
 ; Statement: if $r30 == null goto r38 = null 
(assert (= var1211 null-var269)) ; Cond: $r30 == null 
(define-const var1707 var1932 null-var1932) ; Statement: r38 = null 
 ; Statement: if z1 == 0 goto $r40 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig 
(assert (= (ite var1814 1 0) 0)) ; Cond: z1 == 0 
(define-const var2069 var1932 var1932-init) ; Statement: $r40 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig 
(define-const var1081 var2971 (target/1869339560 (cast-from-var1673-to-var2673 var2785))) ; Statement: $r41 = r1.<com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition: com.github.jknack.handlebars.internal.antlr.atn.ATNState target> 
(assert true)
;(assert (<init>/-1127165186 var2069 var856 var1081)) ; Statement: specialinvoke $r40.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: void <init>(com.github.jknack.handlebars.internal.antlr.atn.ATNConfig,com.github.jknack.handlebars.internal.antlr.atn.ATNState)>(r0, $r41) 

(declare-const var2069!1 var1932)
(declare-const var856!1 var1932)
(declare-const var1081!1 var2971)
(define-const var1707!1 var1932 var2069!1) ; Statement: r38 = $r40 
(assert true) ; Non Conditional
(define-const var1028 Bool var3470-debug) ; Statement: $z8 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z8 == 0 goto return r38 
(assert (= (ite var1028 1 0) 0)) ; Cond: $z8 == 0 
 ; Statement: return r38 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), ruleIndex/871070073=([com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), predIndex/871070073=([com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition], int), isCtxDependent/871070073=([com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), var1932-init=([], com.github.jknack.handlebars.internal.antlr.atn.ATNConfig), target/1869339560=([com.github.jknack.handlebars.internal.antlr.atn.Transition], com.github.jknack.handlebars.internal.antlr.atn.ATNState), cast-from-var1673-to-var2673=([com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition], com.github.jknack.handlebars.internal.antlr.atn.Transition), <init>/-1127165186=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, com.github.jknack.handlebars.internal.antlr.atn.ATNState], void)}
; {var3470=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var3057=r11, var1932=com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, var856=r0, var1673=com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition, var2785=r1, var1814=z1, var710=z6, var3796=z3, var1012=$z0, var3025=java.io.PrintStream, var1111=java.lang.System, var2598=$r20, var2462=$r19, var2509=$r21, var1969=$r22, var1229=$r23, var1079=$i2, var1469=$r24, var700=$r25, var2237=$i3, var1535=$r26, var3523=$r27, var3788=$z7, var2152=$r28, var3578=$r29, var269=com.github.jknack.handlebars.internal.antlr.Parser, var1211=$r30, var1707=r38, var2069=$r40, var2971=com.github.jknack.handlebars.internal.antlr.atn.ATNState, var2673=com.github.jknack.handlebars.internal.antlr.atn.Transition, var1081=$r41, var1028=$z8}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var3470, r11=var3057, com.github.jknack.handlebars.internal.antlr.atn.ATNConfig=var1932, r0=var856, com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition=var1673, r1=var2785, z1=var1814, z6=var710, z3=var3796, $z0=var1012, java.io.PrintStream=var3025, java.lang.System=var1111, $r20=var2598, $r19=var2462, $r21=var2509, $r22=var1969, $r23=var1229, $i2=var1079, $r24=var1469, $r25=var700, $i3=var2237, $r26=var1535, $r27=var3523, $z7=var3788, $r28=var2152, $r29=var3578, com.github.jknack.handlebars.internal.antlr.Parser=var269, $r30=var1211, r38=var1707, $r40=var2069, com.github.jknack.handlebars.internal.antlr.atn.ATNState=var2971, com.github.jknack.handlebars.internal.antlr.atn.Transition=var2673, $r41=var1081, $z8=var1028}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.atn.ATNConfig;	r1 := @parameter1: com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition;	z1 := @parameter2: boolean;	z6 := @parameter3: boolean;	z3 := @parameter4: boolean;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto r38 = null;	$r20 = <java.lang.System: java.io.PrintStream out>;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PRED (collectPredicates=");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z1);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$i2 = r1.<com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition: int ruleIndex>;	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i3 = r1.<com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition: int predIndex>;	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ctx dependent=");	$z7 = r1.<com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition: boolean isCtxDependent>;	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z7);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r20.<java.io.PrintStream: void println(java.lang.String)>($r29);	$r30 = r11.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	if $r30 == null goto r38 = null;	r38 = null;	if z1 == 0 goto $r40 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig;	$r40 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig;	$r41 = r1.<com.github.jknack.handlebars.internal.antlr.atn.PredicateTransition: com.github.jknack.handlebars.internal.antlr.atn.ATNState target>;	specialinvoke $r40.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: void <init>(com.github.jknack.handlebars.internal.antlr.atn.ATNConfig,com.github.jknack.handlebars.internal.antlr.atn.ATNState)>(r0, $r41);	r38 = $r40;	$z8 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z8 == 0 goto return r38;	return r38
;block_num 6