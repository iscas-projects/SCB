(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2964 0)
(declare-sort var2154 0)
(declare-sort var1594 0)
(declare-sort var895 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dump/1891027141 (var1594 Int var2154) String)
(declare-fun cast-from-var2964-to-var1594 (var2964) var1594)
(declare-fun var2154_add/-1142548109 (var2154 var895) Bool)
(declare-fun cast-from-var2964-to-var895 (var2964) var895)
(declare-fun append/1183289509 (String Int) String)
(declare-fun label/319082119 (var2964) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2964 var2964)
(declare-const null-Int Int)
(declare-const null-var2154 var2154)
(declare-const var1972 var2964) ; Statement: r0 := @this: org.javacc.parser.RegularExpression 
(assert (not (= var1972 null-var2964)))
(declare-const var631 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var631 null-Int)))
(declare-const var1402 var2154) ; Statement: r1 := @parameter1: java.util.Set 
(assert (not (= var1402 null-var2154)))
(assert true)
(define-const var2323 String (dump/1891027141 (cast-from-var2964-to-var1594 var1972) var631 var1402)) ; Statement: r2 = specialinvoke r0.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>(i0, r1) 
;(assert (var2154_add/-1142548109 var1402 (cast-from-var2964-to-var895 var1972))) ; Statement: interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0) 

(declare-const var1402!1 var2154)
(declare-const var1972!1 var2964)
(assert true)
(define-const var3364 String (append/1183289509 var2323 32)) ; Statement: $r4 = virtualinvoke r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 
(define-const var1880 String (label/319082119 var1972!1)) ; Statement: $r3 = r0.<org.javacc.parser.RegularExpression: java.lang.String label> 
(assert true)
;(assert (append/1560614132 var3364 var1880)) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var3364!1 String)
(assert (str.prefixof var3364 var3364!1))
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {dump/1891027141=([org.javacc.parser.Expansion, int, java.util.Set], java.lang.StringBuffer), cast-from-var2964-to-var1594=([org.javacc.parser.RegularExpression], org.javacc.parser.Expansion), var2154_add/-1142548109=([java.util.Set, java.lang.Object], boolean), cast-from-var2964-to-var895=([org.javacc.parser.RegularExpression], java.lang.Object), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), label/319082119=([org.javacc.parser.RegularExpression], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var2964=org.javacc.parser.RegularExpression, var1972=r0, var631=i0, var2154=java.util.Set, var1402=r1, var1594=org.javacc.parser.Expansion, var2323=r2, var895=java.lang.Object, var3364=$r4, var1880=$r3}
; {org.javacc.parser.RegularExpression=var2964, r0=var1972, i0=var631, java.util.Set=var2154, r1=var1402, org.javacc.parser.Expansion=var1594, r2=var2323, java.lang.Object=var895, $r4=var3364, $r3=var1880}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: org.javacc.parser.RegularExpression;	i0 := @parameter0: int;	r1 := @parameter1: java.util.Set;	r2 = specialinvoke r0.<org.javacc.parser.Expansion: java.lang.StringBuffer dump(int,java.util.Set)>(i0, r1);	interfaceinvoke r1.<java.util.Set: boolean add(java.lang.Object)>(r0);	$r4 = virtualinvoke r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	$r3 = r0.<org.javacc.parser.RegularExpression: java.lang.String label>;	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	return r2
;block_num 1