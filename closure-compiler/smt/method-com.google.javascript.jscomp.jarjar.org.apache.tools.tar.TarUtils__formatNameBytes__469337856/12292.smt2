(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var661 0)
(declare-sort var3155 0)
(declare-sort var1992 0)
(declare-sort var3369 0)
(declare-sort var3077 0)
(declare-sort var766 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3155_encode/-1363466551 (var3155 String) var1992)
(declare-fun limit/2102002819 (var3369) Int)
(declare-fun cast-from-var1992-to-var3369 (var1992) var3369)
(declare-fun position/38072115 (var3369) Int)
(declare-fun array/-1311260030 (var1992) (Array Int Int))
(declare-fun arrayOffset/-856500294 (var1992) Int)
(declare-fun var3077_arraycopy/-325913181 (var766 Int var766 Int Int) void)
(declare-fun cast-from-__Array__Int__Int__-to-var766 ((Array Int Int)) var766)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var3155 var3155)
(declare-const var2060 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2060 null-String)))
(declare-const var1335 (Array Int Int)) ; Statement: r2 := @parameter1: byte[] 
(assert (not (= var1335 null-__Array__Int__Int__)))
(declare-const var2218 Int) ; Statement: i4 := @parameter2: int 
(assert (not (= var2218 null-Int)))
(declare-const var402 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var402 null-Int)))
(declare-const var1873 var3155) ; Statement: r1 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEncoding 
(assert (not (= var1873 null-var3155)))
(assert true)
(define-const var420 Int (length/-134980193 var2060)) ; Statement: i9 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2584 var1992 (var3155_encode/-1363466551 var1873 var2060)) ; Statement: r5 = interfaceinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEncoding: java.nio.ByteBuffer encode(java.lang.String)>(r0) 
(assert true) ; Non Conditional
(assert true)
(define-const var2881 Int (limit/2102002819 (cast-from-var1992-to-var3369 var2584))) ; Statement: $i1 = virtualinvoke r5.<java.nio.ByteBuffer: int limit()>() 
 ; Statement: if $i1 <= i0 goto $i3 = virtualinvoke r5.<java.nio.ByteBuffer: int limit()>() 
(assert (<= var2881 var402)) ; Cond: $i1 <= i0 
(assert true)
(define-const var1945 Int (limit/2102002819 (cast-from-var1992-to-var3369 var2584))) ; Statement: $i3 = virtualinvoke r5.<java.nio.ByteBuffer: int limit()>() 
(assert true)
(define-const var1007 Int (position/38072115 (cast-from-var1992-to-var3369 var2584))) ; Statement: $i2 = virtualinvoke r5.<java.nio.ByteBuffer: int position()>() 
(define-const var162 Int (- var1945 var1007)) ; Statement: $i8 = $i3 - $i2 
(assert true)
(define-const var3815 (Array Int Int) (array/-1311260030 var2584)) ; Statement: $r3 = virtualinvoke r5.<java.nio.ByteBuffer: byte[] array()>() 
(assert true)
(define-const var1982 Int (arrayOffset/-856500294 var2584)) ; Statement: $i5 = virtualinvoke r5.<java.nio.ByteBuffer: int arrayOffset()>() 
;(assert (var3077_arraycopy/-325913181 (cast-from-__Array__Int__Int__-to-var766 var3815) var1982 (cast-from-__Array__Int__Int__-to-var766 var1335) var2218 var162)) ; Statement: staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r3, $i5, r2, i4, $i8) 

(declare-const var3815!1 (Array Int Int))
(declare-const var1982!1 Int)
(declare-const var1335!1 (Array Int Int))
(declare-const var2218!1 Int)
(declare-const var162!1 Int)
(define-const var2155 Int var162!1) ; Statement: i10 = $i8 
(assert true) ; Non Conditional
 ; Statement: if i10 >= i0 goto $i6 = i4 + i0 
(assert (>= var2155 var402)) ; Cond: i10 >= i0 
(define-const var1983 Int (+ var2218!1 var402)) ; Statement: $i6 = i4 + i0 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var3155_encode/-1363466551=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEncoding, java.lang.String], java.nio.ByteBuffer), limit/2102002819=([java.nio.Buffer], int), cast-from-var1992-to-var3369=([java.nio.ByteBuffer], java.nio.Buffer), position/38072115=([java.nio.Buffer], int), array/-1311260030=([java.nio.ByteBuffer], byte[]), arrayOffset/-856500294=([java.nio.ByteBuffer], int), var3077_arraycopy/-325913181=([java.lang.Object, int, java.lang.Object, int, int], void), cast-from-__Array__Int__Int__-to-var766=([byte[]], java.lang.Object)}
; {var2060=r0, var661=null_type, var1335=r2, var2218=i4, var402=i0, var3155=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEncoding, var1873=r1, var420=i9, var1992=java.nio.ByteBuffer, var2584=r5, var3369=java.nio.Buffer, var2881=$i1, var1945=$i3, var1007=$i2, var162=$i8, var3815=$r3, var1982=$i5, var3077=java.lang.System, var766=java.lang.Object, var2155=i10, var1983=$i6}
; {r0=var2060, null_type=var661, r2=var1335, i4=var2218, i0=var402, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEncoding=var3155, r1=var1873, i9=var420, java.nio.ByteBuffer=var1992, r5=var2584, java.nio.Buffer=var3369, $i1=var2881, $i3=var1945, $i2=var1007, $i8=var162, $r3=var3815, $i5=var1982, java.lang.System=var3077, java.lang.Object=var766, i10=var2155, $i6=var1983}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r2 := @parameter1: byte[];	i4 := @parameter2: int;	i0 := @parameter3: int;	r1 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEncoding;	i9 = virtualinvoke r0.<java.lang.String: int length()>();	r5 = interfaceinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEncoding: java.nio.ByteBuffer encode(java.lang.String)>(r0);	$i1 = virtualinvoke r5.<java.nio.ByteBuffer: int limit()>();	if $i1 <= i0 goto $i3 = virtualinvoke r5.<java.nio.ByteBuffer: int limit()>();	$i3 = virtualinvoke r5.<java.nio.ByteBuffer: int limit()>();	$i2 = virtualinvoke r5.<java.nio.ByteBuffer: int position()>();	$i8 = $i3 - $i2;	$r3 = virtualinvoke r5.<java.nio.ByteBuffer: byte[] array()>();	$i5 = virtualinvoke r5.<java.nio.ByteBuffer: int arrayOffset()>();	staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r3, $i5, r2, i4, $i8);	i10 = $i8;	if i10 >= i0 goto $i6 = i4 + i0;	$i6 = i4 + i0;	return $i6
;block_num 5