(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1620 0)
(declare-sort var551 0)
(declare-sort var2469 0)
(declare-sort var2584 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2469_parse_error/-1175069001 (var2584 String) void)
(declare-fun cast-from-var1620-to-var2584 (var1620) var2584)
(declare-const null-var1620 var1620)
(declare-const null-String String)
(declare-const var1649 var1620) ; Statement: r1 := @parameter0: org.javacc.parser.Token 
(assert (not (= var1649 null-var1620)))
(declare-const var2247 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2247 null-String)))
(assert true)
(define-const var2069 Int (length/-134980193 var2247)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 1 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (not (= var2069 1))) ; Negate: Cond: $i0 == 1  
;(assert (var2469_parse_error/-1175069001 (cast-from-var1620-to-var2584 var1649) "String in character list may contain only one character.")) ; Statement: staticinvoke <org.javacc.parser.JavaCCErrors: void parse_error(java.lang.Object,java.lang.String)>(r1, "String in character list may contain only one character.") 

(declare-const var1649!1 var1620)
(declare-const var3985 String)
 ; Statement: return 32 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2469_parse_error/-1175069001=([java.lang.Object, java.lang.String], void), cast-from-var1620-to-var2584=([org.javacc.parser.Token], java.lang.Object)}
; {var1620=org.javacc.parser.Token, var1649=r1, var2247=r0, var551=null_type, var2069=$i0, var2469=org.javacc.parser.JavaCCErrors, var2584=java.lang.Object, var3985="String in character list may contain only one character."}
; {org.javacc.parser.Token=var1620, r1=var1649, r0=var2247, null_type=var551, $i0=var2069, org.javacc.parser.JavaCCErrors=var2469, java.lang.Object=var2584, "String in character list may contain only one character."=var3985}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: org.javacc.parser.Token;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 1 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	staticinvoke <org.javacc.parser.JavaCCErrors: void parse_error(java.lang.Object,java.lang.String)>(r1, "String in character list may contain only one character.");	return 32
;block_num 2