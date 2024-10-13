(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var207 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var207 var207)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var1659 var207) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$SafeProcessor 
(assert (not (= var1659 null-var207)))
(declare-const var390 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var390 null-String)))
(declare-const var3219 (Array Int Int)) ; Statement: r3 := @parameter1: byte[] 
(assert (not (= var3219 null-__Array__Int__Int__)))
(declare-const var627 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var627 null-Int)))
(declare-const var1950 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var1950 null-Int)))
(define-const var1839 Int (String_length/-667254855 var390)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var2238 Int 0) ; Statement: i53 = 0 
(define-const var1924 Int (+ var627 var1950)) ; Statement: i3 = i1 + i2 
(assert true) ; Non Conditional
 ; Statement: if i53 >= i0 goto (branch) 
(assert (>= var2238 var1839)) ; Cond: i53 >= i0 
 ; Statement: if i53 != i0 goto i54 = i1 + i53 
(assert (not (not (= var2238 var1839)))) ; Negate: Cond: i53 != i0  
(define-const var3415 Int (+ var627 var1839)) ; Statement: $i48 = i1 + i0 
 ; Statement: return $i48 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var207=com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$SafeProcessor, var1659=r4, var390=r0, var3219=r3, var627=i1, var1950=i2, var1839=i0, var2238=i53, var1924=i3, var3415=$i48}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$SafeProcessor=var207, r4=var1659, r0=var390, r3=var3219, i1=var627, i2=var1950, i0=var1839, i53=var2238, i3=var1924, $i48=var3415}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$SafeProcessor;	r0 := @parameter0: java.lang.CharSequence;	r3 := @parameter1: byte[];	i1 := @parameter2: int;	i2 := @parameter3: int;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i53 = 0;	i3 = i1 + i2;	if i53 >= i0 goto (branch);	if i53 != i0 goto i54 = i1 + i53;	$i48 = i1 + i0;	return $i48
;block_num 4