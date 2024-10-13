(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2683 0)
(declare-sort var1530 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun load/748760400 (var2683 String) var2683)
(declare-fun swap/-665354146 (var2683) var2683)
(declare-fun dynamicSetIndex/-2120484646 (var2683 Int) void)
(declare-const null-var2683 var2683)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var3434 var2683) ; Statement: r1 := @this: jdk.nashorn.internal.codegen.MethodEmitter 
(assert (not (= var3434 null-var2683)))
(declare-const var1845 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1845 null-String)))
(declare-const var891 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var891 null-Int)))
(declare-const var2894 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var2894 null-Bool)))
(assert true)
(define-const var3178 Int (length/-134980193 var1845)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3486 Int (cast-from-Int-to-Int 32768)) ; Statement: $i3 = (int) 32768 
 ; Statement: if $i0 <= $i3 goto $z0 = <jdk.nashorn.internal.codegen.MethodEmitter: boolean $assertionsDisabled> 
(assert (not (<= var3178 var3486))) ; Negate: Cond: $i0 <= $i3  
(assert true)
(define-const var1937 var2683 (load/748760400 var3434 var1845)) ; Statement: $r6 = virtualinvoke r1.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.MethodEmitter load(java.lang.String)>(r0) 
(assert true)
(define-const var3680 var2683 (swap/-665354146 var1937)) ; Statement: $r7 = virtualinvoke $r6.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.MethodEmitter swap()>() 
(assert true)
;(assert (dynamicSetIndex/-2120484646 var3680 var891)) ; Statement: virtualinvoke $r7.<jdk.nashorn.internal.codegen.MethodEmitter: void dynamicSetIndex(int)>(i1) 

(declare-const var3680!1 var2683)
(declare-const var891!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], int), load/748760400=([jdk.nashorn.internal.codegen.MethodEmitter, java.lang.String], jdk.nashorn.internal.codegen.MethodEmitter), swap/-665354146=([jdk.nashorn.internal.codegen.MethodEmitter], jdk.nashorn.internal.codegen.MethodEmitter), dynamicSetIndex/-2120484646=([jdk.nashorn.internal.codegen.MethodEmitter, int], void)}
; {var2683=jdk.nashorn.internal.codegen.MethodEmitter, var3434=r1, var1845=r0, var1530=null_type, var891=i1, var2894=z2, var3178=$i0, var3486=$i3, var1937=$r6, var3680=$r7}
; {jdk.nashorn.internal.codegen.MethodEmitter=var2683, r1=var3434, r0=var1845, null_type=var1530, i1=var891, z2=var2894, $i0=var3178, $i3=var3486, $r6=var1937, $r7=var3680}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.codegen.MethodEmitter;	r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	z2 := @parameter2: boolean;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i3 = (int) 32768;	if $i0 <= $i3 goto $z0 = <jdk.nashorn.internal.codegen.MethodEmitter: boolean $assertionsDisabled>;	$r6 = virtualinvoke r1.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.MethodEmitter load(java.lang.String)>(r0);	$r7 = virtualinvoke $r6.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.MethodEmitter swap()>();	virtualinvoke $r7.<jdk.nashorn.internal.codegen.MethodEmitter: void dynamicSetIndex(int)>(i1);	return
;block_num 2