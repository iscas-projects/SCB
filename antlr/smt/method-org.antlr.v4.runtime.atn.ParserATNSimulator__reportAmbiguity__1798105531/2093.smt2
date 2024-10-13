(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var332 0)
(declare-sort var2071 0)
(declare-sort var1451 0)
(declare-sort var810 0)
(declare-sort var3023 0)
(declare-sort var2891 0)
(declare-sort var2768 0)
(declare-sort var1939 0)
(declare-sort var1166 0)
(declare-sort var3529 0)
(declare-sort var2764 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2891_of/-1711527236 (Int Int) var2891)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1166) String)
(declare-fun cast-from-var810-to-var1166 (var810) var1166)
(declare-fun cast-from-var3023-to-var1166 (var3023) var1166)
(declare-fun parser/145254134 (var332) var3529)
(declare-fun getTokenStream/-211092484 (var3529) var2764)
(declare-fun var2764_getText/1167499073 (var2764 var2891) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2768 String) void)
(declare-const null-var332 var332)
(declare-const null-var2071 var2071)
(declare-const null-var1451 var1451)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var810 var810)
(declare-const null-var3023 var3023)
(declare-const var332-debug Bool)
(declare-const var1939-out var2768)
(declare-const null-var3529 var3529)
(declare-const var3075 var332) ; Statement: r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var3075 null-var332)))
(declare-const var2152 var2071) ; Statement: r16 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var2152 null-var2071)))
(declare-const var2980 var1451) ; Statement: r20 := @parameter1: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var2980 null-var1451)))
(declare-const var414 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var414 null-Int)))
(declare-const var3036 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var3036 null-Int)))
(declare-const var2395 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var2395 null-Bool)))
(declare-const var1573 var810) ; Statement: r2 := @parameter5: java.util.BitSet 
(assert (not (= var1573 null-var810)))
(declare-const var2204 var3023) ; Statement: r5 := @parameter6: org.antlr.v4.runtime.atn.ATNConfigSet 
(assert (not (= var2204 null-var3023)))
(define-const var3382 Bool var332-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(assert (not (= (ite var3382 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1325 var2891 (var2891_of/-1711527236 var414 var3036)) ; Statement: $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(define-const var1564 var2768 var1939-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var2205 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2205)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2205!1 String)
(assert (= var2205!1 ""))
(assert true)
(define-const var1810 String (append/672562846 var2205!1 "reportAmbiguity ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAmbiguity ") 
(declare-const var2205!2 String)
(assert (= var2205!2 (str.++ var2205!1 "reportAmbiguity ")))
(assert true)
(define-const var988 String (append/-1031950772 var1810 (cast-from-var810-to-var1166 var1573))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1810!1 String)
(assert (str.prefixof var1810 var1810!1))
(assert true)
(define-const var1515 String (append/672562846 var988 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var988!1 String)
(assert (= var988!1 (str.++ var988 ":")))
(assert true)
(define-const var744 String (append/-1031950772 var1515 (cast-from-var3023-to-var1166 var2204))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var1515!1 String)
(assert (str.prefixof var1515 var1515!1))
(assert true)
(define-const var3729 String (append/672562846 var744 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var744!1 String)
(assert (= var744!1 (str.++ var744 ", input=")))
(define-const var3462 var3529 (parser/145254134 var3075)) ; Statement: $r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var3788 var2764 (getTokenStream/-211092484 var3462)) ; Statement: $r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>() 
(define-const var3211 String (var2764_getText/1167499073 var3788 var1325)) ; Statement: $r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r19) 
(assert true)
(define-const var1380 String (append/672562846 var3729 var3211)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3729!1 String)
(assert (= var3729!1 (str.++ var3729 var3211)))
(assert true)
(define-const var2294 String (toString/-2075883882 var1380)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1564 var2294)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var1564!1 var2768)
(declare-const var2294!1 String)
(assert true) ; Non Conditional
(define-const var367 var3529 (parser/145254134 var3075)) ; Statement: $r21 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
 ; Statement: if $r21 == null goto return 
(assert (= var367 null-var3529)) ; Cond: $r21 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2891_of/-1711527236=([int, int], org.antlr.v4.runtime.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var810-to-var1166=([java.util.BitSet], java.lang.Object), cast-from-var3023-to-var1166=([org.antlr.v4.runtime.atn.ATNConfigSet], java.lang.Object), parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), getTokenStream/-211092484=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.TokenStream), var2764_getText/1167499073=([org.antlr.v4.runtime.TokenStream, org.antlr.v4.runtime.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var332=org.antlr.v4.runtime.atn.ParserATNSimulator, var3075=r8, var2071=org.antlr.v4.runtime.dfa.DFA, var2152=r16, var1451=org.antlr.v4.runtime.dfa.DFAState, var2980=r20, var414=i0, var3036=i1, var2395=z1, var810=java.util.BitSet, var1573=r2, var3023=org.antlr.v4.runtime.atn.ATNConfigSet, var2204=r5, var3382=$z0, var2891=org.antlr.v4.runtime.misc.Interval, var1325=$r19, var2768=java.io.PrintStream, var1939=java.lang.System, var1564=$r1, var2205=$r0, var1810=$r3, var1166=java.lang.Object, var988=$r4, var1515=$r6, var744=$r7, var3729=$r12, var3529=org.antlr.v4.runtime.Parser, var3462=$r9, var2764=org.antlr.v4.runtime.TokenStream, var3788=$r10, var3211=$r11, var1380=$r13, var2294=$r14, var367=$r21}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var332, r8=var3075, org.antlr.v4.runtime.dfa.DFA=var2071, r16=var2152, org.antlr.v4.runtime.dfa.DFAState=var1451, r20=var2980, i0=var414, i1=var3036, z1=var2395, java.util.BitSet=var810, r2=var1573, org.antlr.v4.runtime.atn.ATNConfigSet=var3023, r5=var2204, $z0=var3382, org.antlr.v4.runtime.misc.Interval=var2891, $r19=var1325, java.io.PrintStream=var2768, java.lang.System=var1939, $r1=var1564, $r0=var2205, $r3=var1810, java.lang.Object=var1166, $r4=var988, $r6=var1515, $r7=var744, $r12=var3729, org.antlr.v4.runtime.Parser=var3529, $r9=var3462, org.antlr.v4.runtime.TokenStream=var2764, $r10=var3788, $r11=var3211, $r13=var1380, $r14=var2294, $r21=var367}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r16 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r20 := @parameter1: org.antlr.v4.runtime.dfa.DFAState;	i0 := @parameter2: int;	i1 := @parameter3: int;	z1 := @parameter4: boolean;	r2 := @parameter5: java.util.BitSet;	r5 := @parameter6: org.antlr.v4.runtime.atn.ATNConfigSet;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAmbiguity ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r19);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r21 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	if $r21 == null goto return;	return
;block_num 4