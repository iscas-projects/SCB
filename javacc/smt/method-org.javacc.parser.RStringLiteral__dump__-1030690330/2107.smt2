(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1272 0)
(declare-sort var1727 0)
(declare-sort var1247 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dump/1357828560 (var1247 Int var1727) String)
(declare-fun cast-from-var1272-to-var1247 (var1272) var1247)
(declare-fun append/1183289509 (String Int) String)
(declare-fun image/-300401223 (var1272) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1272 var1272)
(declare-const null-Int Int)
(declare-const null-var1727 var1727)
(declare-const var2968 var1272) ; Statement: r0 := @this: org.javacc.parser.RStringLiteral 
(assert (not (= var2968 null-var1272)))
(declare-const var499 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var499 null-Int)))
(declare-const var3338 var1727) ; Statement: r1 := @parameter1: java.util.Set 
(assert (not (= var3338 null-var1727)))
(assert true)
(define-const var431 String (dump/1357828560 (cast-from-var1272-to-var1247 var2968) var499 var3338)) ; Statement: $r2 = specialinvoke r0.<org.javacc.parser.RegularExpression: java.lang.StringBuffer dump(int,java.util.Set)>(i0, r1) 
(assert true)
(define-const var3855 String (append/1183289509 var431 32)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 
(define-const var2999 String (image/-300401223 var2968)) ; Statement: $r3 = r0.<org.javacc.parser.RStringLiteral: java.lang.String image> 
(assert true)
(define-const var1931 String (append/1560614132 var3855 var2999)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var3855!1 String)
(assert (str.prefixof var3855 var3855!1))
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {dump/1357828560=([org.javacc.parser.RegularExpression, int, java.util.Set], java.lang.StringBuffer), cast-from-var1272-to-var1247=([org.javacc.parser.RStringLiteral], org.javacc.parser.RegularExpression), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), image/-300401223=([org.javacc.parser.RStringLiteral], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var1272=org.javacc.parser.RStringLiteral, var2968=r0, var499=i0, var1727=java.util.Set, var3338=r1, var1247=org.javacc.parser.RegularExpression, var431=$r2, var3855=$r4, var2999=$r3, var1931=r5}
; {org.javacc.parser.RStringLiteral=var1272, r0=var2968, i0=var499, java.util.Set=var1727, r1=var3338, org.javacc.parser.RegularExpression=var1247, $r2=var431, $r4=var3855, $r3=var2999, r5=var1931}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: org.javacc.parser.RStringLiteral;	i0 := @parameter0: int;	r1 := @parameter1: java.util.Set;	$r2 = specialinvoke r0.<org.javacc.parser.RegularExpression: java.lang.StringBuffer dump(int,java.util.Set)>(i0, r1);	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	$r3 = r0.<org.javacc.parser.RStringLiteral: java.lang.String image>;	r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	return r5
;block_num 1