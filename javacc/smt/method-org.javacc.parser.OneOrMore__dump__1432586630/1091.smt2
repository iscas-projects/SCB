(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3308 0)
(declare-sort var1238 0)
(declare-sort var1216 0)
(declare-sort var671 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dump/1891027141 (var1216 Int var1238) String)
(declare-fun cast-from-var3308-to-var1216 (var3308) var1216)
(declare-fun var1238_contains/1636690605 (var1238 var671) Bool)
(declare-fun cast-from-var3308-to-var671 (var3308) var671)
(declare-fun var1238_add/-1142548109 (var1238 var671) Bool)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun expansion/-165429231 (var3308) var1216)
(declare-fun append/1671819796 (String String) String)
(declare-const null-var3308 var3308)
(declare-const null-Int Int)
(declare-const null-var1238 var1238)
(declare-const var3308-eol String)
(declare-const var1230 var3308) ; Statement: r0 := @this: org.javacc.parser.OneOrMore 
(assert (not (= var1230 null-var3308)))
(declare-const var2243 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2243 null-Int)))
(declare-const var3527 var1238) ; Statement: r1 := @parameter1: java.util.Set 
(assert (not (= var3527 null-var1238)))
(assert true)
(define-const var159 String (dump/1891027141 (cast-from-var3308-to-var1216 var1230) var2243 var3527)) ; Statement: r2 = specialinvoke r0.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>(i0, r1) 
(define-const var3524 Bool (var1238_contains/1636690605 var3527 (cast-from-var3308-to-var671 var1230))) ; Statement: $z0 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0) 
(assert (= (ite var3524 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var1238_add/-1142548109 var3527 (cast-from-var3308-to-var671 var1230))) ; Statement: interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0) 

(declare-const var3527!1 var1238)
(declare-const var1230!1 var3308)
(define-const var1918 String var3308-eol) ; Statement: $r3 = <org.javacc.parser.OneOrMore: java.lang.String eol> 
(assert true)
(define-const var3967 String (append/1560614132 var159 var1918)) ; Statement: $r6 = virtualinvoke r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var159!1 String)
(assert (str.prefixof var159 var159!1))
(define-const var1652 var1216 (expansion/-165429231 var1230!1)) ; Statement: $r4 = r0.<org.javacc.parser.OneOrMore: org.javacc.parser.Expansion expansion> 
(define-const var549 Int (+ var2243 1)) ; Statement: $i1 = i0 + 1 
(assert true)
(define-const var709 String (dump/1891027141 var1652 var549 var3527!1)) ; Statement: $r5 = virtualinvoke $r4.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>($i1, r1) 
(assert true)
;(assert (append/1671819796 var3967 var709)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>($r5) 

(declare-const var3967!1 String)
(declare-const var709!1 String)
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {dump/1891027141=([org.javacc.parser.Expansion, int, java.util.Set], java.lang.StringBuffer), cast-from-var3308-to-var1216=([org.javacc.parser.OneOrMore], org.javacc.parser.Expansion), var1238_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-var3308-to-var671=([org.javacc.parser.OneOrMore], java.lang.Object), var1238_add/-1142548109=([java.util.Set, java.lang.Object], boolean), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), expansion/-165429231=([org.javacc.parser.OneOrMore], org.javacc.parser.Expansion), append/1671819796=([java.lang.StringBuffer, java.lang.StringBuffer], java.lang.StringBuffer)}
; {var3308=org.javacc.parser.OneOrMore, var1230=r0, var2243=i0, var1238=java.util.Set, var3527=r1, var1216=org.javacc.parser.Expansion, var159=r2, var671=java.lang.Object, var3524=$z0, var1918=$r3, var3967=$r6, var1652=$r4, var549=$i1, var709=$r5}
; {org.javacc.parser.OneOrMore=var3308, r0=var1230, i0=var2243, java.util.Set=var1238, r1=var3527, org.javacc.parser.Expansion=var1216, r2=var159, java.lang.Object=var671, $z0=var3524, $r3=var1918, $r6=var3967, $r4=var1652, $i1=var549, $r5=var709}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>": 1}
;stmts r0 := @this: org.javacc.parser.OneOrMore;	i0 := @parameter0: int;	r1 := @parameter1: java.util.Set;	r2 = specialinvoke r0.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>(i0, r1);	$z0 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>(r0);	if $z0 == 0 goto interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0);	interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0);	$r3 = <org.javacc.parser.OneOrMore: java.lang.String eol>;	$r6 = virtualinvoke r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$r4 = r0.<org.javacc.parser.OneOrMore: org.javacc.parser.Expansion expansion>;	$i1 = i0 + 1;	$r5 = virtualinvoke $r4.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>($i1, r1);	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>($r5);	return r2
;block_num 2