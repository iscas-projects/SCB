(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2885 0)
(declare-sort var2005 0)
(declare-sort var3067 0)
(declare-sort var3417 0)
(declare-sort var2795 0)
(declare-sort var3178 0)
(declare-sort var54 0)
(declare-sort var58 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-388390247 (String Bool) String)
(declare-fun precedence/1821110991 (var3067) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3417 String) void)
(declare-fun parser/310440123 (var2885) var3178)
(declare-fun var2005-init () var2005)
(declare-fun target/1869339560 (var58) var54)
(declare-fun cast-from-var3067-to-var58 (var3067) var58)
(declare-fun <init>/-1127165186 (var2005 var2005 var54) void)
(declare-const null-var2885 var2885)
(declare-const null-var2005 var2005)
(declare-const null-var3067 var3067)
(declare-const null-Bool Bool)
(declare-const var2885-debug Bool)
(declare-const var2795-out var3417)
(declare-const null-var3178 var3178)
(declare-const var1187 var2885) ; Statement: r13 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var1187 null-var2885)))
(declare-const var460 var2005) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.atn.ATNConfig 
(assert (not (= var460 null-var2005)))
(declare-const var3961 var3067) ; Statement: r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition 
(assert (not (= var3961 null-var3067)))
(declare-const var1287 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var1287 null-Bool)))
(declare-const var968 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var968 null-Bool)))
(declare-const var1342 Bool) ; Statement: z3 := @parameter4: boolean 
(assert (not (= var1342 null-Bool)))
(define-const var2485 Bool var2885-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto r37 = null 
(assert (not (= (ite var2485 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2593 var3417 var2795-out) ; Statement: $r22 = <java.lang.System: java.io.PrintStream out> 
(define-const var1646 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1646)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1646!1 String)
(assert (= var1646!1 ""))
(assert true)
(define-const var1082 String (append/672562846 var1646!1 "PRED (collectPredicates=")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PRED (collectPredicates=") 
(declare-const var1646!2 String)
(assert (= var1646!2 (str.++ var1646!1 "PRED (collectPredicates=")))
(assert true)
(define-const var2786 String (append/-388390247 var1082 var1287)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z1) 
(declare-const var1082!1 String)
(assert (str.prefixof var1082 var1082!1))
(assert true)
(define-const var1837 String (append/672562846 var2786 ") ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var2786!1 String)
(assert (= var2786!1 (str.++ var2786 ") ")))
(define-const var611 Int (precedence/1821110991 var3961)) ; Statement: $i2 = r2.<com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition: int precedence> 
(assert true)
(define-const var2433 String (append/-1001720160 var1837 var611)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var1837!1 String)
(assert (str.prefixof var1837 var1837!1))
(assert true)
(define-const var3848 String (append/672562846 var2433 ">=_p, ctx dependent=true")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">=_p, ctx dependent=true") 
(declare-const var2433!1 String)
(assert (= var2433!1 (str.++ var2433 ">=_p, ctx dependent=true")))
(assert true)
(define-const var3835 String (toString/-2075883882 var3848)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2593 var3835)) ; Statement: virtualinvoke $r22.<java.io.PrintStream: void println(java.lang.String)>($r28) 

(declare-const var2593!1 var3417)
(declare-const var3835!1 String)
(define-const var3642 var3178 (parser/310440123 var1187)) ; Statement: $r29 = r13.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
 ; Statement: if $r29 == null goto r37 = null 
(assert (= var3642 null-var3178)) ; Cond: $r29 == null 
(define-const var998 var2005 null-var2005) ; Statement: r37 = null 
 ; Statement: if z1 == 0 goto $r0 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig 
(assert (= (ite var1287 1 0) 0)) ; Cond: z1 == 0 
(define-const var2850 var2005 var2005-init) ; Statement: $r0 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig 
(define-const var2020 var54 (target/1869339560 (cast-from-var3067-to-var58 var3961))) ; Statement: $r3 = r2.<com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition: com.github.jknack.handlebars.internal.antlr.atn.ATNState target> 
(assert true)
;(assert (<init>/-1127165186 var2850 var460 var2020)) ; Statement: specialinvoke $r0.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: void <init>(com.github.jknack.handlebars.internal.antlr.atn.ATNConfig,com.github.jknack.handlebars.internal.antlr.atn.ATNState)>(r1, $r3) 

(declare-const var2850!1 var2005)
(declare-const var460!1 var2005)
(declare-const var2020!1 var54)
(define-const var998!1 var2005 var2850!1) ; Statement: r37 = $r0 
(assert true) ; Non Conditional
(define-const var3681 Bool var2885-debug) ; Statement: $z5 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z5 == 0 goto return r37 
(assert (= (ite var3681 1 0) 0)) ; Cond: $z5 == 0 
 ; Statement: return r37 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), precedence/1821110991=([com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), var2005-init=([], com.github.jknack.handlebars.internal.antlr.atn.ATNConfig), target/1869339560=([com.github.jknack.handlebars.internal.antlr.atn.Transition], com.github.jknack.handlebars.internal.antlr.atn.ATNState), cast-from-var3067-to-var58=([com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition], com.github.jknack.handlebars.internal.antlr.atn.Transition), <init>/-1127165186=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, com.github.jknack.handlebars.internal.antlr.atn.ATNState], void)}
; {var2885=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var1187=r13, var2005=com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, var460=r1, var3067=com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition, var3961=r2, var1287=z1, var968=z2, var1342=z3, var2485=$z0, var3417=java.io.PrintStream, var2795=java.lang.System, var2593=$r22, var1646=$r21, var1082=$r23, var2786=$r24, var1837=$r25, var611=$i2, var2433=$r26, var3848=$r27, var3835=$r28, var3178=com.github.jknack.handlebars.internal.antlr.Parser, var3642=$r29, var998=r37, var2850=$r0, var54=com.github.jknack.handlebars.internal.antlr.atn.ATNState, var58=com.github.jknack.handlebars.internal.antlr.atn.Transition, var2020=$r3, var3681=$z5}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var2885, r13=var1187, com.github.jknack.handlebars.internal.antlr.atn.ATNConfig=var2005, r1=var460, com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition=var3067, r2=var3961, z1=var1287, z2=var968, z3=var1342, $z0=var2485, java.io.PrintStream=var3417, java.lang.System=var2795, $r22=var2593, $r21=var1646, $r23=var1082, $r24=var2786, $r25=var1837, $i2=var611, $r26=var2433, $r27=var3848, $r28=var3835, com.github.jknack.handlebars.internal.antlr.Parser=var3178, $r29=var3642, r37=var998, $r0=var2850, com.github.jknack.handlebars.internal.antlr.atn.ATNState=var54, com.github.jknack.handlebars.internal.antlr.atn.Transition=var58, $r3=var2020, $z5=var3681}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.atn.ATNConfig;	r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition;	z1 := @parameter2: boolean;	z2 := @parameter3: boolean;	z3 := @parameter4: boolean;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto r37 = null;	$r22 = <java.lang.System: java.io.PrintStream out>;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PRED (collectPredicates=");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z1);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$i2 = r2.<com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition: int precedence>;	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">=_p, ctx dependent=true");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r22.<java.io.PrintStream: void println(java.lang.String)>($r28);	$r29 = r13.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	if $r29 == null goto r37 = null;	r37 = null;	if z1 == 0 goto $r0 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig;	$r0 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig;	$r3 = r2.<com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition: com.github.jknack.handlebars.internal.antlr.atn.ATNState target>;	specialinvoke $r0.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: void <init>(com.github.jknack.handlebars.internal.antlr.atn.ATNConfig,com.github.jknack.handlebars.internal.antlr.atn.ATNState)>(r1, $r3);	r37 = $r0;	$z5 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z5 == 0 goto return r37;	return r37
;block_num 6