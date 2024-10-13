(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1281 0)
(declare-sort var735 0)
(declare-sort var604 0)
(declare-sort var3608 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dump/1891027141 (var604 Int var735) String)
(declare-fun cast-from-var1281-to-var604 (var1281) var604)
(declare-fun isExplicit/-518377291 (var1281) Bool)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var735_contains/1636690605 (var735 var3608) Bool)
(declare-fun cast-from-var1281-to-var3608 (var1281) var3608)
(declare-fun var735_add/-1142548109 (var735 var3608) Bool)
(declare-fun la_expansion/-518377291 (var1281) var604)
(declare-fun append/1671819796 (String String) String)
(declare-const null-var1281 var1281)
(declare-const null-Int Int)
(declare-const null-var735 var735)
(declare-const var1281-eol String)
(declare-const var3833 var1281) ; Statement: r0 := @this: org.javacc.parser.Lookahead 
(assert (not (= var3833 null-var1281)))
(declare-const var3790 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3790 null-Int)))
(declare-const var1800 var735) ; Statement: r1 := @parameter1: java.util.Set 
(assert (not (= var1800 null-var735)))
(assert true)
(define-const var3282 String (dump/1891027141 (cast-from-var1281-to-var604 var3833) var3790 var1800)) ; Statement: $r2 = specialinvoke r0.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>(i0, r1) 
(define-const var3211 Bool (isExplicit/-518377291 var3833)) ; Statement: $z0 = r0.<org.javacc.parser.Lookahead: boolean isExplicit> 
 ; Statement: if $z0 == 0 goto $r8 = " implicit" 
(assert (not (= (ite var3211 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2353 String " explicit") ; Statement: $r8 = " explicit" 
 ; Statement: goto [?= $r7 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3862 String (append/1560614132 var3282 var2353)) ; Statement: $r7 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8) 
(declare-const var3282!1 String)
(assert (str.prefixof var3282 var3282!1))
(define-const var583 Bool (var735_contains/1636690605 var1800 (cast-from-var1281-to-var3608 var3833))) ; Statement: $z1 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>(r0) 
 ; Statement: if $z1 == 0 goto interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0) 
(assert (= (ite var583 1 0) 0)) ; Cond: $z1 == 0 
;(assert (var735_add/-1142548109 var1800 (cast-from-var1281-to-var3608 var3833))) ; Statement: interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0) 

(declare-const var1800!1 var735)
(declare-const var3833!1 var1281)
(define-const var2618 String var1281-eol) ; Statement: $r3 = <org.javacc.parser.Lookahead: java.lang.String eol> 
(assert true)
(define-const var3145 String (append/1560614132 var3862 var2618)) ; Statement: $r6 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var3862!1 String)
(assert (str.prefixof var3862 var3862!1))
(define-const var3625 var604 (la_expansion/-518377291 var3833!1)) ; Statement: $r4 = r0.<org.javacc.parser.Lookahead: org.javacc.parser.Expansion la_expansion> 
(define-const var3350 Int (+ var3790 1)) ; Statement: $i1 = i0 + 1 
(assert true)
(define-const var609 String (dump/1891027141 var3625 var3350 var1800!1)) ; Statement: $r5 = virtualinvoke $r4.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>($i1, r1) 
(assert true)
;(assert (append/1671819796 var3145 var609)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>($r5) 

(declare-const var3145!1 String)
(declare-const var609!1 String)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {dump/1891027141=([org.javacc.parser.Expansion, int, java.util.Set], java.lang.StringBuffer), cast-from-var1281-to-var604=([org.javacc.parser.Lookahead], org.javacc.parser.Expansion), isExplicit/-518377291=([org.javacc.parser.Lookahead], boolean), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), var735_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-var1281-to-var3608=([org.javacc.parser.Lookahead], java.lang.Object), var735_add/-1142548109=([java.util.Set, java.lang.Object], boolean), la_expansion/-518377291=([org.javacc.parser.Lookahead], org.javacc.parser.Expansion), append/1671819796=([java.lang.StringBuffer, java.lang.StringBuffer], java.lang.StringBuffer)}
; {var1281=org.javacc.parser.Lookahead, var3833=r0, var3790=i0, var735=java.util.Set, var1800=r1, var604=org.javacc.parser.Expansion, var3282=$r2, var3211=$z0, var2353=$r8, var3862=$r7, var3608=java.lang.Object, var583=$z1, var2618=$r3, var3145=$r6, var3625=$r4, var3350=$i1, var609=$r5}
; {org.javacc.parser.Lookahead=var1281, r0=var3833, i0=var3790, java.util.Set=var735, r1=var1800, org.javacc.parser.Expansion=var604, $r2=var3282, $z0=var3211, $r8=var2353, $r7=var3862, java.lang.Object=var3608, $z1=var583, $r3=var2618, $r6=var3145, $r4=var3625, $i1=var3350, $r5=var609}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>": 1}
;stmts r0 := @this: org.javacc.parser.Lookahead;	i0 := @parameter0: int;	r1 := @parameter1: java.util.Set;	$r2 = specialinvoke r0.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>(i0, r1);	$z0 = r0.<org.javacc.parser.Lookahead: boolean isExplicit>;	if $z0 == 0 goto $r8 = " implicit";	$r8 = " explicit";	goto [?= $r7 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8)];	$r7 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8);	$z1 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>(r0);	if $z1 == 0 goto interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0);	interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0);	$r3 = <org.javacc.parser.Lookahead: java.lang.String eol>;	$r6 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$r4 = r0.<org.javacc.parser.Lookahead: org.javacc.parser.Expansion la_expansion>;	$i1 = i0 + 1;	$r5 = virtualinvoke $r4.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>($i1, r1);	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>($r5);	return $r7
;block_num 4