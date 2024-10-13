(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1076 0)
(declare-sort var2991 0)
(declare-sort var2241 0)
(declare-sort var2449 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dump/1891027141 (var2241 Int var2991) String)
(declare-fun cast-from-var1076-to-var2241 (var1076) var2241)
(declare-fun var2991_contains/1636690605 (var2991 var2449) Bool)
(declare-fun cast-from-var1076-to-var2449 (var1076) var2449)
(declare-fun var2991_add/-1142548109 (var2991 var2449) Bool)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun expansion/-1064619827 (var1076) var2241)
(declare-fun append/1671819796 (String String) String)
(declare-const null-var1076 var1076)
(declare-const null-Int Int)
(declare-const null-var2991 var2991)
(declare-const var1076-eol String)
(declare-const var1046 var1076) ; Statement: r0 := @this: org.javacc.parser.ZeroOrMore 
(assert (not (= var1046 null-var1076)))
(declare-const var3021 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3021 null-Int)))
(declare-const var341 var2991) ; Statement: r1 := @parameter1: java.util.Set 
(assert (not (= var341 null-var2991)))
(assert true)
(define-const var386 String (dump/1891027141 (cast-from-var1076-to-var2241 var1046) var3021 var341)) ; Statement: r2 = specialinvoke r0.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>(i0, r1) 
(define-const var157 Bool (var2991_contains/1636690605 var341 (cast-from-var1076-to-var2449 var1046))) ; Statement: $z0 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0) 
(assert (= (ite var157 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var2991_add/-1142548109 var341 (cast-from-var1076-to-var2449 var1046))) ; Statement: interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0) 

(declare-const var341!1 var2991)
(declare-const var1046!1 var1076)
(define-const var2696 String var1076-eol) ; Statement: $r3 = <org.javacc.parser.ZeroOrMore: java.lang.String eol> 
(assert true)
(define-const var1797 String (append/1560614132 var386 var2696)) ; Statement: $r6 = virtualinvoke r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var386!1 String)
(assert (str.prefixof var386 var386!1))
(define-const var2665 var2241 (expansion/-1064619827 var1046!1)) ; Statement: $r4 = r0.<org.javacc.parser.ZeroOrMore: org.javacc.parser.Expansion expansion> 
(define-const var179 Int (+ var3021 1)) ; Statement: $i1 = i0 + 1 
(assert true)
(define-const var675 String (dump/1891027141 var2665 var179 var341!1)) ; Statement: $r5 = virtualinvoke $r4.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>($i1, r1) 
(assert true)
;(assert (append/1671819796 var1797 var675)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>($r5) 

(declare-const var1797!1 String)
(declare-const var675!1 String)
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {dump/1891027141=([org.javacc.parser.Expansion, int, java.util.Set], java.lang.StringBuffer), cast-from-var1076-to-var2241=([org.javacc.parser.ZeroOrMore], org.javacc.parser.Expansion), var2991_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-var1076-to-var2449=([org.javacc.parser.ZeroOrMore], java.lang.Object), var2991_add/-1142548109=([java.util.Set, java.lang.Object], boolean), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), expansion/-1064619827=([org.javacc.parser.ZeroOrMore], org.javacc.parser.Expansion), append/1671819796=([java.lang.StringBuffer, java.lang.StringBuffer], java.lang.StringBuffer)}
; {var1076=org.javacc.parser.ZeroOrMore, var1046=r0, var3021=i0, var2991=java.util.Set, var341=r1, var2241=org.javacc.parser.Expansion, var386=r2, var2449=java.lang.Object, var157=$z0, var2696=$r3, var1797=$r6, var2665=$r4, var179=$i1, var675=$r5}
; {org.javacc.parser.ZeroOrMore=var1076, r0=var1046, i0=var3021, java.util.Set=var2991, r1=var341, org.javacc.parser.Expansion=var2241, r2=var386, java.lang.Object=var2449, $z0=var157, $r3=var2696, $r6=var1797, $r4=var2665, $i1=var179, $r5=var675}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>": 1}
;stmts r0 := @this: org.javacc.parser.ZeroOrMore;	i0 := @parameter0: int;	r1 := @parameter1: java.util.Set;	r2 = specialinvoke r0.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>(i0, r1);	$z0 = interfaceinvoke r1.<java.util.Set: boolean contains(java.lang.Object)>(r0);	if $z0 == 0 goto interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0);	interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0);	$r3 = <org.javacc.parser.ZeroOrMore: java.lang.String eol>;	$r6 = virtualinvoke r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$r4 = r0.<org.javacc.parser.ZeroOrMore: org.javacc.parser.Expansion expansion>;	$i1 = i0 + 1;	$r5 = virtualinvoke $r4.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>($i1, r1);	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>($r5);	return r2
;block_num 2