(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2219 0)
(declare-sort var2530 0)
(declare-sort var959 0)
(declare-sort var2211 0)
(declare-sort var3805 0)
(declare-sort var2771 0)
(declare-sort var2295 0)
(declare-sort var3225 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-388390247 (String Bool) String)
(declare-fun precedence/-1875912268 (var959) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2211 String) void)
(declare-fun parser/145254134 (var2219) var2771)
(declare-fun var2530-init () var2530)
(declare-fun target/104774883 (var3225) var2295)
(declare-fun cast-from-var959-to-var3225 (var959) var3225)
(declare-fun <init>/-1611607817 (var2530 var2530 var2295) void)
(declare-const null-var2219 var2219)
(declare-const null-var2530 var2530)
(declare-const null-var959 var959)
(declare-const null-Bool Bool)
(declare-const var2219-debug Bool)
(declare-const var3805-out var2211)
(declare-const null-var2771 var2771)
(declare-const var1755 var2219) ; Statement: r13 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var1755 null-var2219)))
(declare-const var1675 var2530) ; Statement: r1 := @parameter0: org.antlr.v4.runtime.atn.ATNConfig 
(assert (not (= var1675 null-var2530)))
(declare-const var2749 var959) ; Statement: r2 := @parameter1: org.antlr.v4.runtime.atn.PrecedencePredicateTransition 
(assert (not (= var2749 null-var959)))
(declare-const var3346 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var3346 null-Bool)))
(declare-const var1324 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var1324 null-Bool)))
(declare-const var1037 Bool) ; Statement: z3 := @parameter4: boolean 
(assert (not (= var1037 null-Bool)))
(define-const var3068 Bool var2219-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto r37 = null 
(assert (not (= (ite var3068 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var756 var2211 var3805-out) ; Statement: $r22 = <java.lang.System: java.io.PrintStream out> 
(define-const var878 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var878)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var878!1 String)
(assert (= var878!1 ""))
(assert true)
(define-const var1133 String (append/672562846 var878!1 "PRED (collectPredicates=")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PRED (collectPredicates=") 
(declare-const var878!2 String)
(assert (= var878!2 (str.++ var878!1 "PRED (collectPredicates=")))
(assert true)
(define-const var3884 String (append/-388390247 var1133 var3346)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z1) 
(declare-const var1133!1 String)
(assert (str.prefixof var1133 var1133!1))
(assert true)
(define-const var3100 String (append/672562846 var3884 ") ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var3884!1 String)
(assert (= var3884!1 (str.++ var3884 ") ")))
(define-const var3838 Int (precedence/-1875912268 var2749)) ; Statement: $i2 = r2.<org.antlr.v4.runtime.atn.PrecedencePredicateTransition: int precedence> 
(assert true)
(define-const var3768 String (append/-1001720160 var3100 var3838)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var3100!1 String)
(assert (str.prefixof var3100 var3100!1))
(assert true)
(define-const var2891 String (append/672562846 var3768 ">=_p, ctx dependent=true")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">=_p, ctx dependent=true") 
(declare-const var3768!1 String)
(assert (= var3768!1 (str.++ var3768 ">=_p, ctx dependent=true")))
(assert true)
(define-const var1933 String (toString/-2075883882 var2891)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var756 var1933)) ; Statement: virtualinvoke $r22.<java.io.PrintStream: void println(java.lang.String)>($r28) 

(declare-const var756!1 var2211)
(declare-const var1933!1 String)
(define-const var2213 var2771 (parser/145254134 var1755)) ; Statement: $r29 = r13.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
 ; Statement: if $r29 == null goto r37 = null 
(assert (= var2213 null-var2771)) ; Cond: $r29 == null 
(define-const var3739 var2530 null-var2530) ; Statement: r37 = null 
 ; Statement: if z1 == 0 goto $r0 = new org.antlr.v4.runtime.atn.ATNConfig 
(assert (= (ite var3346 1 0) 0)) ; Cond: z1 == 0 
(define-const var3915 var2530 var2530-init) ; Statement: $r0 = new org.antlr.v4.runtime.atn.ATNConfig 
(define-const var2799 var2295 (target/104774883 (cast-from-var959-to-var3225 var2749))) ; Statement: $r3 = r2.<org.antlr.v4.runtime.atn.PrecedencePredicateTransition: org.antlr.v4.runtime.atn.ATNState target> 
(assert true)
;(assert (<init>/-1611607817 var3915 var1675 var2799)) ; Statement: specialinvoke $r0.<org.antlr.v4.runtime.atn.ATNConfig: void <init>(org.antlr.v4.runtime.atn.ATNConfig,org.antlr.v4.runtime.atn.ATNState)>(r1, $r3) 

(declare-const var3915!1 var2530)
(declare-const var1675!1 var2530)
(declare-const var2799!1 var2295)
(define-const var3739!1 var2530 var3915!1) ; Statement: r37 = $r0 
(assert true) ; Non Conditional
(define-const var3095 Bool var2219-debug) ; Statement: $z5 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z5 == 0 goto return r37 
(assert (= (ite var3095 1 0) 0)) ; Cond: $z5 == 0 
 ; Statement: return r37 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), precedence/-1875912268=([org.antlr.v4.runtime.atn.PrecedencePredicateTransition], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), var2530-init=([], org.antlr.v4.runtime.atn.ATNConfig), target/104774883=([org.antlr.v4.runtime.atn.Transition], org.antlr.v4.runtime.atn.ATNState), cast-from-var959-to-var3225=([org.antlr.v4.runtime.atn.PrecedencePredicateTransition], org.antlr.v4.runtime.atn.Transition), <init>/-1611607817=([org.antlr.v4.runtime.atn.ATNConfig, org.antlr.v4.runtime.atn.ATNConfig, org.antlr.v4.runtime.atn.ATNState], void)}
; {var2219=org.antlr.v4.runtime.atn.ParserATNSimulator, var1755=r13, var2530=org.antlr.v4.runtime.atn.ATNConfig, var1675=r1, var959=org.antlr.v4.runtime.atn.PrecedencePredicateTransition, var2749=r2, var3346=z1, var1324=z2, var1037=z3, var3068=$z0, var2211=java.io.PrintStream, var3805=java.lang.System, var756=$r22, var878=$r21, var1133=$r23, var3884=$r24, var3100=$r25, var3838=$i2, var3768=$r26, var2891=$r27, var1933=$r28, var2771=org.antlr.v4.runtime.Parser, var2213=$r29, var3739=r37, var3915=$r0, var2295=org.antlr.v4.runtime.atn.ATNState, var3225=org.antlr.v4.runtime.atn.Transition, var2799=$r3, var3095=$z5}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var2219, r13=var1755, org.antlr.v4.runtime.atn.ATNConfig=var2530, r1=var1675, org.antlr.v4.runtime.atn.PrecedencePredicateTransition=var959, r2=var2749, z1=var3346, z2=var1324, z3=var1037, $z0=var3068, java.io.PrintStream=var2211, java.lang.System=var3805, $r22=var756, $r21=var878, $r23=var1133, $r24=var3884, $r25=var3100, $i2=var3838, $r26=var3768, $r27=var2891, $r28=var1933, org.antlr.v4.runtime.Parser=var2771, $r29=var2213, r37=var3739, $r0=var3915, org.antlr.v4.runtime.atn.ATNState=var2295, org.antlr.v4.runtime.atn.Transition=var3225, $r3=var2799, $z5=var3095}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r1 := @parameter0: org.antlr.v4.runtime.atn.ATNConfig;	r2 := @parameter1: org.antlr.v4.runtime.atn.PrecedencePredicateTransition;	z1 := @parameter2: boolean;	z2 := @parameter3: boolean;	z3 := @parameter4: boolean;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto r37 = null;	$r22 = <java.lang.System: java.io.PrintStream out>;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PRED (collectPredicates=");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z1);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$i2 = r2.<org.antlr.v4.runtime.atn.PrecedencePredicateTransition: int precedence>;	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">=_p, ctx dependent=true");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r22.<java.io.PrintStream: void println(java.lang.String)>($r28);	$r29 = r13.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	if $r29 == null goto r37 = null;	r37 = null;	if z1 == 0 goto $r0 = new org.antlr.v4.runtime.atn.ATNConfig;	$r0 = new org.antlr.v4.runtime.atn.ATNConfig;	$r3 = r2.<org.antlr.v4.runtime.atn.PrecedencePredicateTransition: org.antlr.v4.runtime.atn.ATNState target>;	specialinvoke $r0.<org.antlr.v4.runtime.atn.ATNConfig: void <init>(org.antlr.v4.runtime.atn.ATNConfig,org.antlr.v4.runtime.atn.ATNState)>(r1, $r3);	r37 = $r0;	$z5 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z5 == 0 goto return r37;	return r37
;block_num 6