(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var957 0)
(declare-sort var215 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun requireSpace/-1155520753 (var957 Int) void)
(declare-fun pos/-1971412624 (var957) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var957 var957)
(declare-const null-String String)
(declare-const var3277 var957) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeHeapWriter 
(assert (not (= var3277 null-var957)))
(declare-const var2798 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2798 null-String)))
(assert true)
(define-const var3638 Int (length/-134980193 var2798)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
;(assert (requireSpace/-1155520753 var3277 var3638)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeHeapWriter: void requireSpace(int)>($i0) 

(declare-const var3277!1 var957)
(declare-const var3638!1 Int)
(assert true)
(define-const var3338 Int (length/-134980193 var2798)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3070 Int (- var3338 1)) ; Statement: i77 = $i1 - 1 
(define-const var125 Int (pos/-1971412624 var3277!1)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeHeapWriter: int pos> 
(define-const var1858 Int (- var125 var3070)) ; Statement: $i3 = $i2 - i77 
(declare-const var3277!2 var957)
(assert (not (= var3277!2 null-var957)))
(assert (= (pos/-1971412624 var3277!2) var1858)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeHeapWriter: int pos> = $i3 
(assert true) ; Non Conditional
 ; Statement: if i77 < 0 goto $i83 = (int) -1 
(assert (< var3070 0)) ; Cond: i77 < 0 
(define-const var1627 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i83 = (int) -1 
 ; Statement: if i77 != $i83 goto $i4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeHeapWriter: int pos> 
(assert (not (not (= var3070 var1627)))) ; Negate: Cond: i77 != $i83  
(define-const var2506 Int (pos/-1971412624 var3277!2)) ; Statement: $i71 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeHeapWriter: int pos> 
(define-const var1 Int (- var2506 1)) ; Statement: $i72 = $i71 - 1 
(declare-const var3277!3 var957)
(assert (not (= var3277!3 null-var957)))
(assert (= (pos/-1971412624 var3277!3) var1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeHeapWriter: int pos> = $i72 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), requireSpace/-1155520753=([com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeHeapWriter, int], void), pos/-1971412624=([com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeHeapWriter], int), cast-from-Int-to-Int=([int], int)}
; {var957=com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeHeapWriter, var3277=r0, var2798=r1, var215=null_type, var3638=$i0, var3338=$i1, var3070=i77, var125=$i2, var1858=$i3, var1627=$i83, var2506=$i71, var1=$i72}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeHeapWriter=var957, r0=var3277, r1=var2798, null_type=var215, $i0=var3638, $i1=var3338, i77=var3070, $i2=var125, $i3=var1858, $i83=var1627, $i71=var2506, $i72=var1}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeHeapWriter;	r1 := @parameter0: java.lang.String;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeHeapWriter: void requireSpace(int)>($i0);	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	i77 = $i1 - 1;	$i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeHeapWriter: int pos>;	$i3 = $i2 - i77;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeHeapWriter: int pos> = $i3;	if i77 < 0 goto $i83 = (int) -1;	$i83 = (int) -1;	if i77 != $i83 goto $i4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeHeapWriter: int pos>;	$i71 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeHeapWriter: int pos>;	$i72 = $i71 - 1;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BinaryWriter$SafeHeapWriter: int pos> = $i72;	return
;block_num 4