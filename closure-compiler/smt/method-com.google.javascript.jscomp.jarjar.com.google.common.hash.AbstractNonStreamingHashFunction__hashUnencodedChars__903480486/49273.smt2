(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var272 0)
(declare-sort var293 0)
(declare-sort var1649 0)
(declare-sort var1352 0)
(declare-sort var1545 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var293_allocate/-517473021 (Int) var293)
(declare-fun order/1698056697 (var293 var1649) var293)
(declare-fun array/-1311260030 (var293) (Array Int Int))
(declare-fun hashBytes/-770625855 (var1545 (Array Int Int)) var1352)
(declare-fun cast-from-var272-to-var1545 (var272) var1545)
(declare-const null-var272 var272)
(declare-const null-String String)
(declare-const var1649-LITTLE_ENDIAN var1649)
(declare-const var510 var272) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractNonStreamingHashFunction 
(assert (not (= var510 null-var272)))
(declare-const var992 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var992 null-String)))
(define-const var145 Int (String_length/-667254855 var992)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var426 Int (* var145 2)) ; Statement: $i1 = i0 * 2 
(define-const var2082 var293 (var293_allocate/-517473021 var426)) ; Statement: $r2 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer allocate(int)>($i1) 
(define-const var3167 var1649 var1649-LITTLE_ENDIAN) ; Statement: $r1 = <java.nio.ByteOrder: java.nio.ByteOrder LITTLE_ENDIAN> 
(assert true)
(define-const var3617 var293 (order/1698056697 var2082 var3167)) ; Statement: r3 = virtualinvoke $r2.<java.nio.ByteBuffer: java.nio.ByteBuffer order(java.nio.ByteOrder)>($r1) 
(define-const var1486 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $r5 = virtualinvoke r3.<java.nio.ByteBuffer: byte[] array()>() 
(assert (>= var1486 var145)) ; Cond: i3 >= i0 
(assert true)
(define-const var2094 (Array Int Int) (array/-1311260030 var3617)) ; Statement: $r5 = virtualinvoke r3.<java.nio.ByteBuffer: byte[] array()>() 
(assert true)
(define-const var495 var1352 (hashBytes/-770625855 (cast-from-var272-to-var1545 var510) var2094)) ; Statement: $r6 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractNonStreamingHashFunction: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode hashBytes(byte[])>($r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var293_allocate/-517473021=([int], java.nio.ByteBuffer), order/1698056697=([java.nio.ByteBuffer, java.nio.ByteOrder], java.nio.ByteBuffer), array/-1311260030=([java.nio.ByteBuffer], byte[]), hashBytes/-770625855=([com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHashFunction, byte[]], com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode), cast-from-var272-to-var1545=([com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractNonStreamingHashFunction], com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHashFunction)}
; {var272=com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractNonStreamingHashFunction, var510=r4, var992=r0, var145=i0, var426=$i1, var293=java.nio.ByteBuffer, var2082=$r2, var1649=java.nio.ByteOrder, var3167=$r1, var3617=r3, var1486=i3, var2094=$r5, var1352=com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode, var1545=com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHashFunction, var495=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractNonStreamingHashFunction=var272, r4=var510, r0=var992, i0=var145, $i1=var426, java.nio.ByteBuffer=var293, $r2=var2082, java.nio.ByteOrder=var1649, $r1=var3167, r3=var3617, i3=var1486, $r5=var2094, com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode=var1352, com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHashFunction=var1545, $r6=var495}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractNonStreamingHashFunction;	r0 := @parameter0: java.lang.CharSequence;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i1 = i0 * 2;	$r2 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer allocate(int)>($i1);	$r1 = <java.nio.ByteOrder: java.nio.ByteOrder LITTLE_ENDIAN>;	r3 = virtualinvoke $r2.<java.nio.ByteBuffer: java.nio.ByteBuffer order(java.nio.ByteOrder)>($r1);	i3 = 0;	if i3 >= i0 goto $r5 = virtualinvoke r3.<java.nio.ByteBuffer: byte[] array()>();	$r5 = virtualinvoke r3.<java.nio.ByteBuffer: byte[] array()>();	$r6 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractNonStreamingHashFunction: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode hashBytes(byte[])>($r5);	return $r6
;block_num 3