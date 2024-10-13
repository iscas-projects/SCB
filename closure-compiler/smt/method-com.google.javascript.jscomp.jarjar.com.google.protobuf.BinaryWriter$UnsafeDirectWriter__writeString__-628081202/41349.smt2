(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3087 0)
(declare-sort var3210 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun requireSpace/1109847609 (var3087 Int) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3087 var3087)
(declare-const null-String String)
(declare-const var2103 var3087) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$UnsafeDirectWriter 
(assert (not (= var2103 null-var3087)))
(declare-const var1176 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1176 null-String)))
(assert true)
(define-const var748 Int (length/-134980193 var1176)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
;(assert (requireSpace/1109847609 var2103 var748)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$UnsafeDirectWriter: void requireSpace(int)>($i0) 

(declare-const var2103!1 var3087)
(declare-const var748!1 Int)
(assert true)
(define-const var129 Int (length/-134980193 var1176)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3995 Int (- var129 1)) ; Statement: i75 = $i1 - 1 
(assert true) ; Non Conditional
 ; Statement: if i75 < 0 goto $i81 = (int) -1 
(assert (< var3995 0)) ; Cond: i75 < 0 
(define-const var1148 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i81 = (int) -1 
 ; Statement: if i75 != $i81 goto (branch) 
(assert (not (not (= var3995 var1148)))) ; Negate: Cond: i75 != $i81  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), requireSpace/1109847609=([com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$UnsafeDirectWriter, int], void), cast-from-Int-to-Int=([int], int)}
; {var3087=com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$UnsafeDirectWriter, var2103=r0, var1176=r1, var3210=null_type, var748=$i0, var129=$i1, var3995=i75, var1148=$i81}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$UnsafeDirectWriter=var3087, r0=var2103, r1=var1176, null_type=var3210, $i0=var748, $i1=var129, i75=var3995, $i81=var1148}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$UnsafeDirectWriter;	r1 := @parameter0: java.lang.String;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$UnsafeDirectWriter: void requireSpace(int)>($i0);	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	i75 = $i1 - 1;	if i75 < 0 goto $i81 = (int) -1;	$i81 = (int) -1;	if i75 != $i81 goto (branch);	return
;block_num 4