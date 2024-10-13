(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var337 0)
(declare-sort var1758 0)
(declare-sort var437 0)
(declare-sort var1061 0)
(declare-sort var2318 0)
(declare-sort var3171 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var437-init () var437)
(declare-fun <init>/2049131104 (var437) void)
(declare-fun var1061-init () var1061)
(declare-fun <init>/-1917080009 (var1061 var2318) void)
(declare-fun cast-from-var437-to-var2318 (var437) var2318)
(declare-fun printStackTrace/-5210062 (var337 var1061) void)
(declare-fun toString/-1680172873 (var437) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3171_isNotEmpty/-2034975830 (var1758) Bool)
(declare-const null-var337 var337)
(declare-const null-Int Int)
(declare-const null-var1758 var1758)
(declare-const var1798 var337) ; Statement: r1 := @parameter0: java.lang.Throwable 
(assert (not (= var1798 null-var337)))
(declare-const var3296 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var3296 null-Int)))
(declare-const var1242 var1758) ; Statement: r4 := @parameter2: java.util.Map 
(assert (not (= var1242 null-var1758)))
(define-const var523 var437 var437-init) ; Statement: $r0 = new cn.hutool.core.io.FastByteArrayOutputStream 
(assert true)
;(assert (<init>/2049131104 var523)) ; Statement: specialinvoke $r0.<cn.hutool.core.io.FastByteArrayOutputStream: void <init>()>() 

(declare-const var523!1 var437)
(define-const var1254 var1061 var1061-init) ; Statement: $r2 = new java.io.PrintStream 
(assert true)
;(assert (<init>/-1917080009 var1254 (cast-from-var437-to-var2318 var523!1))) ; Statement: specialinvoke $r2.<java.io.PrintStream: void <init>(java.io.OutputStream)>($r0) 

(declare-const var1254!1 var1061)
(declare-const var523!2 var437)
(assert true)
;(assert (printStackTrace/-5210062 var1798 var1254!1)) ; Statement: virtualinvoke r1.<java.lang.Throwable: void printStackTrace(java.io.PrintStream)>($r2) 

(declare-const var1798!1 var337)
(declare-const var1254!2 var1061)
(assert true)
(define-const var411 String (toString/-1680172873 var523!2)) ; Statement: r3 = virtualinvoke $r0.<cn.hutool.core.io.FastByteArrayOutputStream: java.lang.String toString()>() 
(assert true)
(define-const var242 Int (length/-134980193 var411)) ; Statement: i0 = virtualinvoke r3.<java.lang.String: int length()>() 
 ; Statement: if i2 < 0 goto i2 = i0 
(assert (not (< var3296 0))) ; Negate: Cond: i2 < 0  
 ; Statement: if i2 <= i0 goto $z0 = staticinvoke <cn.hutool.core.map.MapUtil: boolean isNotEmpty(java.util.Map)>(r4) 
(assert (<= var3296 var242)) ; Cond: i2 <= i0 
(define-const var1802 Bool (var3171_isNotEmpty/-2034975830 var1242)) ; Statement: $z0 = staticinvoke <cn.hutool.core.map.MapUtil: boolean isNotEmpty(java.util.Map)>(r4) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var1802 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if i2 != i0 goto $r5 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subPre(java.lang.CharSequence,int)>(r3, i2) 
(assert (not (not (= var3296 var242)))) ; Negate: Cond: i2 != i0  
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var437-init=([], cn.hutool.core.io.FastByteArrayOutputStream), <init>/2049131104=([cn.hutool.core.io.FastByteArrayOutputStream], void), var1061-init=([], java.io.PrintStream), <init>/-1917080009=([java.io.PrintStream, java.io.OutputStream], void), cast-from-var437-to-var2318=([cn.hutool.core.io.FastByteArrayOutputStream], java.io.OutputStream), printStackTrace/-5210062=([java.lang.Throwable, java.io.PrintStream], void), toString/-1680172873=([cn.hutool.core.io.FastByteArrayOutputStream], java.lang.String), length/-134980193=([java.lang.String], int), var3171_isNotEmpty/-2034975830=([java.util.Map], boolean)}
; {var337=java.lang.Throwable, var1798=r1, var3296=i2, var1758=java.util.Map, var1242=r4, var437=cn.hutool.core.io.FastByteArrayOutputStream, var523=$r0, var1061=java.io.PrintStream, var1254=$r2, var2318=java.io.OutputStream, var411=r3, var242=i0, var3171=cn.hutool.core.map.MapUtil, var1802=$z0}
; {java.lang.Throwable=var337, r1=var1798, i2=var3296, java.util.Map=var1758, r4=var1242, cn.hutool.core.io.FastByteArrayOutputStream=var437, $r0=var523, java.io.PrintStream=var1061, $r2=var1254, java.io.OutputStream=var2318, r3=var411, i0=var242, cn.hutool.core.map.MapUtil=var3171, $z0=var1802}
;seq <cn.hutool.core.io.FastByteArrayOutputStream: java.lang.String toString()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.lang.Throwable;	i2 := @parameter1: int;	r4 := @parameter2: java.util.Map;	$r0 = new cn.hutool.core.io.FastByteArrayOutputStream;	specialinvoke $r0.<cn.hutool.core.io.FastByteArrayOutputStream: void <init>()>();	$r2 = new java.io.PrintStream;	specialinvoke $r2.<java.io.PrintStream: void <init>(java.io.OutputStream)>($r0);	virtualinvoke r1.<java.lang.Throwable: void printStackTrace(java.io.PrintStream)>($r2);	r3 = virtualinvoke $r0.<cn.hutool.core.io.FastByteArrayOutputStream: java.lang.String toString()>();	i0 = virtualinvoke r3.<java.lang.String: int length()>();	if i2 < 0 goto i2 = i0;	if i2 <= i0 goto $z0 = staticinvoke <cn.hutool.core.map.MapUtil: boolean isNotEmpty(java.util.Map)>(r4);	$z0 = staticinvoke <cn.hutool.core.map.MapUtil: boolean isNotEmpty(java.util.Map)>(r4);	if $z0 == 0 goto (branch);	if i2 != i0 goto $r5 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subPre(java.lang.CharSequence,int)>(r3, i2);	return r3
;block_num 5