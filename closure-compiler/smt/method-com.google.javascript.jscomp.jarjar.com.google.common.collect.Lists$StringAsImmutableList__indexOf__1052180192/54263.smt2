(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var653 0)
(declare-sort var612 0)
(declare-sort var1327 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun string/579100894 (var653) String)
(declare-fun cast-from-var612-to-var1327 (var612) var1327)
(declare-fun charValue/305305773 (var1327) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-var653 var653)
(declare-const null-var612 var612)
(declare-const var1014 var653) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList 
(assert (not (= var1014 null-var653)))
(declare-const var2413 var612) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2413 null-var612)))
(define-const var2647 Bool false) ; Statement: $z0 = r0 instanceof java.lang.Character 
 ; Statement: if $z0 == 0 goto $i4 = (int) -1 
(assert (not (= (ite var2647 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var153 String (string/579100894 var1014)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList: java.lang.String string> 
(define-const var2221 var1327 (cast-from-var612-to-var1327 var2413)) ; Statement: $r2 = (java.lang.Character) r0 
(assert true)
(define-const var1361 Int (charValue/305305773 var2221)) ; Statement: $c0 = virtualinvoke $r2.<java.lang.Character: char charValue()>() 
(define-const var3320 Int (cast-from-Int-to-Int var1361)) ; Statement: $i2 = (int) $c0 
(assert true)
(define-const var1777 Int (indexOf/-1037706067 var153 var3320)) ; Statement: $i1 = virtualinvoke $r3.<java.lang.String: int indexOf(int)>($i2) 
 ; Statement: goto [?= return $i1] 
(assert true) ; Non Conditional
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {string/579100894=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList], java.lang.String), cast-from-var612-to-var1327=([java.lang.Object], java.lang.Character), charValue/305305773=([java.lang.Character], char), cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int)}
; {var653=com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList, var1014=r1, var612=java.lang.Object, var2413=r0, var2647=$z0, var153=$r3, var1327=java.lang.Character, var2221=$r2, var1361=$c0, var3320=$i2, var1777=$i1}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList=var653, r1=var1014, java.lang.Object=var612, r0=var2413, $z0=var2647, $r3=var153, java.lang.Character=var1327, $r2=var2221, $c0=var1361, $i2=var3320, $i1=var1777}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList;	r0 := @parameter0: java.lang.Object;	$z0 = r0 instanceof java.lang.Character;	if $z0 == 0 goto $i4 = (int) -1;	$r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList: java.lang.String string>;	$r2 = (java.lang.Character) r0;	$c0 = virtualinvoke $r2.<java.lang.Character: char charValue()>();	$i2 = (int) $c0;	$i1 = virtualinvoke $r3.<java.lang.String: int indexOf(int)>($i2);	goto [?= return $i1];	return $i1
;block_num 3