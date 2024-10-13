(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3389 0)
(declare-sort var3567 0)
(declare-sort var3373 0)
(declare-sort var3762 0)
(declare-sort var3670 0)
(declare-sort var2218 0)
(declare-sort var2432 0)
(declare-sort var2792 0)
(declare-sort var3321 0)
(declare-sort var938 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun target/104774883 (var2432) var2218)
(declare-fun cast-from-var3373-to-var2432 (var3373) var2432)
(declare-fun ruleIndex/-1160961596 (var2218) Int)
(declare-fun getRuleName/707124862 (var3389 Int) String)
(declare-fun context/-2092381073 (var3567) var2792)
(declare-fun append/-1031950772 (String var3321) String)
(declare-fun cast-from-var2792-to-var3321 (var2792) var3321)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3762 String) void)
(declare-fun followState/947138047 (var3373) var2218)
(declare-fun stateNumber/-1160961596 (var2218) Int)
(declare-fun var938_create/-1216121396 (var2792 Int) var938)
(declare-fun var3567-init () var3567)
(declare-fun <init>/97829041 (var3567 var3567 var2218 var2792) void)
(declare-fun cast-from-var938-to-var2792 (var938) var2792)
(declare-const null-var3389 var3389)
(declare-const null-var3567 var3567)
(declare-const null-var3373 var3373)
(declare-const var3389-debug Bool)
(declare-const var3670-out var3762)
(declare-const var860 var3389) ; Statement: r7 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var860 null-var3389)))
(declare-const var180 var3567) ; Statement: r1 := @parameter0: org.antlr.v4.runtime.atn.ATNConfig 
(assert (not (= var180 null-var3567)))
(declare-const var626 var3373) ; Statement: r0 := @parameter1: org.antlr.v4.runtime.atn.RuleTransition 
(assert (not (= var626 null-var3373)))
(define-const var199 Bool var3389-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto $r16 = r0.<org.antlr.v4.runtime.atn.RuleTransition: org.antlr.v4.runtime.atn.ATNState followState> 
(assert (not (= (ite var199 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1733 var3762 var3670-out) ; Statement: $r6 = <java.lang.System: java.io.PrintStream out> 
(define-const var662 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var662)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var662!1 String)
(assert (= var662!1 ""))
(assert true)
(define-const var645 String (append/672562846 var662!1 "CALL rule ")) ; Statement: $r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CALL rule ") 
(declare-const var662!2 String)
(assert (= var662!2 (str.++ var662!1 "CALL rule ")))
(define-const var2195 var2218 (target/104774883 (cast-from-var3373-to-var2432 var626))) ; Statement: $r8 = r0.<org.antlr.v4.runtime.atn.RuleTransition: org.antlr.v4.runtime.atn.ATNState target> 
(define-const var3906 Int (ruleIndex/-1160961596 var2195)) ; Statement: $i1 = $r8.<org.antlr.v4.runtime.atn.ATNState: int ruleIndex> 
(assert true)
(define-const var1322 String (getRuleName/707124862 var860 var3906)) ; Statement: $r9 = virtualinvoke r7.<org.antlr.v4.runtime.atn.ParserATNSimulator: java.lang.String getRuleName(int)>($i1) 
(assert true)
(define-const var869 String (append/672562846 var645 var1322)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var645!1 String)
(assert (= var645!1 (str.++ var645 var1322)))
(assert true)
(define-const var11 String (append/672562846 var869 ", ctx=")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ctx=") 
(declare-const var869!1 String)
(assert (= var869!1 (str.++ var869 ", ctx=")))
(define-const var3885 var2792 (context/-2092381073 var180)) ; Statement: $r12 = r1.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.PredictionContext context> 
(assert true)
(define-const var1993 String (append/-1031950772 var11 (cast-from-var2792-to-var3321 var3885))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12) 
(declare-const var11!1 String)
(assert (str.prefixof var11 var11!1))
(assert true)
(define-const var916 String (toString/-2075883882 var1993)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1733 var916)) ; Statement: virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>($r15) 

(declare-const var1733!1 var3762)
(declare-const var916!1 String)
(assert true) ; Non Conditional
(define-const var1411 var2218 (followState/947138047 var626)) ; Statement: $r16 = r0.<org.antlr.v4.runtime.atn.RuleTransition: org.antlr.v4.runtime.atn.ATNState followState> 
(define-const var164 var2792 (context/-2092381073 var180)) ; Statement: $r2 = r1.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.PredictionContext context> 
(define-const var2768 Int (stateNumber/-1160961596 var1411)) ; Statement: $i0 = $r16.<org.antlr.v4.runtime.atn.ATNState: int stateNumber> 
(define-const var2814 var938 (var938_create/-1216121396 var164 var2768)) ; Statement: $r17 = staticinvoke <org.antlr.v4.runtime.atn.SingletonPredictionContext: org.antlr.v4.runtime.atn.SingletonPredictionContext create(org.antlr.v4.runtime.atn.PredictionContext,int)>($r2, $i0) 
(define-const var1629 var3567 var3567-init) ; Statement: $r3 = new org.antlr.v4.runtime.atn.ATNConfig 
(define-const var2883 var2218 (target/104774883 (cast-from-var3373-to-var2432 var626))) ; Statement: $r4 = r0.<org.antlr.v4.runtime.atn.RuleTransition: org.antlr.v4.runtime.atn.ATNState target> 
(assert true)
;(assert (<init>/97829041 var1629 var180 var2883 (cast-from-var938-to-var2792 var2814))) ; Statement: specialinvoke $r3.<org.antlr.v4.runtime.atn.ATNConfig: void <init>(org.antlr.v4.runtime.atn.ATNConfig,org.antlr.v4.runtime.atn.ATNState,org.antlr.v4.runtime.atn.PredictionContext)>(r1, $r4, $r17) 

(declare-const var1629!1 var3567)
(declare-const var180!1 var3567)
(declare-const var2883!1 var2218)
(declare-const var2814!1 var938)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), target/104774883=([org.antlr.v4.runtime.atn.Transition], org.antlr.v4.runtime.atn.ATNState), cast-from-var3373-to-var2432=([org.antlr.v4.runtime.atn.RuleTransition], org.antlr.v4.runtime.atn.Transition), ruleIndex/-1160961596=([org.antlr.v4.runtime.atn.ATNState], int), getRuleName/707124862=([org.antlr.v4.runtime.atn.ParserATNSimulator, int], java.lang.String), context/-2092381073=([org.antlr.v4.runtime.atn.ATNConfig], org.antlr.v4.runtime.atn.PredictionContext), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2792-to-var3321=([org.antlr.v4.runtime.atn.PredictionContext], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), followState/947138047=([org.antlr.v4.runtime.atn.RuleTransition], org.antlr.v4.runtime.atn.ATNState), stateNumber/-1160961596=([org.antlr.v4.runtime.atn.ATNState], int), var938_create/-1216121396=([org.antlr.v4.runtime.atn.PredictionContext, int], org.antlr.v4.runtime.atn.SingletonPredictionContext), var3567-init=([], org.antlr.v4.runtime.atn.ATNConfig), <init>/97829041=([org.antlr.v4.runtime.atn.ATNConfig, org.antlr.v4.runtime.atn.ATNConfig, org.antlr.v4.runtime.atn.ATNState, org.antlr.v4.runtime.atn.PredictionContext], void), cast-from-var938-to-var2792=([org.antlr.v4.runtime.atn.SingletonPredictionContext], org.antlr.v4.runtime.atn.PredictionContext)}
; {var3389=org.antlr.v4.runtime.atn.ParserATNSimulator, var860=r7, var3567=org.antlr.v4.runtime.atn.ATNConfig, var180=r1, var3373=org.antlr.v4.runtime.atn.RuleTransition, var626=r0, var199=$z0, var3762=java.io.PrintStream, var3670=java.lang.System, var1733=$r6, var662=$r5, var645=$r10, var2218=org.antlr.v4.runtime.atn.ATNState, var2432=org.antlr.v4.runtime.atn.Transition, var2195=$r8, var3906=$i1, var1322=$r9, var869=$r11, var11=$r13, var2792=org.antlr.v4.runtime.atn.PredictionContext, var3885=$r12, var3321=java.lang.Object, var1993=$r14, var916=$r15, var1411=$r16, var164=$r2, var2768=$i0, var938=org.antlr.v4.runtime.atn.SingletonPredictionContext, var2814=$r17, var1629=$r3, var2883=$r4}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var3389, r7=var860, org.antlr.v4.runtime.atn.ATNConfig=var3567, r1=var180, org.antlr.v4.runtime.atn.RuleTransition=var3373, r0=var626, $z0=var199, java.io.PrintStream=var3762, java.lang.System=var3670, $r6=var1733, $r5=var662, $r10=var645, org.antlr.v4.runtime.atn.ATNState=var2218, org.antlr.v4.runtime.atn.Transition=var2432, $r8=var2195, $i1=var3906, $r9=var1322, $r11=var869, $r13=var11, org.antlr.v4.runtime.atn.PredictionContext=var2792, $r12=var3885, java.lang.Object=var3321, $r14=var1993, $r15=var916, $r16=var1411, $r2=var164, $i0=var2768, org.antlr.v4.runtime.atn.SingletonPredictionContext=var938, $r17=var2814, $r3=var1629, $r4=var2883}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r1 := @parameter0: org.antlr.v4.runtime.atn.ATNConfig;	r0 := @parameter1: org.antlr.v4.runtime.atn.RuleTransition;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto $r16 = r0.<org.antlr.v4.runtime.atn.RuleTransition: org.antlr.v4.runtime.atn.ATNState followState>;	$r6 = <java.lang.System: java.io.PrintStream out>;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CALL rule ");	$r8 = r0.<org.antlr.v4.runtime.atn.RuleTransition: org.antlr.v4.runtime.atn.ATNState target>;	$i1 = $r8.<org.antlr.v4.runtime.atn.ATNState: int ruleIndex>;	$r9 = virtualinvoke r7.<org.antlr.v4.runtime.atn.ParserATNSimulator: java.lang.String getRuleName(int)>($i1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ctx=");	$r12 = r1.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.PredictionContext context>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>($r15);	$r16 = r0.<org.antlr.v4.runtime.atn.RuleTransition: org.antlr.v4.runtime.atn.ATNState followState>;	$r2 = r1.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.PredictionContext context>;	$i0 = $r16.<org.antlr.v4.runtime.atn.ATNState: int stateNumber>;	$r17 = staticinvoke <org.antlr.v4.runtime.atn.SingletonPredictionContext: org.antlr.v4.runtime.atn.SingletonPredictionContext create(org.antlr.v4.runtime.atn.PredictionContext,int)>($r2, $i0);	$r3 = new org.antlr.v4.runtime.atn.ATNConfig;	$r4 = r0.<org.antlr.v4.runtime.atn.RuleTransition: org.antlr.v4.runtime.atn.ATNState target>;	specialinvoke $r3.<org.antlr.v4.runtime.atn.ATNConfig: void <init>(org.antlr.v4.runtime.atn.ATNConfig,org.antlr.v4.runtime.atn.ATNState,org.antlr.v4.runtime.atn.PredictionContext)>(r1, $r4, $r17);	return $r3
;block_num 3