(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var6 0)
(declare-sort var23 0)
(declare-sort var2742 0)
(declare-sort var2189 0)
(declare-sort var3565 0)
(declare-sort var1813 0)
(declare-sort var1068 0)
(declare-sort var1190 0)
(declare-sort var1355 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2189_of/-1711527236 (Int Int) var2189)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun decision/-2041177131 (var23) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var1068) String)
(declare-fun cast-from-var2742-to-var1068 (var2742) var1068)
(declare-fun parser/145254134 (var6) var1190)
(declare-fun getTokenStream/-211092484 (var1190) var1355)
(declare-fun var1355_getText/1167499073 (var1355 var2189) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3565 String) void)
(declare-const null-var6 var6)
(declare-const null-var23 var23)
(declare-const null-Int Int)
(declare-const null-var2742 var2742)
(declare-const var6-debug Bool)
(declare-const var1813-out var3565)
(declare-const null-var1190 var1190)
(declare-const var1865 var6) ; Statement: r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var1865 null-var6)))
(declare-const var3713 var23) ; Statement: r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var3713 null-var23)))
(declare-const var124 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var124 null-Int)))
(declare-const var3325 var2742) ; Statement: r5 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet 
(assert (not (= var3325 null-var2742)))
(declare-const var1532 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var1532 null-Int)))
(declare-const var1672 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var1672 null-Int)))
(define-const var3422 Bool var6-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r18 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(assert (not (= (ite var3422 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1077 var2189 (var2189_of/-1711527236 var1532 var1672)) ; Statement: $r18 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(define-const var1141 var3565 var1813-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var2578 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2578)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2578!1 String)
(assert (= var2578!1 ""))
(assert true)
(define-const var3383 String (append/672562846 var2578!1 "reportContextSensitivity decision=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportContextSensitivity decision=") 
(declare-const var2578!2 String)
(assert (= var2578!2 (str.++ var2578!1 "reportContextSensitivity decision=")))
(define-const var507 Int (decision/-2041177131 var3713)) ; Statement: $i2 = r2.<org.antlr.v4.runtime.dfa.DFA: int decision> 
(assert true)
(define-const var3194 String (append/-1001720160 var3383 var507)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var3383!1 String)
(assert (str.prefixof var3383 var3383!1))
(assert true)
(define-const var3829 String (append/672562846 var3194 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3194!1 String)
(assert (= var3194!1 (str.++ var3194 ":")))
(assert true)
(define-const var3975 String (append/-1031950772 var3829 (cast-from-var2742-to-var1068 var3325))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var3829!1 String)
(assert (str.prefixof var3829 var3829!1))
(assert true)
(define-const var66 String (append/672562846 var3975 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var3975!1 String)
(assert (= var3975!1 (str.++ var3975 ", input=")))
(define-const var1973 var1190 (parser/145254134 var1865)) ; Statement: $r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var1633 var1355 (getTokenStream/-211092484 var1973)) ; Statement: $r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>() 
(define-const var310 String (var1355_getText/1167499073 var1633 var1077)) ; Statement: $r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r18) 
(assert true)
(define-const var1698 String (append/672562846 var66 var310)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var66!1 String)
(assert (= var66!1 (str.++ var66 var310)))
(assert true)
(define-const var1415 String (toString/-2075883882 var1698)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1141 var1415)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var1141!1 var3565)
(declare-const var1415!1 String)
(assert true) ; Non Conditional
(define-const var770 var1190 (parser/145254134 var1865)) ; Statement: $r19 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
 ; Statement: if $r19 == null goto return 
(assert (= var770 null-var1190)) ; Cond: $r19 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2189_of/-1711527236=([int, int], org.antlr.v4.runtime.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), decision/-2041177131=([org.antlr.v4.runtime.dfa.DFA], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2742-to-var1068=([org.antlr.v4.runtime.atn.ATNConfigSet], java.lang.Object), parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), getTokenStream/-211092484=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.TokenStream), var1355_getText/1167499073=([org.antlr.v4.runtime.TokenStream, org.antlr.v4.runtime.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var6=org.antlr.v4.runtime.atn.ParserATNSimulator, var1865=r8, var23=org.antlr.v4.runtime.dfa.DFA, var3713=r2, var124=i3, var2742=org.antlr.v4.runtime.atn.ATNConfigSet, var3325=r5, var1532=i0, var1672=i1, var3422=$z0, var2189=org.antlr.v4.runtime.misc.Interval, var1077=$r18, var3565=java.io.PrintStream, var1813=java.lang.System, var1141=$r1, var2578=$r0, var3383=$r3, var507=$i2, var3194=$r4, var3829=$r6, var1068=java.lang.Object, var3975=$r7, var66=$r12, var1190=org.antlr.v4.runtime.Parser, var1973=$r9, var1355=org.antlr.v4.runtime.TokenStream, var1633=$r10, var310=$r11, var1698=$r13, var1415=$r14, var770=$r19}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var6, r8=var1865, org.antlr.v4.runtime.dfa.DFA=var23, r2=var3713, i3=var124, org.antlr.v4.runtime.atn.ATNConfigSet=var2742, r5=var3325, i0=var1532, i1=var1672, $z0=var3422, org.antlr.v4.runtime.misc.Interval=var2189, $r18=var1077, java.io.PrintStream=var3565, java.lang.System=var1813, $r1=var1141, $r0=var2578, $r3=var3383, $i2=var507, $r4=var3194, $r6=var3829, java.lang.Object=var1068, $r7=var3975, $r12=var66, org.antlr.v4.runtime.Parser=var1190, $r9=var1973, org.antlr.v4.runtime.TokenStream=var1355, $r10=var1633, $r11=var310, $r13=var1698, $r14=var1415, $r19=var770}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	i3 := @parameter1: int;	r5 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet;	i0 := @parameter3: int;	i1 := @parameter4: int;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r18 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$r18 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportContextSensitivity decision=");	$i2 = r2.<org.antlr.v4.runtime.dfa.DFA: int decision>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r18);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r19 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	if $r19 == null goto return;	return
;block_num 4