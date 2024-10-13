(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1787 0)
(declare-sort var1485 0)
(declare-sort var3064 0)
(declare-sort var2054 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dump/1891027141 (var3064 Int var1485) String)
(declare-fun cast-from-var1787-to-var3064 (var1787) var3064)
(declare-fun isExplicit/-518377291 (var1787) Bool)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1485_contains/1636690605 (var1485 var2054) Bool)
(declare-fun cast-from-var1787-to-var2054 (var1787) var2054)
(declare-fun var1485_add/-1142548109 (var1485 var2054) Bool)
(declare-fun la_expansion/-518377291 (var1787) var3064)
(declare-fun append/1671819796 (String String) String)
(declare-const null-var1787 var1787)
(declare-const null-Int Int)
(declare-const null-var1485 var1485)
(declare-const var1787-eol String)
(declare-const var892 var1787) ; Statement: r0 := @this: org.javacc.parser.Lookahead 
(assert (not (= var892 null-var1787)))
(declare-const var2206 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2206 null-Int)))
(declare-const var707 var1485) ; Statement: r1 := @parameter1: java.util.Set 
(assert (not (= var707 null-var1485)))
(assert true)
(define-const var276 String (dump/1891027141 (cast-from-var1787-to-var3064 var892) var2206 var707)) ; Statement: $r2 = specialinvoke r0.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>(i0, r1) 
(define-const var3552 Bool (isExplicit/-518377291 var892)) ; Statement: $z0 = r0.<org.javacc.parser.Lookahead: boolean isExplicit> 
 ; Statement: if $z0 == 0 goto $r8 = " implicit" 
(assert (= (ite var3552 1 0) 0)) ; Cond: $z0 == 0 
(define-const var645 String " implicit") ; Statement: $r8 = " implicit" 
(assert true) ; Non Conditional
(assert true)
(define-const var3107 String (append/1560614132 var276 var645)) ; Statement: $r7 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8) 
(declare-const var276!1 String)
(assert (str.prefixof var276 var276!1))
(define-const var2259 Bool (var1485_contains/1636690605 var707 (cast-from-var1787-to-var2054 var892))) ; Statement: $z1 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>(r0) 
 ; Statement: if $z1 == 0 goto interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0) 
(assert (= (ite var2259 1 0) 0)) ; Cond: $z1 == 0 
;(assert (var1485_add/-1142548109 var707 (cast-from-var1787-to-var2054 var892))) ; Statement: interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0) 

(declare-const var707!1 var1485)
(declare-const var892!1 var1787)
(define-const var2451 String var1787-eol) ; Statement: $r3 = <org.javacc.parser.Lookahead: java.lang.String eol> 
(assert true)
(define-const var1935 String (append/1560614132 var3107 var2451)) ; Statement: $r6 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var3107!1 String)
(assert (str.prefixof var3107 var3107!1))
(define-const var822 var3064 (la_expansion/-518377291 var892!1)) ; Statement: $r4 = r0.<org.javacc.parser.Lookahead: org.javacc.parser.Expansion la_expansion> 
(define-const var3859 Int (+ var2206 1)) ; Statement: $i1 = i0 + 1 
(assert true)
(define-const var3443 String (dump/1891027141 var822 var3859 var707!1)) ; Statement: $r5 = virtualinvoke $r4.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>($i1, r1) 
(assert true)
;(assert (append/1671819796 var1935 var3443)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>($r5) 

(declare-const var1935!1 String)
(declare-const var3443!1 String)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {dump/1891027141=([org.javacc.parser.Expansion, int, java.util.Set], java.lang.StringBuffer), cast-from-var1787-to-var3064=([org.javacc.parser.Lookahead], org.javacc.parser.Expansion), isExplicit/-518377291=([org.javacc.parser.Lookahead], boolean), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), var1485_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-var1787-to-var2054=([org.javacc.parser.Lookahead], java.lang.Object), var1485_add/-1142548109=([java.util.Set, java.lang.Object], boolean), la_expansion/-518377291=([org.javacc.parser.Lookahead], org.javacc.parser.Expansion), append/1671819796=([java.lang.StringBuffer, java.lang.StringBuffer], java.lang.StringBuffer)}
; {var1787=org.javacc.parser.Lookahead, var892=r0, var2206=i0, var1485=java.util.Set, var707=r1, var3064=org.javacc.parser.Expansion, var276=$r2, var3552=$z0, var645=$r8, var3107=$r7, var2054=java.lang.Object, var2259=$z1, var2451=$r3, var1935=$r6, var822=$r4, var3859=$i1, var3443=$r5}
; {org.javacc.parser.Lookahead=var1787, r0=var892, i0=var2206, java.util.Set=var1485, r1=var707, org.javacc.parser.Expansion=var3064, $r2=var276, $z0=var3552, $r8=var645, $r7=var3107, java.lang.Object=var2054, $z1=var2259, $r3=var2451, $r6=var1935, $r4=var822, $i1=var3859, $r5=var3443}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>": 1}
;stmts r0 := @this: org.javacc.parser.Lookahead;	i0 := @parameter0: int;	r1 := @parameter1: java.util.Set;	$r2 = specialinvoke r0.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>(i0, r1);	$z0 = r0.<org.javacc.parser.Lookahead: boolean isExplicit>;	if $z0 == 0 goto $r8 = " implicit";	$r8 = " implicit";	$r7 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8);	$z1 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>(r0);	if $z1 == 0 goto interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0);	interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0);	$r3 = <org.javacc.parser.Lookahead: java.lang.String eol>;	$r6 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$r4 = r0.<org.javacc.parser.Lookahead: org.javacc.parser.Expansion la_expansion>;	$i1 = i0 + 1;	$r5 = virtualinvoke $r4.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>($i1, r1);	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>($r5);	return $r7
;block_num 4