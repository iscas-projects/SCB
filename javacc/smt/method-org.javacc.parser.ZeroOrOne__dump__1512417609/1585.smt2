(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1651 0)
(declare-sort var1306 0)
(declare-sort var959 0)
(declare-sort var2881 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dump/1891027141 (var959 Int var1306) String)
(declare-fun cast-from-var1651-to-var959 (var1651) var959)
(declare-fun var1306_contains/1636690605 (var1306 var2881) Bool)
(declare-fun cast-from-var1651-to-var2881 (var1651) var2881)
(declare-fun var1306_add/-1142548109 (var1306 var2881) Bool)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun expansion/-1835456018 (var1651) var959)
(declare-fun append/1671819796 (String String) String)
(declare-const null-var1651 var1651)
(declare-const null-Int Int)
(declare-const null-var1306 var1306)
(declare-const var1651-eol String)
(declare-const var2895 var1651) ; Statement: r0 := @this: org.javacc.parser.ZeroOrOne 
(assert (not (= var2895 null-var1651)))
(declare-const var3460 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3460 null-Int)))
(declare-const var3016 var1306) ; Statement: r1 := @parameter1: java.util.Set 
(assert (not (= var3016 null-var1306)))
(assert true)
(define-const var1395 String (dump/1891027141 (cast-from-var1651-to-var959 var2895) var3460 var3016)) ; Statement: r2 = specialinvoke r0.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>(i0, r1) 
(define-const var3678 Bool (var1306_contains/1636690605 var3016 (cast-from-var1651-to-var2881 var2895))) ; Statement: $z0 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0) 
(assert (= (ite var3678 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var1306_add/-1142548109 var3016 (cast-from-var1651-to-var2881 var2895))) ; Statement: interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0) 

(declare-const var3016!1 var1306)
(declare-const var2895!1 var1651)
(define-const var2753 String var1651-eol) ; Statement: $r3 = <org.javacc.parser.ZeroOrOne: java.lang.String eol> 
(assert true)
(define-const var3141 String (append/1560614132 var1395 var2753)) ; Statement: $r6 = virtualinvoke r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var1395!1 String)
(assert (str.prefixof var1395 var1395!1))
(define-const var3712 var959 (expansion/-1835456018 var2895!1)) ; Statement: $r4 = r0.<org.javacc.parser.ZeroOrOne: org.javacc.parser.Expansion expansion> 
(define-const var66 Int (+ var3460 1)) ; Statement: $i1 = i0 + 1 
(assert true)
(define-const var2404 String (dump/1891027141 var3712 var66 var3016!1)) ; Statement: $r5 = virtualinvoke $r4.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>($i1, r1) 
(assert true)
;(assert (append/1671819796 var3141 var2404)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>($r5) 

(declare-const var3141!1 String)
(declare-const var2404!1 String)
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {dump/1891027141=([org.javacc.parser.Expansion, int, java.util.Set], java.lang.StringBuffer), cast-from-var1651-to-var959=([org.javacc.parser.ZeroOrOne], org.javacc.parser.Expansion), var1306_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-var1651-to-var2881=([org.javacc.parser.ZeroOrOne], java.lang.Object), var1306_add/-1142548109=([java.util.Set, java.lang.Object], boolean), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), expansion/-1835456018=([org.javacc.parser.ZeroOrOne], org.javacc.parser.Expansion), append/1671819796=([java.lang.StringBuffer, java.lang.StringBuffer], java.lang.StringBuffer)}
; {var1651=org.javacc.parser.ZeroOrOne, var2895=r0, var3460=i0, var1306=java.util.Set, var3016=r1, var959=org.javacc.parser.Expansion, var1395=r2, var2881=java.lang.Object, var3678=$z0, var2753=$r3, var3141=$r6, var3712=$r4, var66=$i1, var2404=$r5}
; {org.javacc.parser.ZeroOrOne=var1651, r0=var2895, i0=var3460, java.util.Set=var1306, r1=var3016, org.javacc.parser.Expansion=var959, r2=var1395, java.lang.Object=var2881, $z0=var3678, $r3=var2753, $r6=var3141, $r4=var3712, $i1=var66, $r5=var2404}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>": 1}
;stmts r0 := @this: org.javacc.parser.ZeroOrOne;	i0 := @parameter0: int;	r1 := @parameter1: java.util.Set;	r2 = specialinvoke r0.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>(i0, r1);	$z0 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>(r0);	if $z0 == 0 goto interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0);	interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0);	$r3 = <org.javacc.parser.ZeroOrOne: java.lang.String eol>;	$r6 = virtualinvoke r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$r4 = r0.<org.javacc.parser.ZeroOrOne: org.javacc.parser.Expansion expansion>;	$i1 = i0 + 1;	$r5 = virtualinvoke $r4.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>($i1, r1);	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>($r5);	return r2
;block_num 2