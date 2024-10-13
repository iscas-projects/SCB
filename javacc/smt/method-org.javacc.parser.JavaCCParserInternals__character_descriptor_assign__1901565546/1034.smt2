(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1315 0)
(declare-sort var3753 0)
(declare-sort var595 0)
(declare-sort var576 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var595_parse_error/-1175069001 (var576 String) void)
(declare-fun cast-from-var1315-to-var576 (var1315) var576)
(declare-const null-var1315 var1315)
(declare-const null-String String)
(declare-const var3203 var1315) ; Statement: r2 := @parameter0: org.javacc.parser.Token 
(assert (not (= var3203 null-var1315)))
(declare-const var924 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var924 null-String)))
(declare-const var3888 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var3888 null-String)))
(assert true)
(define-const var862 Int (length/-134980193 var924)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 1 goto $c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0) 
(assert (not (= var862 1))) ; Negate: Cond: $i0 == 1  
;(assert (var595_parse_error/-1175069001 (cast-from-var1315-to-var576 var3203) "String in character list may contain only one character.")) ; Statement: staticinvoke <org.javacc.parser.JavaCCErrors: void parse_error(java.lang.Object,java.lang.String)>(r2, "String in character list may contain only one character.") 

(declare-const var3203!1 var1315)
(declare-const var3906 String)
 ; Statement: return 32 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var595_parse_error/-1175069001=([java.lang.Object, java.lang.String], void), cast-from-var1315-to-var576=([org.javacc.parser.Token], java.lang.Object)}
; {var1315=org.javacc.parser.Token, var3203=r2, var924=r0, var3753=null_type, var3888=r1, var862=$i0, var595=org.javacc.parser.JavaCCErrors, var576=java.lang.Object, var3906="String in character list may contain only one character."}
; {org.javacc.parser.Token=var1315, r2=var3203, r0=var924, null_type=var3753, r1=var3888, $i0=var862, org.javacc.parser.JavaCCErrors=var595, java.lang.Object=var576, "String in character list may contain only one character."=var3906}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r2 := @parameter0: org.javacc.parser.Token;	r0 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 1 goto $c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	staticinvoke <org.javacc.parser.JavaCCErrors: void parse_error(java.lang.Object,java.lang.String)>(r2, "String in character list may contain only one character.");	return 32
;block_num 2