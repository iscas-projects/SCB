(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3500 0)
(declare-sort var2474 0)
(declare-sort var2864 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var2864_wrap/1654484403 ((Array Int Int)) var2864)
(declare-const null-var3500 var3500)
(declare-const null-String String)
(declare-const var3444 var3500) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarUtils$1 
(assert (not (= var3444 null-var3500)))
(declare-const var3649 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3649 null-String)))
(assert true)
(define-const var1880 Int (length/-134980193 var3649)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1500 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (byte)[i0] 
(define-const var3755 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $r2 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer wrap(byte[])>(r1) 
(assert (>= var3755 var1880)) ; Cond: i3 >= i0 
(define-const var3109 var2864 (var2864_wrap/1654484403 var1500)) ; Statement: $r2 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer wrap(byte[])>(r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), arr-Int-init=([], byte[]), var2864_wrap/1654484403=([byte[]], java.nio.ByteBuffer)}
; {var3500=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarUtils$1, var3444=r3, var3649=r0, var2474=null_type, var1880=i0, var1500=r1, var3755=i3, var2864=java.nio.ByteBuffer, var3109=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarUtils$1=var3500, r3=var3444, r0=var3649, null_type=var2474, i0=var1880, r1=var1500, i3=var3755, java.nio.ByteBuffer=var2864, $r2=var3109}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarUtils$1;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	r1 = newarray (byte)[i0];	i3 = 0;	if i3 >= i0 goto $r2 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer wrap(byte[])>(r1);	$r2 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer wrap(byte[])>(r1);	return $r2
;block_num 3