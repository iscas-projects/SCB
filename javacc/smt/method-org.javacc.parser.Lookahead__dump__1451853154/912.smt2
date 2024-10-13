(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var915 0)
(declare-sort var3952 0)
(declare-sort var1746 0)
(declare-sort var6 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dump/1891027141 (var1746 Int var3952) String)
(declare-fun cast-from-var915-to-var1746 (var915) var1746)
(declare-fun isExplicit/-518377291 (var915) Bool)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3952_contains/1636690605 (var3952 var6) Bool)
(declare-fun cast-from-var915-to-var6 (var915) var6)
(declare-const null-var915 var915)
(declare-const null-Int Int)
(declare-const null-var3952 var3952)
(declare-const var3225 var915) ; Statement: r0 := @this: org.javacc.parser.Lookahead 
(assert (not (= var3225 null-var915)))
(declare-const var237 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var237 null-Int)))
(declare-const var2213 var3952) ; Statement: r1 := @parameter1: java.util.Set 
(assert (not (= var2213 null-var3952)))
(assert true)
(define-const var3703 String (dump/1891027141 (cast-from-var915-to-var1746 var3225) var237 var2213)) ; Statement: $r2 = specialinvoke r0.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>(i0, r1) 
(define-const var2524 Bool (isExplicit/-518377291 var3225)) ; Statement: $z0 = r0.<org.javacc.parser.Lookahead: boolean isExplicit> 
 ; Statement: if $z0 == 0 goto $r8 = " implicit" 
(assert (= (ite var2524 1 0) 0)) ; Cond: $z0 == 0 
(define-const var549 String " implicit") ; Statement: $r8 = " implicit" 
(assert true) ; Non Conditional
(assert true)
(define-const var3184 String (append/1560614132 var3703 var549)) ; Statement: $r7 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8) 
(declare-const var3703!1 String)
(assert (str.prefixof var3703 var3703!1))
(define-const var1032 Bool (var3952_contains/1636690605 var2213 (cast-from-var915-to-var6 var3225))) ; Statement: $z1 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>(r0) 
 ; Statement: if $z1 == 0 goto interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0) 
(assert (not (= (ite var1032 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {dump/1891027141=([org.javacc.parser.Expansion, int, java.util.Set], java.lang.StringBuffer), cast-from-var915-to-var1746=([org.javacc.parser.Lookahead], org.javacc.parser.Expansion), isExplicit/-518377291=([org.javacc.parser.Lookahead], boolean), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), var3952_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-var915-to-var6=([org.javacc.parser.Lookahead], java.lang.Object)}
; {var915=org.javacc.parser.Lookahead, var3225=r0, var237=i0, var3952=java.util.Set, var2213=r1, var1746=org.javacc.parser.Expansion, var3703=$r2, var2524=$z0, var549=$r8, var3184=$r7, var6=java.lang.Object, var1032=$z1}
; {org.javacc.parser.Lookahead=var915, r0=var3225, i0=var237, java.util.Set=var3952, r1=var2213, org.javacc.parser.Expansion=var1746, $r2=var3703, $z0=var2524, $r8=var549, $r7=var3184, java.lang.Object=var6, $z1=var1032}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: org.javacc.parser.Lookahead;	i0 := @parameter0: int;	r1 := @parameter1: java.util.Set;	$r2 = specialinvoke r0.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>(i0, r1);	$z0 = r0.<org.javacc.parser.Lookahead: boolean isExplicit>;	if $z0 == 0 goto $r8 = " implicit";	$r8 = " implicit";	$r7 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8);	$z1 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>(r0);	if $z1 == 0 goto interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0);	return $r7
;block_num 4