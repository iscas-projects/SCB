(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1543 0)
(declare-sort var2227 0)
(declare-sort var2326 0)
(declare-sort var582 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1543_reInitAll/529526883 () void)
(declare-fun var2227_bannerLine/595128218 (String String) void)
(declare-fun println/1773605060 (var2326 String) void)
(declare-fun var1543_help_message/552910000 () void)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var582-out var2326)
(declare-const var1678 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var1678 null-__Array__Int__String__)))
(define-const var427 Int (getLength-Arr-String-1 var1678)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 != 1 goto staticinvoke <org.javacc.parser.Main: void reInitAll()>() 
(assert (not (= var427 1))) ; Cond: $i0 != 1 
;(assert var1543_reInitAll/529526883) ; Statement: staticinvoke <org.javacc.parser.Main: void reInitAll()>() 
;(assert (var2227_bannerLine/595128218 "Parser Generator" "")) ; Statement: staticinvoke <org.javacc.parser.JavaCCGlobals: void bannerLine(java.lang.String,java.lang.String)>("Parser Generator", "") 

(declare-const var3968 String)
(declare-const var1868 String)
(define-const var1462 Int (getLength-Arr-String-1 var1678)) ; Statement: $i1 = lengthof r0 
 ; Statement: if $i1 != 0 goto $r1 = <java.lang.System: java.io.PrintStream out> 
(assert (not (not (= var1462 0)))) ; Negate: Cond: $i1 != 0  
(define-const var2835 var2326 var582-out) ; Statement: $r77 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (println/1773605060 var2835 "")) ; Statement: virtualinvoke $r77.<java.io.PrintStream: void println(java.lang.String)>("") 

(declare-const var2835!1 var2326)
(declare-const var1868!1 String)
;(assert var1543_help_message/552910000) ; Statement: staticinvoke <org.javacc.parser.Main: void help_message()>() 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-String-1=([java.lang.String[]], int), var1543_reInitAll/529526883=([], void), var2227_bannerLine/595128218=([java.lang.String, java.lang.String], void), println/1773605060=([java.io.PrintStream, java.lang.String], void), var1543_help_message/552910000=([], void)}
; {var1678=r0, var427=$i0, var1543=org.javacc.parser.Main, var2227=org.javacc.parser.JavaCCGlobals, var3968="Parser Generator", var1868="", var1462=$i1, var2326=java.io.PrintStream, var582=java.lang.System, var2835=$r77}
; {r0=var1678, $i0=var427, org.javacc.parser.Main=var1543, org.javacc.parser.JavaCCGlobals=var2227, "Parser Generator"=var3968, ""=var1868, $i1=var1462, java.io.PrintStream=var2326, java.lang.System=var582, $r77=var2835}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.String[];	$i0 = lengthof r0;	if $i0 != 1 goto staticinvoke <org.javacc.parser.Main: void reInitAll()>();	staticinvoke <org.javacc.parser.Main: void reInitAll()>();	staticinvoke <org.javacc.parser.JavaCCGlobals: void bannerLine(java.lang.String,java.lang.String)>("Parser Generator", "");	$i1 = lengthof r0;	if $i1 != 0 goto $r1 = <java.lang.System: java.io.PrintStream out>;	$r77 = <java.lang.System: java.io.PrintStream out>;	virtualinvoke $r77.<java.io.PrintStream: void println(java.lang.String)>("");	staticinvoke <org.javacc.parser.Main: void help_message()>();	return 1
;block_num 3