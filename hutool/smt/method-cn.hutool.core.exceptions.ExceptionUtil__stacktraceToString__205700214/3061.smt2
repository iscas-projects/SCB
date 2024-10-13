(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2782 0)
(declare-sort var1990 0)
(declare-sort var903 0)
(declare-sort var2761 0)
(declare-sort var2680 0)
(declare-sort var3409 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var903-init () var903)
(declare-fun <init>/2049131104 (var903) void)
(declare-fun var2761-init () var2761)
(declare-fun <init>/-1917080009 (var2761 var2680) void)
(declare-fun cast-from-var903-to-var2680 (var903) var2680)
(declare-fun printStackTrace/-5210062 (var2782 var2761) void)
(declare-fun toString/-1680172873 (var903) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3409_isNotEmpty/-2034975830 (var1990) Bool)
(declare-const null-var2782 var2782)
(declare-const null-Int Int)
(declare-const null-var1990 var1990)
(declare-const var3576 var2782) ; Statement: r1 := @parameter0: java.lang.Throwable 
(assert (not (= var3576 null-var2782)))
(declare-const var685 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var685 null-Int)))
(declare-const var3429 var1990) ; Statement: r4 := @parameter2: java.util.Map 
(assert (not (= var3429 null-var1990)))
(define-const var2309 var903 var903-init) ; Statement: $r0 = new cn.hutool.core.io.FastByteArrayOutputStream 
(assert true)
;(assert (<init>/2049131104 var2309)) ; Statement: specialinvoke $r0.<cn.hutool.core.io.FastByteArrayOutputStream: void <init>()>() 

(declare-const var2309!1 var903)
(define-const var3848 var2761 var2761-init) ; Statement: $r2 = new java.io.PrintStream 
(assert true)
;(assert (<init>/-1917080009 var3848 (cast-from-var903-to-var2680 var2309!1))) ; Statement: specialinvoke $r2.<java.io.PrintStream: void <init>(java.io.OutputStream)>($r0) 

(declare-const var3848!1 var2761)
(declare-const var2309!2 var903)
(assert true)
;(assert (printStackTrace/-5210062 var3576 var3848!1)) ; Statement: virtualinvoke r1.<java.lang.Throwable: void printStackTrace(java.io.PrintStream)>($r2) 

(declare-const var3576!1 var2782)
(declare-const var3848!2 var2761)
(assert true)
(define-const var2854 String (toString/-1680172873 var2309!2)) ; Statement: r3 = virtualinvoke $r0.<cn.hutool.core.io.FastByteArrayOutputStream: java.lang.String toString()>() 
(assert true)
(define-const var1157 Int (length/-134980193 var2854)) ; Statement: i0 = virtualinvoke r3.<java.lang.String: int length()>() 
 ; Statement: if i2 < 0 goto i2 = i0 
(assert (< var685 0)) ; Cond: i2 < 0 
(define-const var685!1 Int var1157) ; Statement: i2 = i0 
(assert true) ; Non Conditional
(define-const var13 Bool (var3409_isNotEmpty/-2034975830 var3429)) ; Statement: $z0 = staticinvoke <cn.hutool.core.map.MapUtil: boolean isNotEmpty(java.util.Map)>(r4) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var13 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if i2 != i0 goto $r5 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subPre(java.lang.CharSequence,int)>(r3, i2) 
(assert (not (not (= var685!1 var1157)))) ; Negate: Cond: i2 != i0  
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var903-init=([], cn.hutool.core.io.FastByteArrayOutputStream), <init>/2049131104=([cn.hutool.core.io.FastByteArrayOutputStream], void), var2761-init=([], java.io.PrintStream), <init>/-1917080009=([java.io.PrintStream, java.io.OutputStream], void), cast-from-var903-to-var2680=([cn.hutool.core.io.FastByteArrayOutputStream], java.io.OutputStream), printStackTrace/-5210062=([java.lang.Throwable, java.io.PrintStream], void), toString/-1680172873=([cn.hutool.core.io.FastByteArrayOutputStream], java.lang.String), length/-134980193=([java.lang.String], int), var3409_isNotEmpty/-2034975830=([java.util.Map], boolean)}
; {var2782=java.lang.Throwable, var3576=r1, var685=i2, var1990=java.util.Map, var3429=r4, var903=cn.hutool.core.io.FastByteArrayOutputStream, var2309=$r0, var2761=java.io.PrintStream, var3848=$r2, var2680=java.io.OutputStream, var2854=r3, var1157=i0, var3409=cn.hutool.core.map.MapUtil, var13=$z0}
; {java.lang.Throwable=var2782, r1=var3576, i2=var685, java.util.Map=var1990, r4=var3429, cn.hutool.core.io.FastByteArrayOutputStream=var903, $r0=var2309, java.io.PrintStream=var2761, $r2=var3848, java.io.OutputStream=var2680, r3=var2854, i0=var1157, cn.hutool.core.map.MapUtil=var3409, $z0=var13}
;seq <cn.hutool.core.io.FastByteArrayOutputStream: java.lang.String toString()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.lang.Throwable;	i2 := @parameter1: int;	r4 := @parameter2: java.util.Map;	$r0 = new cn.hutool.core.io.FastByteArrayOutputStream;	specialinvoke $r0.<cn.hutool.core.io.FastByteArrayOutputStream: void <init>()>();	$r2 = new java.io.PrintStream;	specialinvoke $r2.<java.io.PrintStream: void <init>(java.io.OutputStream)>($r0);	virtualinvoke r1.<java.lang.Throwable: void printStackTrace(java.io.PrintStream)>($r2);	r3 = virtualinvoke $r0.<cn.hutool.core.io.FastByteArrayOutputStream: java.lang.String toString()>();	i0 = virtualinvoke r3.<java.lang.String: int length()>();	if i2 < 0 goto i2 = i0;	i2 = i0;	$z0 = staticinvoke <cn.hutool.core.map.MapUtil: boolean isNotEmpty(java.util.Map)>(r4);	if $z0 == 0 goto (branch);	if i2 != i0 goto $r5 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subPre(java.lang.CharSequence,int)>(r3, i2);	return r3
;block_num 5