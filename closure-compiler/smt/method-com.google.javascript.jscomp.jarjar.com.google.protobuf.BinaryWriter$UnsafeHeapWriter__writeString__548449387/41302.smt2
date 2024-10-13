(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2360 0)
(declare-sort var2568 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun requireSpace/896180310 (var2360 Int) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2360 var2360)
(declare-const null-String String)
(declare-const var2024 var2360) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$UnsafeHeapWriter 
(assert (not (= var2024 null-var2360)))
(declare-const var2818 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2818 null-String)))
(assert true)
(define-const var3075 Int (length/-134980193 var2818)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
;(assert (requireSpace/896180310 var2024 var3075)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$UnsafeHeapWriter: void requireSpace(int)>($i0) 

(declare-const var2024!1 var2360)
(declare-const var3075!1 Int)
(assert true)
(define-const var2948 Int (length/-134980193 var2818)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2619 Int (- var2948 1)) ; Statement: i75 = $i1 - 1 
(assert true) ; Non Conditional
 ; Statement: if i75 < 0 goto $i81 = (int) -1 
(assert (< var2619 0)) ; Cond: i75 < 0 
(define-const var2189 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i81 = (int) -1 
 ; Statement: if i75 != $i81 goto (branch) 
(assert (not (not (= var2619 var2189)))) ; Negate: Cond: i75 != $i81  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), requireSpace/896180310=([com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$UnsafeHeapWriter, int], void), cast-from-Int-to-Int=([int], int)}
; {var2360=com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$UnsafeHeapWriter, var2024=r0, var2818=r1, var2568=null_type, var3075=$i0, var2948=$i1, var2619=i75, var2189=$i81}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$UnsafeHeapWriter=var2360, r0=var2024, r1=var2818, null_type=var2568, $i0=var3075, $i1=var2948, i75=var2619, $i81=var2189}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$UnsafeHeapWriter;	r1 := @parameter0: java.lang.String;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$UnsafeHeapWriter: void requireSpace(int)>($i0);	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	i75 = $i1 - 1;	if i75 < 0 goto $i81 = (int) -1;	$i81 = (int) -1;	if i75 != $i81 goto (branch);	return
;block_num 4