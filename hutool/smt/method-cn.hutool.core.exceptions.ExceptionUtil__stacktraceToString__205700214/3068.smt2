(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2020 0)
(declare-sort var605 0)
(declare-sort var3593 0)
(declare-sort var1872 0)
(declare-sort var2343 0)
(declare-sort var3351 0)
(declare-sort var3830 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3593-init () var3593)
(declare-fun <init>/2049131104 (var3593) void)
(declare-fun var1872-init () var1872)
(declare-fun <init>/-1917080009 (var1872 var2343) void)
(declare-fun cast-from-var3593-to-var2343 (var3593) var2343)
(declare-fun printStackTrace/-5210062 (var2020 var1872) void)
(declare-fun toString/-1680172873 (var3593) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3351_isNotEmpty/-2034975830 (var605) Bool)
(declare-fun var3830_subPre/839217248 (String Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var2020 var2020)
(declare-const null-Int Int)
(declare-const null-var605 var605)
(declare-const var1890 var2020) ; Statement: r1 := @parameter0: java.lang.Throwable 
(assert (not (= var1890 null-var2020)))
(declare-const var2211 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var2211 null-Int)))
(declare-const var3382 var605) ; Statement: r4 := @parameter2: java.util.Map 
(assert (not (= var3382 null-var605)))
(define-const var3458 var3593 var3593-init) ; Statement: $r0 = new cn.hutool.core.io.FastByteArrayOutputStream 
(assert true)
;(assert (<init>/2049131104 var3458)) ; Statement: specialinvoke $r0.<cn.hutool.core.io.FastByteArrayOutputStream: void <init>()>() 

(declare-const var3458!1 var3593)
(define-const var465 var1872 var1872-init) ; Statement: $r2 = new java.io.PrintStream 
(assert true)
;(assert (<init>/-1917080009 var465 (cast-from-var3593-to-var2343 var3458!1))) ; Statement: specialinvoke $r2.<java.io.PrintStream: void <init>(java.io.OutputStream)>($r0) 

(declare-const var465!1 var1872)
(declare-const var3458!2 var3593)
(assert true)
;(assert (printStackTrace/-5210062 var1890 var465!1)) ; Statement: virtualinvoke r1.<java.lang.Throwable: void printStackTrace(java.io.PrintStream)>($r2) 

(declare-const var1890!1 var2020)
(declare-const var465!2 var1872)
(assert true)
(define-const var1368 String (toString/-1680172873 var3458!2)) ; Statement: r3 = virtualinvoke $r0.<cn.hutool.core.io.FastByteArrayOutputStream: java.lang.String toString()>() 
(assert true)
(define-const var76 Int (length/-134980193 var1368)) ; Statement: i0 = virtualinvoke r3.<java.lang.String: int length()>() 
 ; Statement: if i2 < 0 goto i2 = i0 
(assert (< var2211 0)) ; Cond: i2 < 0 
(define-const var2211!1 Int var76) ; Statement: i2 = i0 
(assert true) ; Non Conditional
(define-const var2854 Bool (var3351_isNotEmpty/-2034975830 var3382)) ; Statement: $z0 = staticinvoke <cn.hutool.core.map.MapUtil: boolean isNotEmpty(java.util.Map)>(r4) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var2854 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if i2 != i0 goto $r5 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subPre(java.lang.CharSequence,int)>(r3, i2) 
(assert (not (= var2211!1 var76))) ; Cond: i2 != i0 
(define-const var1806 String (var3830_subPre/839217248 (cast-from-String-to-String var1368) var2211!1)) ; Statement: $r5 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subPre(java.lang.CharSequence,int)>(r3, i2) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3593-init=([], cn.hutool.core.io.FastByteArrayOutputStream), <init>/2049131104=([cn.hutool.core.io.FastByteArrayOutputStream], void), var1872-init=([], java.io.PrintStream), <init>/-1917080009=([java.io.PrintStream, java.io.OutputStream], void), cast-from-var3593-to-var2343=([cn.hutool.core.io.FastByteArrayOutputStream], java.io.OutputStream), printStackTrace/-5210062=([java.lang.Throwable, java.io.PrintStream], void), toString/-1680172873=([cn.hutool.core.io.FastByteArrayOutputStream], java.lang.String), length/-134980193=([java.lang.String], int), var3351_isNotEmpty/-2034975830=([java.util.Map], boolean), var3830_subPre/839217248=([java.lang.CharSequence, int], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var2020=java.lang.Throwable, var1890=r1, var2211=i2, var605=java.util.Map, var3382=r4, var3593=cn.hutool.core.io.FastByteArrayOutputStream, var3458=$r0, var1872=java.io.PrintStream, var465=$r2, var2343=java.io.OutputStream, var1368=r3, var76=i0, var3351=cn.hutool.core.map.MapUtil, var2854=$z0, var3830=cn.hutool.core.text.CharSequenceUtil, var1806=$r5}
; {java.lang.Throwable=var2020, r1=var1890, i2=var2211, java.util.Map=var605, r4=var3382, cn.hutool.core.io.FastByteArrayOutputStream=var3593, $r0=var3458, java.io.PrintStream=var1872, $r2=var465, java.io.OutputStream=var2343, r3=var1368, i0=var76, cn.hutool.core.map.MapUtil=var3351, $z0=var2854, cn.hutool.core.text.CharSequenceUtil=var3830, $r5=var1806}
;seq <cn.hutool.core.io.FastByteArrayOutputStream: java.lang.String toString()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.lang.Throwable;	i2 := @parameter1: int;	r4 := @parameter2: java.util.Map;	$r0 = new cn.hutool.core.io.FastByteArrayOutputStream;	specialinvoke $r0.<cn.hutool.core.io.FastByteArrayOutputStream: void <init>()>();	$r2 = new java.io.PrintStream;	specialinvoke $r2.<java.io.PrintStream: void <init>(java.io.OutputStream)>($r0);	virtualinvoke r1.<java.lang.Throwable: void printStackTrace(java.io.PrintStream)>($r2);	r3 = virtualinvoke $r0.<cn.hutool.core.io.FastByteArrayOutputStream: java.lang.String toString()>();	i0 = virtualinvoke r3.<java.lang.String: int length()>();	if i2 < 0 goto i2 = i0;	i2 = i0;	$z0 = staticinvoke <cn.hutool.core.map.MapUtil: boolean isNotEmpty(java.util.Map)>(r4);	if $z0 == 0 goto (branch);	if i2 != i0 goto $r5 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subPre(java.lang.CharSequence,int)>(r3, i2);	$r5 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subPre(java.lang.CharSequence,int)>(r3, i2);	return $r5
;block_num 5