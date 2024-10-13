(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var573 0)
(declare-sort var235 0)
(declare-sort var2290 0)
(declare-sort var2354 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dump/1891027141 (var2290 Int var235) String)
(declare-fun cast-from-var573-to-var2290 (var573) var2290)
(declare-fun isExplicit/-518377291 (var573) Bool)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var235_contains/1636690605 (var235 var2354) Bool)
(declare-fun cast-from-var573-to-var2354 (var573) var2354)
(declare-const null-var573 var573)
(declare-const null-Int Int)
(declare-const null-var235 var235)
(declare-const var969 var573) ; Statement: r0 := @this: org.javacc.parser.Lookahead 
(assert (not (= var969 null-var573)))
(declare-const var2160 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2160 null-Int)))
(declare-const var2265 var235) ; Statement: r1 := @parameter1: java.util.Set 
(assert (not (= var2265 null-var235)))
(assert true)
(define-const var1353 String (dump/1891027141 (cast-from-var573-to-var2290 var969) var2160 var2265)) ; Statement: $r2 = specialinvoke r0.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>(i0, r1) 
(define-const var3553 Bool (isExplicit/-518377291 var969)) ; Statement: $z0 = r0.<org.javacc.parser.Lookahead: boolean isExplicit> 
 ; Statement: if $z0 == 0 goto $r8 = " implicit" 
(assert (not (= (ite var3553 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3320 String " explicit") ; Statement: $r8 = " explicit" 
 ; Statement: goto [?= $r7 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1218 String (append/1560614132 var1353 var3320)) ; Statement: $r7 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8) 
(declare-const var1353!1 String)
(assert (str.prefixof var1353 var1353!1))
(define-const var3459 Bool (var235_contains/1636690605 var2265 (cast-from-var573-to-var2354 var969))) ; Statement: $z1 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>(r0) 
 ; Statement: if $z1 == 0 goto interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0) 
(assert (not (= (ite var3459 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {dump/1891027141=([org.javacc.parser.Expansion, int, java.util.Set], java.lang.StringBuffer), cast-from-var573-to-var2290=([org.javacc.parser.Lookahead], org.javacc.parser.Expansion), isExplicit/-518377291=([org.javacc.parser.Lookahead], boolean), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), var235_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-var573-to-var2354=([org.javacc.parser.Lookahead], java.lang.Object)}
; {var573=org.javacc.parser.Lookahead, var969=r0, var2160=i0, var235=java.util.Set, var2265=r1, var2290=org.javacc.parser.Expansion, var1353=$r2, var3553=$z0, var3320=$r8, var1218=$r7, var2354=java.lang.Object, var3459=$z1}
; {org.javacc.parser.Lookahead=var573, r0=var969, i0=var2160, java.util.Set=var235, r1=var2265, org.javacc.parser.Expansion=var2290, $r2=var1353, $z0=var3553, $r8=var3320, $r7=var1218, java.lang.Object=var2354, $z1=var3459}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: org.javacc.parser.Lookahead;	i0 := @parameter0: int;	r1 := @parameter1: java.util.Set;	$r2 = specialinvoke r0.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>(i0, r1);	$z0 = r0.<org.javacc.parser.Lookahead: boolean isExplicit>;	if $z0 == 0 goto $r8 = " implicit";	$r8 = " explicit";	goto [?= $r7 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8)];	$r7 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8);	$z1 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>(r0);	if $z1 == 0 goto interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0);	return $r7
;block_num 4