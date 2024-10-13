(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1965 0)
(declare-sort var3414 0)
(declare-sort var2133 0)
(declare-sort var2821 0)
(declare-sort var2049 0)
(declare-sort var441 0)
(declare-sort var3296 0)
(declare-sort var32 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-388390247 (String Bool) String)
(declare-fun ruleIndex/45271710 (var2133) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun predIndex/45271710 (var2133) Int)
(declare-fun isCtxDependent/45271710 (var2133) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2821 String) void)
(declare-fun parser/145254134 (var1965) var441)
(declare-fun var3414-init () var3414)
(declare-fun target/104774883 (var32) var3296)
(declare-fun cast-from-var2133-to-var32 (var2133) var32)
(declare-fun <init>/-1611607817 (var3414 var3414 var3296) void)
(declare-const null-var1965 var1965)
(declare-const null-var3414 var3414)
(declare-const null-var2133 var2133)
(declare-const null-Bool Bool)
(declare-const var1965-debug Bool)
(declare-const var2049-out var2821)
(declare-const null-var441 var441)
(declare-const var106 var1965) ; Statement: r11 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var106 null-var1965)))
(declare-const var2261 var3414) ; Statement: r0 := @parameter0: org.antlr.v4.runtime.atn.ATNConfig 
(assert (not (= var2261 null-var3414)))
(declare-const var3101 var2133) ; Statement: r1 := @parameter1: org.antlr.v4.runtime.atn.PredicateTransition 
(assert (not (= var3101 null-var2133)))
(declare-const var629 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var629 null-Bool)))
(declare-const var2705 Bool) ; Statement: z6 := @parameter3: boolean 
(assert (not (= var2705 null-Bool)))
(declare-const var2844 Bool) ; Statement: z3 := @parameter4: boolean 
(assert (not (= var2844 null-Bool)))
(define-const var3294 Bool var1965-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto r38 = null 
(assert (not (= (ite var3294 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3460 var2821 var2049-out) ; Statement: $r20 = <java.lang.System: java.io.PrintStream out> 
(define-const var1578 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1578)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1578!1 String)
(assert (= var1578!1 ""))
(assert true)
(define-const var270 String (append/672562846 var1578!1 "PRED (collectPredicates=")) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PRED (collectPredicates=") 
(declare-const var1578!2 String)
(assert (= var1578!2 (str.++ var1578!1 "PRED (collectPredicates=")))
(assert true)
(define-const var3972 String (append/-388390247 var270 var629)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z1) 
(declare-const var270!1 String)
(assert (str.prefixof var270 var270!1))
(assert true)
(define-const var1074 String (append/672562846 var3972 ") ")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var3972!1 String)
(assert (= var3972!1 (str.++ var3972 ") ")))
(define-const var1266 Int (ruleIndex/45271710 var3101)) ; Statement: $i2 = r1.<org.antlr.v4.runtime.atn.PredicateTransition: int ruleIndex> 
(assert true)
(define-const var3276 String (append/-1001720160 var1074 var1266)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var1074!1 String)
(assert (str.prefixof var1074 var1074!1))
(assert true)
(define-const var2914 String (append/672562846 var3276 ":")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3276!1 String)
(assert (= var3276!1 (str.++ var3276 ":")))
(define-const var2967 Int (predIndex/45271710 var3101)) ; Statement: $i3 = r1.<org.antlr.v4.runtime.atn.PredicateTransition: int predIndex> 
(assert true)
(define-const var1016 String (append/-1001720160 var2914 var2967)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var2914!1 String)
(assert (str.prefixof var2914 var2914!1))
(assert true)
(define-const var2364 String (append/672562846 var1016 ", ctx dependent=")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ctx dependent=") 
(declare-const var1016!1 String)
(assert (= var1016!1 (str.++ var1016 ", ctx dependent=")))
(define-const var2490 Bool (isCtxDependent/45271710 var3101)) ; Statement: $z7 = r1.<org.antlr.v4.runtime.atn.PredicateTransition: boolean isCtxDependent> 
(assert true)
(define-const var2415 String (append/-388390247 var2364 var2490)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z7) 
(declare-const var2364!1 String)
(assert (str.prefixof var2364 var2364!1))
(assert true)
(define-const var3480 String (toString/-2075883882 var2415)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3460 var3480)) ; Statement: virtualinvoke $r20.<java.io.PrintStream: void println(java.lang.String)>($r29) 

(declare-const var3460!1 var2821)
(declare-const var3480!1 String)
(define-const var1181 var441 (parser/145254134 var106)) ; Statement: $r30 = r11.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
 ; Statement: if $r30 == null goto r38 = null 
(assert (= var1181 null-var441)) ; Cond: $r30 == null 
(define-const var186 var3414 null-var3414) ; Statement: r38 = null 
 ; Statement: if z1 == 0 goto $r40 = new org.antlr.v4.runtime.atn.ATNConfig 
(assert (= (ite var629 1 0) 0)) ; Cond: z1 == 0 
(define-const var3540 var3414 var3414-init) ; Statement: $r40 = new org.antlr.v4.runtime.atn.ATNConfig 
(define-const var1928 var3296 (target/104774883 (cast-from-var2133-to-var32 var3101))) ; Statement: $r41 = r1.<org.antlr.v4.runtime.atn.PredicateTransition: org.antlr.v4.runtime.atn.ATNState target> 
(assert true)
;(assert (<init>/-1611607817 var3540 var2261 var1928)) ; Statement: specialinvoke $r40.<org.antlr.v4.runtime.atn.ATNConfig: void <init>(org.antlr.v4.runtime.atn.ATNConfig,org.antlr.v4.runtime.atn.ATNState)>(r0, $r41) 

(declare-const var3540!1 var3414)
(declare-const var2261!1 var3414)
(declare-const var1928!1 var3296)
(define-const var186!1 var3414 var3540!1) ; Statement: r38 = $r40 
(assert true) ; Non Conditional
(define-const var2717 Bool var1965-debug) ; Statement: $z8 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z8 == 0 goto return r38 
(assert (= (ite var2717 1 0) 0)) ; Cond: $z8 == 0 
 ; Statement: return r38 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), ruleIndex/45271710=([org.antlr.v4.runtime.atn.PredicateTransition], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), predIndex/45271710=([org.antlr.v4.runtime.atn.PredicateTransition], int), isCtxDependent/45271710=([org.antlr.v4.runtime.atn.PredicateTransition], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), var3414-init=([], org.antlr.v4.runtime.atn.ATNConfig), target/104774883=([org.antlr.v4.runtime.atn.Transition], org.antlr.v4.runtime.atn.ATNState), cast-from-var2133-to-var32=([org.antlr.v4.runtime.atn.PredicateTransition], org.antlr.v4.runtime.atn.Transition), <init>/-1611607817=([org.antlr.v4.runtime.atn.ATNConfig, org.antlr.v4.runtime.atn.ATNConfig, org.antlr.v4.runtime.atn.ATNState], void)}
; {var1965=org.antlr.v4.runtime.atn.ParserATNSimulator, var106=r11, var3414=org.antlr.v4.runtime.atn.ATNConfig, var2261=r0, var2133=org.antlr.v4.runtime.atn.PredicateTransition, var3101=r1, var629=z1, var2705=z6, var2844=z3, var3294=$z0, var2821=java.io.PrintStream, var2049=java.lang.System, var3460=$r20, var1578=$r19, var270=$r21, var3972=$r22, var1074=$r23, var1266=$i2, var3276=$r24, var2914=$r25, var2967=$i3, var1016=$r26, var2364=$r27, var2490=$z7, var2415=$r28, var3480=$r29, var441=org.antlr.v4.runtime.Parser, var1181=$r30, var186=r38, var3540=$r40, var3296=org.antlr.v4.runtime.atn.ATNState, var32=org.antlr.v4.runtime.atn.Transition, var1928=$r41, var2717=$z8}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var1965, r11=var106, org.antlr.v4.runtime.atn.ATNConfig=var3414, r0=var2261, org.antlr.v4.runtime.atn.PredicateTransition=var2133, r1=var3101, z1=var629, z6=var2705, z3=var2844, $z0=var3294, java.io.PrintStream=var2821, java.lang.System=var2049, $r20=var3460, $r19=var1578, $r21=var270, $r22=var3972, $r23=var1074, $i2=var1266, $r24=var3276, $r25=var2914, $i3=var2967, $r26=var1016, $r27=var2364, $z7=var2490, $r28=var2415, $r29=var3480, org.antlr.v4.runtime.Parser=var441, $r30=var1181, r38=var186, $r40=var3540, org.antlr.v4.runtime.atn.ATNState=var3296, org.antlr.v4.runtime.atn.Transition=var32, $r41=var1928, $z8=var2717}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r0 := @parameter0: org.antlr.v4.runtime.atn.ATNConfig;	r1 := @parameter1: org.antlr.v4.runtime.atn.PredicateTransition;	z1 := @parameter2: boolean;	z6 := @parameter3: boolean;	z3 := @parameter4: boolean;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto r38 = null;	$r20 = <java.lang.System: java.io.PrintStream out>;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PRED (collectPredicates=");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z1);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$i2 = r1.<org.antlr.v4.runtime.atn.PredicateTransition: int ruleIndex>;	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i3 = r1.<org.antlr.v4.runtime.atn.PredicateTransition: int predIndex>;	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ctx dependent=");	$z7 = r1.<org.antlr.v4.runtime.atn.PredicateTransition: boolean isCtxDependent>;	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z7);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r20.<java.io.PrintStream: void println(java.lang.String)>($r29);	$r30 = r11.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	if $r30 == null goto r38 = null;	r38 = null;	if z1 == 0 goto $r40 = new org.antlr.v4.runtime.atn.ATNConfig;	$r40 = new org.antlr.v4.runtime.atn.ATNConfig;	$r41 = r1.<org.antlr.v4.runtime.atn.PredicateTransition: org.antlr.v4.runtime.atn.ATNState target>;	specialinvoke $r40.<org.antlr.v4.runtime.atn.ATNConfig: void <init>(org.antlr.v4.runtime.atn.ATNConfig,org.antlr.v4.runtime.atn.ATNState)>(r0, $r41);	r38 = $r40;	$z8 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z8 == 0 goto return r38;	return r38
;block_num 6