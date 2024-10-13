(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var463 0)
(declare-sort var1125 0)
(declare-sort var542 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dump/1891027141 (var542 Int var1125) String)
(declare-fun cast-from-var463-to-var542 (var463) var542)
(declare-fun append/1183289509 (String Int) String)
(declare-fun name/683194844 (var463) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var463 var463)
(declare-const null-Int Int)
(declare-const null-var1125 var1125)
(declare-const var310 var463) ; Statement: r0 := @this: org.javacc.parser.NonTerminal 
(assert (not (= var310 null-var463)))
(declare-const var2057 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2057 null-Int)))
(declare-const var3017 var1125) ; Statement: r1 := @parameter1: java.util.Set 
(assert (not (= var3017 null-var1125)))
(assert true)
(define-const var1877 String (dump/1891027141 (cast-from-var463-to-var542 var310) var2057 var3017)) ; Statement: $r2 = specialinvoke r0.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>(i0, r1) 
(assert true)
(define-const var2681 String (append/1183289509 var1877 32)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 
(define-const var546 String (name/683194844 var310)) ; Statement: $r3 = r0.<org.javacc.parser.NonTerminal: java.lang.String name> 
(assert true)
(define-const var185 String (append/1560614132 var2681 var546)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var2681!1 String)
(assert (str.prefixof var2681 var2681!1))
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {dump/1891027141=([org.javacc.parser.Expansion, int, java.util.Set], java.lang.StringBuffer), cast-from-var463-to-var542=([org.javacc.parser.NonTerminal], org.javacc.parser.Expansion), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), name/683194844=([org.javacc.parser.NonTerminal], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var463=org.javacc.parser.NonTerminal, var310=r0, var2057=i0, var1125=java.util.Set, var3017=r1, var542=org.javacc.parser.Expansion, var1877=$r2, var2681=$r4, var546=$r3, var185=r5}
; {org.javacc.parser.NonTerminal=var463, r0=var310, i0=var2057, java.util.Set=var1125, r1=var3017, org.javacc.parser.Expansion=var542, $r2=var1877, $r4=var2681, $r3=var546, r5=var185}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: org.javacc.parser.NonTerminal;	i0 := @parameter0: int;	r1 := @parameter1: java.util.Set;	$r2 = specialinvoke r0.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>(i0, r1);	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	$r3 = r0.<org.javacc.parser.NonTerminal: java.lang.String name>;	r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	return r5
;block_num 1