(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1859 0)
(declare-sort var3309 0)
(declare-sort var3980 0)
(declare-sort var2071 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dump/1891027141 (var3980 Int var3309) String)
(declare-fun cast-from-var1859-to-var3980 (var1859) var3980)
(declare-fun var3309_contains/1636690605 (var3309 var2071) Bool)
(declare-fun cast-from-var1859-to-var2071 (var1859) var2071)
(declare-fun var3309_add/-1142548109 (var3309 var2071) Bool)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun exp/-2143951105 (var1859) var3980)
(declare-fun append/1671819796 (String String) String)
(declare-const null-var1859 var1859)
(declare-const null-Int Int)
(declare-const null-var3309 var3309)
(declare-const var1859-eol String)
(declare-const var791 var1859) ; Statement: r0 := @this: org.javacc.parser.TryBlock 
(assert (not (= var791 null-var1859)))
(declare-const var772 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var772 null-Int)))
(declare-const var1019 var3309) ; Statement: r1 := @parameter1: java.util.Set 
(assert (not (= var1019 null-var3309)))
(assert true)
(define-const var3462 String (dump/1891027141 (cast-from-var1859-to-var3980 var791) var772 var1019)) ; Statement: r2 = specialinvoke r0.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>(i0, r1) 
(define-const var2857 Bool (var3309_contains/1636690605 var1019 (cast-from-var1859-to-var2071 var791))) ; Statement: $z0 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0) 
(assert (= (ite var2857 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var3309_add/-1142548109 var1019 (cast-from-var1859-to-var2071 var791))) ; Statement: interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0) 

(declare-const var1019!1 var3309)
(declare-const var791!1 var1859)
(define-const var1029 String var1859-eol) ; Statement: $r3 = <org.javacc.parser.TryBlock: java.lang.String eol> 
(assert true)
(define-const var1496 String (append/1560614132 var3462 var1029)) ; Statement: $r6 = virtualinvoke r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var3462!1 String)
(assert (str.prefixof var3462 var3462!1))
(define-const var1036 var3980 (exp/-2143951105 var791!1)) ; Statement: $r4 = r0.<org.javacc.parser.TryBlock: org.javacc.parser.Expansion exp> 
(define-const var3269 Int (+ var772 1)) ; Statement: $i1 = i0 + 1 
(assert true)
(define-const var3275 String (dump/1891027141 var1036 var3269 var1019!1)) ; Statement: $r5 = virtualinvoke $r4.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>($i1, r1) 
(assert true)
;(assert (append/1671819796 var1496 var3275)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>($r5) 

(declare-const var1496!1 String)
(declare-const var3275!1 String)
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {dump/1891027141=([org.javacc.parser.Expansion, int, java.util.Set], java.lang.StringBuffer), cast-from-var1859-to-var3980=([org.javacc.parser.TryBlock], org.javacc.parser.Expansion), var3309_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-var1859-to-var2071=([org.javacc.parser.TryBlock], java.lang.Object), var3309_add/-1142548109=([java.util.Set, java.lang.Object], boolean), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), exp/-2143951105=([org.javacc.parser.TryBlock], org.javacc.parser.Expansion), append/1671819796=([java.lang.StringBuffer, java.lang.StringBuffer], java.lang.StringBuffer)}
; {var1859=org.javacc.parser.TryBlock, var791=r0, var772=i0, var3309=java.util.Set, var1019=r1, var3980=org.javacc.parser.Expansion, var3462=r2, var2071=java.lang.Object, var2857=$z0, var1029=$r3, var1496=$r6, var1036=$r4, var3269=$i1, var3275=$r5}
; {org.javacc.parser.TryBlock=var1859, r0=var791, i0=var772, java.util.Set=var3309, r1=var1019, org.javacc.parser.Expansion=var3980, r2=var3462, java.lang.Object=var2071, $z0=var2857, $r3=var1029, $r6=var1496, $r4=var1036, $i1=var3269, $r5=var3275}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>": 1}
;stmts r0 := @this: org.javacc.parser.TryBlock;	i0 := @parameter0: int;	r1 := @parameter1: java.util.Set;	r2 = specialinvoke r0.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>(i0, r1);	$z0 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>(r0);	if $z0 == 0 goto interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0);	interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0);	$r3 = <org.javacc.parser.TryBlock: java.lang.String eol>;	$r6 = virtualinvoke r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$r4 = r0.<org.javacc.parser.TryBlock: org.javacc.parser.Expansion exp>;	$i1 = i0 + 1;	$r5 = virtualinvoke $r4.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>($i1, r1);	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>($r5);	return r2
;block_num 2