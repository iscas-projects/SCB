(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1697 0)
(declare-sort var3530 0)
(declare-sort var2 0)
(declare-sort var1761 0)
(declare-sort var2218 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun defaultLexState/658263060 (var1697) Int)
(declare-fun var2-init () var2)
(declare-fun <init>/451842749 (var2) void)
(declare-fun println/1773605060 (var1761 String) void)
(declare-const null-var1697 var1697)
(declare-const null-String String)
(declare-const var2218-err var1761)
(declare-const var2481 var1697) ; Statement: r1 := @parameter0: org.javacc.parser.TokenizerData 
(assert (not (= var2481 null-var1697)))
(declare-const var1655 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1655 null-String)))
(assert true)
(define-const var71 Int (length/-134980193 var1655)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1996 Int 0) ; Statement: i15 = 0 
(define-const var3285 Int (defaultLexState/658263060 var2481)) ; Statement: i16 = r1.<org.javacc.parser.TokenizerData: int defaultLexState> 
(define-const var2332 var2 var2-init) ; Statement: $r75 = new java.util.HashSet 
(assert true)
;(assert (<init>/451842749 var2332)) ; Statement: specialinvoke $r75.<java.util.HashSet: void <init>()>() 

(declare-const var2332!1 var2)
(define-const var69 var2 var2332!1) ; Statement: r68 = $r75 
(define-const var2188 var2 var2-init) ; Statement: $r76 = new java.util.HashSet 
(assert true)
;(assert (<init>/451842749 var2188)) ; Statement: specialinvoke $r76.<java.util.HashSet: void <init>()>() 

(declare-const var2188!1 var2)
(define-const var1800 var2 var2188!1) ; Statement: r69 = $r76 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i0 goto $r4 = <java.lang.System: java.io.PrintStream err> 
(assert (>= var1996 var71)) ; Cond: i15 >= i0 
(define-const var1027 var1761 var2218-err) ; Statement: $r4 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/1773605060 var1027 "Matched EOF")) ; Statement: virtualinvoke $r4.<java.io.PrintStream: void println(java.lang.String)>("Matched EOF") 

(declare-const var1027!1 var1761)
(declare-const var3015 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), defaultLexState/658263060=([org.javacc.parser.TokenizerData], int), var2-init=([], java.util.HashSet), <init>/451842749=([java.util.HashSet], void), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var1697=org.javacc.parser.TokenizerData, var2481=r1, var1655=r0, var3530=null_type, var71=i0, var1996=i15, var3285=i16, var2=java.util.HashSet, var2332=$r75, var69=r68, var2188=$r76, var1800=r69, var1761=java.io.PrintStream, var2218=java.lang.System, var1027=$r4, var3015="Matched EOF"}
; {org.javacc.parser.TokenizerData=var1697, r1=var2481, r0=var1655, null_type=var3530, i0=var71, i15=var1996, i16=var3285, java.util.HashSet=var2, $r75=var2332, r68=var69, $r76=var2188, r69=var1800, java.io.PrintStream=var1761, java.lang.System=var2218, $r4=var1027, "Matched EOF"=var3015}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: org.javacc.parser.TokenizerData;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i15 = 0;	i16 = r1.<org.javacc.parser.TokenizerData: int defaultLexState>;	$r75 = new java.util.HashSet;	specialinvoke $r75.<java.util.HashSet: void <init>()>();	r68 = $r75;	$r76 = new java.util.HashSet;	specialinvoke $r76.<java.util.HashSet: void <init>()>();	r69 = $r76;	if i15 >= i0 goto $r4 = <java.lang.System: java.io.PrintStream err>;	$r4 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r4.<java.io.PrintStream: void println(java.lang.String)>("Matched EOF");	return
;block_num 3