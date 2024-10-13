(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2924 0)
(declare-sort var1416 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun requireSpace/815114930 (var2924 Int) void)
(declare-fun pos/497091949 (var2924) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2924 var2924)
(declare-const null-String String)
(declare-const var739 var2924) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeDirectWriter 
(assert (not (= var739 null-var2924)))
(declare-const var814 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var814 null-String)))
(assert true)
(define-const var1020 Int (length/-134980193 var814)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
;(assert (requireSpace/815114930 var739 var1020)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeDirectWriter: void requireSpace(int)>($i0) 

(declare-const var739!1 var2924)
(declare-const var1020!1 Int)
(assert true)
(define-const var3614 Int (length/-134980193 var814)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2642 Int (- var3614 1)) ; Statement: i71 = $i1 - 1 
(define-const var958 Int (pos/497091949 var739!1)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeDirectWriter: int pos> 
(define-const var3041 Int (- var958 var2642)) ; Statement: $i3 = $i2 - i71 
(declare-const var739!2 var2924)
(assert (not (= var739!2 null-var2924)))
(assert (= (pos/497091949 var739!2) var3041)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeDirectWriter: int pos> = $i3 
(assert true) ; Non Conditional
 ; Statement: if i71 < 0 goto $i77 = (int) -1 
(assert (< var2642 0)) ; Cond: i71 < 0 
(define-const var3387 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i77 = (int) -1 
 ; Statement: if i71 != $i77 goto $i4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeDirectWriter: int pos> 
(assert (not (not (= var2642 var3387)))) ; Negate: Cond: i71 != $i77  
(define-const var2910 Int (pos/497091949 var739!2)) ; Statement: $i65 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeDirectWriter: int pos> 
(define-const var2574 Int (- var2910 1)) ; Statement: $i66 = $i65 - 1 
(declare-const var739!3 var2924)
(assert (not (= var739!3 null-var2924)))
(assert (= (pos/497091949 var739!3) var2574)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeDirectWriter: int pos> = $i66 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), requireSpace/815114930=([com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeDirectWriter, int], void), pos/497091949=([com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeDirectWriter], int), cast-from-Int-to-Int=([int], int)}
; {var2924=com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeDirectWriter, var739=r0, var814=r1, var1416=null_type, var1020=$i0, var3614=$i1, var2642=i71, var958=$i2, var3041=$i3, var3387=$i77, var2910=$i65, var2574=$i66}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeDirectWriter=var2924, r0=var739, r1=var814, null_type=var1416, $i0=var1020, $i1=var3614, i71=var2642, $i2=var958, $i3=var3041, $i77=var3387, $i65=var2910, $i66=var2574}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeDirectWriter;	r1 := @parameter0: java.lang.String;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeDirectWriter: void requireSpace(int)>($i0);	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	i71 = $i1 - 1;	$i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeDirectWriter: int pos>;	$i3 = $i2 - i71;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeDirectWriter: int pos> = $i3;	if i71 < 0 goto $i77 = (int) -1;	$i77 = (int) -1;	if i71 != $i77 goto $i4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeDirectWriter: int pos>;	$i65 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeDirectWriter: int pos>;	$i66 = $i65 - 1;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeDirectWriter: int pos> = $i66;	return
;block_num 4