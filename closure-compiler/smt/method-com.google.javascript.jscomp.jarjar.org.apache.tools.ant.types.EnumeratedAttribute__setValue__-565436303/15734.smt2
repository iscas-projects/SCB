(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1453 0)
(declare-sort var1688 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun indexOfValue/883034975 (var1453 String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun index/-690207832 (var1453) Int)
(declare-fun value/-690207832 (var1453) String)
(declare-const null-var1453 var1453)
(declare-const null-String String)
(declare-const var2256 var1453) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute 
(assert (not (= var2256 null-var1453)))
(declare-const var1902 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1902 null-String)))
(assert true)
(define-const var2880 Int (indexOfValue/883034975 var2256 var1902)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute: int indexOfValue(java.lang.String)>(r1) 
(define-const var2858 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute: int index> = i0 
(assert (not (= var2880 var2858))) ; Cond: i0 != $i2 
(declare-const var2256!1 var1453)
(assert (not (= var2256!1 null-var1453)))
(assert (= (index/-690207832 var2256!1) var2880)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute: int index> = i0 
(declare-const var2256!2 var1453)
(assert (not (= var2256!2 null-var1453)))
(assert (= (value/-690207832 var2256!2) var1902)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute: java.lang.String value> = r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOfValue/883034975=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, java.lang.String], int), cast-from-Int-to-Int=([int], int), index/-690207832=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], int), value/-690207832=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String)}
; {var1453=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var2256=r0, var1902=r1, var1688=null_type, var2880=i0, var2858=$i2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var1453, r0=var2256, r1=var1902, null_type=var1688, i0=var2880, $i2=var2858}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute;	r1 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute: int indexOfValue(java.lang.String)>(r1);	$i2 = (int) -1;	if i0 != $i2 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute: int index> = i0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute: int index> = i0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute: java.lang.String value> = r1;	return
;block_num 2