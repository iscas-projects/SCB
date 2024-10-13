(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1307 0)
(declare-sort var3942 0)
(declare-sort var3920 0)
(declare-sort var1063 0)
(declare-sort var3666 0)
(declare-sort var669 0)
(declare-sort var1782 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ruleIndex/-2022315719 (var3920) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun actionIndex/-2022315719 (var3920) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1063 String) void)
(declare-fun var3942-init () var3942)
(declare-fun target/104774883 (var1782) var669)
(declare-fun cast-from-var3920-to-var1782 (var3920) var1782)
(declare-fun <init>/-1611607817 (var3942 var3942 var669) void)
(declare-const null-var1307 var1307)
(declare-const null-var3942 var3942)
(declare-const null-var3920 var3920)
(declare-const var1307-debug Bool)
(declare-const var3666-out var1063)
(declare-const var3933 var1307) ; Statement: r11 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var3933 null-var1307)))
(declare-const var2581 var3942) ; Statement: r1 := @parameter0: org.antlr.v4.runtime.atn.ATNConfig 
(assert (not (= var2581 null-var3942)))
(declare-const var3014 var3920) ; Statement: r2 := @parameter1: org.antlr.v4.runtime.atn.ActionTransition 
(assert (not (= var3014 null-var3920)))
(define-const var1721 Bool var1307-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto $r0 = new org.antlr.v4.runtime.atn.ATNConfig 
(assert (not (= (ite var1721 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2316 var1063 var3666-out) ; Statement: $r5 = <java.lang.System: java.io.PrintStream out> 
(define-const var2255 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2255)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2255!1 String)
(assert (= var2255!1 ""))
(assert true)
(define-const var2753 String (append/672562846 var2255!1 "ACTION edge ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ACTION edge ") 
(declare-const var2255!2 String)
(assert (= var2255!2 (str.++ var2255!1 "ACTION edge ")))
(define-const var418 Int (ruleIndex/-2022315719 var3014)) ; Statement: $i0 = r2.<org.antlr.v4.runtime.atn.ActionTransition: int ruleIndex> 
(assert true)
(define-const var2265 String (append/-1001720160 var2753 var418)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2753!1 String)
(assert (str.prefixof var2753 var2753!1))
(assert true)
(define-const var2143 String (append/672562846 var2265 ":")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2265!1 String)
(assert (= var2265!1 (str.++ var2265 ":")))
(define-const var3392 Int (actionIndex/-2022315719 var3014)) ; Statement: $i1 = r2.<org.antlr.v4.runtime.atn.ActionTransition: int actionIndex> 
(assert true)
(define-const var2831 String (append/-1001720160 var2143 var3392)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2143!1 String)
(assert (str.prefixof var2143 var2143!1))
(assert true)
(define-const var1367 String (toString/-2075883882 var2831)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2316 var1367)) ; Statement: virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>($r10) 

(declare-const var2316!1 var1063)
(declare-const var1367!1 String)
(assert true) ; Non Conditional
(define-const var2658 var3942 var3942-init) ; Statement: $r0 = new org.antlr.v4.runtime.atn.ATNConfig 
(define-const var3530 var669 (target/104774883 (cast-from-var3920-to-var1782 var3014))) ; Statement: $r3 = r2.<org.antlr.v4.runtime.atn.ActionTransition: org.antlr.v4.runtime.atn.ATNState target> 
(assert true)
;(assert (<init>/-1611607817 var2658 var2581 var3530)) ; Statement: specialinvoke $r0.<org.antlr.v4.runtime.atn.ATNConfig: void <init>(org.antlr.v4.runtime.atn.ATNConfig,org.antlr.v4.runtime.atn.ATNState)>(r1, $r3) 

(declare-const var2658!1 var3942)
(declare-const var2581!1 var3942)
(declare-const var3530!1 var669)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ruleIndex/-2022315719=([org.antlr.v4.runtime.atn.ActionTransition], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), actionIndex/-2022315719=([org.antlr.v4.runtime.atn.ActionTransition], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var3942-init=([], org.antlr.v4.runtime.atn.ATNConfig), target/104774883=([org.antlr.v4.runtime.atn.Transition], org.antlr.v4.runtime.atn.ATNState), cast-from-var3920-to-var1782=([org.antlr.v4.runtime.atn.ActionTransition], org.antlr.v4.runtime.atn.Transition), <init>/-1611607817=([org.antlr.v4.runtime.atn.ATNConfig, org.antlr.v4.runtime.atn.ATNConfig, org.antlr.v4.runtime.atn.ATNState], void)}
; {var1307=org.antlr.v4.runtime.atn.ParserATNSimulator, var3933=r11, var3942=org.antlr.v4.runtime.atn.ATNConfig, var2581=r1, var3920=org.antlr.v4.runtime.atn.ActionTransition, var3014=r2, var1721=$z0, var1063=java.io.PrintStream, var3666=java.lang.System, var2316=$r5, var2255=$r4, var2753=$r6, var418=$i0, var2265=$r7, var2143=$r8, var3392=$i1, var2831=$r9, var1367=$r10, var2658=$r0, var669=org.antlr.v4.runtime.atn.ATNState, var1782=org.antlr.v4.runtime.atn.Transition, var3530=$r3}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var1307, r11=var3933, org.antlr.v4.runtime.atn.ATNConfig=var3942, r1=var2581, org.antlr.v4.runtime.atn.ActionTransition=var3920, r2=var3014, $z0=var1721, java.io.PrintStream=var1063, java.lang.System=var3666, $r5=var2316, $r4=var2255, $r6=var2753, $i0=var418, $r7=var2265, $r8=var2143, $i1=var3392, $r9=var2831, $r10=var1367, $r0=var2658, org.antlr.v4.runtime.atn.ATNState=var669, org.antlr.v4.runtime.atn.Transition=var1782, $r3=var3530}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r1 := @parameter0: org.antlr.v4.runtime.atn.ATNConfig;	r2 := @parameter1: org.antlr.v4.runtime.atn.ActionTransition;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto $r0 = new org.antlr.v4.runtime.atn.ATNConfig;	$r5 = <java.lang.System: java.io.PrintStream out>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ACTION edge ");	$i0 = r2.<org.antlr.v4.runtime.atn.ActionTransition: int ruleIndex>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i1 = r2.<org.antlr.v4.runtime.atn.ActionTransition: int actionIndex>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>($r10);	$r0 = new org.antlr.v4.runtime.atn.ATNConfig;	$r3 = r2.<org.antlr.v4.runtime.atn.ActionTransition: org.antlr.v4.runtime.atn.ATNState target>;	specialinvoke $r0.<org.antlr.v4.runtime.atn.ATNConfig: void <init>(org.antlr.v4.runtime.atn.ATNConfig,org.antlr.v4.runtime.atn.ATNState)>(r1, $r3);	return $r0
;block_num 3