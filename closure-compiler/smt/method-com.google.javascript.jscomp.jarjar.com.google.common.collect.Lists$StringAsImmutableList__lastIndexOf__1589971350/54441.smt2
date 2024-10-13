(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1738 0)
(declare-sort var1413 0)
(declare-sort var2714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun string/579100894 (var1738) String)
(declare-fun cast-from-var1413-to-var2714 (var1413) var2714)
(declare-fun charValue/305305773 (var2714) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-const null-var1738 var1738)
(declare-const null-var1413 var1413)
(declare-const var789 var1738) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList 
(assert (not (= var789 null-var1738)))
(declare-const var135 var1413) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var135 null-var1413)))
(define-const var3955 Bool false) ; Statement: $z0 = r0 instanceof java.lang.Character 
 ; Statement: if $z0 == 0 goto $i4 = (int) -1 
(assert (not (= (ite var3955 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var548 String (string/579100894 var789)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList: java.lang.String string> 
(define-const var2645 var2714 (cast-from-var1413-to-var2714 var135)) ; Statement: $r2 = (java.lang.Character) r0 
(assert true)
(define-const var1753 Int (charValue/305305773 var2645)) ; Statement: $c0 = virtualinvoke $r2.<java.lang.Character: char charValue()>() 
(define-const var3471 Int (cast-from-Int-to-Int var1753)) ; Statement: $i2 = (int) $c0 
(assert true)
(define-const var816 Int (lastIndexOf/-1292097097 var548 var3471)) ; Statement: $i1 = virtualinvoke $r3.<java.lang.String: int lastIndexOf(int)>($i2) 
 ; Statement: goto [?= return $i1] 
(assert true) ; Non Conditional
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {string/579100894=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList], java.lang.String), cast-from-var1413-to-var2714=([java.lang.Object], java.lang.Character), charValue/305305773=([java.lang.Character], char), cast-from-Int-to-Int=([char], int), lastIndexOf/-1292097097=([java.lang.String, int], int)}
; {var1738=com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList, var789=r1, var1413=java.lang.Object, var135=r0, var3955=$z0, var548=$r3, var2714=java.lang.Character, var2645=$r2, var1753=$c0, var3471=$i2, var816=$i1}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList=var1738, r1=var789, java.lang.Object=var1413, r0=var135, $z0=var3955, $r3=var548, java.lang.Character=var2714, $r2=var2645, $c0=var1753, $i2=var3471, $i1=var816}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList;	r0 := @parameter0: java.lang.Object;	$z0 = r0 instanceof java.lang.Character;	if $z0 == 0 goto $i4 = (int) -1;	$r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList: java.lang.String string>;	$r2 = (java.lang.Character) r0;	$c0 = virtualinvoke $r2.<java.lang.Character: char charValue()>();	$i2 = (int) $c0;	$i1 = virtualinvoke $r3.<java.lang.String: int lastIndexOf(int)>($i2);	goto [?= return $i1];	return $i1
;block_num 3