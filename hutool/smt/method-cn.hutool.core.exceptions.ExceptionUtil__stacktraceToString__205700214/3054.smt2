(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var68 0)
(declare-sort var1249 0)
(declare-sort var1475 0)
(declare-sort var728 0)
(declare-sort var2561 0)
(declare-sort var3338 0)
(declare-sort var3869 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1475-init () var1475)
(declare-fun <init>/2049131104 (var1475) void)
(declare-fun var728-init () var728)
(declare-fun <init>/-1917080009 (var728 var2561) void)
(declare-fun cast-from-var1475-to-var2561 (var1475) var2561)
(declare-fun printStackTrace/-5210062 (var68 var728) void)
(declare-fun toString/-1680172873 (var1475) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3338_isNotEmpty/-2034975830 (var1249) Bool)
(declare-fun var3869_subPre/839217248 (String Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var68 var68)
(declare-const null-Int Int)
(declare-const null-var1249 var1249)
(declare-const var1698 var68) ; Statement: r1 := @parameter0: java.lang.Throwable 
(assert (not (= var1698 null-var68)))
(declare-const var2227 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var2227 null-Int)))
(declare-const var2807 var1249) ; Statement: r4 := @parameter2: java.util.Map 
(assert (not (= var2807 null-var1249)))
(define-const var3074 var1475 var1475-init) ; Statement: $r0 = new cn.hutool.core.io.FastByteArrayOutputStream 
(assert true)
;(assert (<init>/2049131104 var3074)) ; Statement: specialinvoke $r0.<cn.hutool.core.io.FastByteArrayOutputStream: void <init>()>() 

(declare-const var3074!1 var1475)
(define-const var3198 var728 var728-init) ; Statement: $r2 = new java.io.PrintStream 
(assert true)
;(assert (<init>/-1917080009 var3198 (cast-from-var1475-to-var2561 var3074!1))) ; Statement: specialinvoke $r2.<java.io.PrintStream: void <init>(java.io.OutputStream)>($r0) 

(declare-const var3198!1 var728)
(declare-const var3074!2 var1475)
(assert true)
;(assert (printStackTrace/-5210062 var1698 var3198!1)) ; Statement: virtualinvoke r1.<java.lang.Throwable: void printStackTrace(java.io.PrintStream)>($r2) 

(declare-const var1698!1 var68)
(declare-const var3198!2 var728)
(assert true)
(define-const var342 String (toString/-1680172873 var3074!2)) ; Statement: r3 = virtualinvoke $r0.<cn.hutool.core.io.FastByteArrayOutputStream: java.lang.String toString()>() 
(assert true)
(define-const var3434 Int (length/-134980193 var342)) ; Statement: i0 = virtualinvoke r3.<java.lang.String: int length()>() 
 ; Statement: if i2 < 0 goto i2 = i0 
(assert (not (< var2227 0))) ; Negate: Cond: i2 < 0  
 ; Statement: if i2 <= i0 goto $z0 = staticinvoke <cn.hutool.core.map.MapUtil: boolean isNotEmpty(java.util.Map)>(r4) 
(assert (<= var2227 var3434)) ; Cond: i2 <= i0 
(define-const var2281 Bool (var3338_isNotEmpty/-2034975830 var2807)) ; Statement: $z0 = staticinvoke <cn.hutool.core.map.MapUtil: boolean isNotEmpty(java.util.Map)>(r4) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var2281 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if i2 != i0 goto $r5 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subPre(java.lang.CharSequence,int)>(r3, i2) 
(assert (not (= var2227 var3434))) ; Cond: i2 != i0 
(define-const var1057 String (var3869_subPre/839217248 (cast-from-String-to-String var342) var2227)) ; Statement: $r5 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subPre(java.lang.CharSequence,int)>(r3, i2) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var1475-init=([], cn.hutool.core.io.FastByteArrayOutputStream), <init>/2049131104=([cn.hutool.core.io.FastByteArrayOutputStream], void), var728-init=([], java.io.PrintStream), <init>/-1917080009=([java.io.PrintStream, java.io.OutputStream], void), cast-from-var1475-to-var2561=([cn.hutool.core.io.FastByteArrayOutputStream], java.io.OutputStream), printStackTrace/-5210062=([java.lang.Throwable, java.io.PrintStream], void), toString/-1680172873=([cn.hutool.core.io.FastByteArrayOutputStream], java.lang.String), length/-134980193=([java.lang.String], int), var3338_isNotEmpty/-2034975830=([java.util.Map], boolean), var3869_subPre/839217248=([java.lang.CharSequence, int], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var68=java.lang.Throwable, var1698=r1, var2227=i2, var1249=java.util.Map, var2807=r4, var1475=cn.hutool.core.io.FastByteArrayOutputStream, var3074=$r0, var728=java.io.PrintStream, var3198=$r2, var2561=java.io.OutputStream, var342=r3, var3434=i0, var3338=cn.hutool.core.map.MapUtil, var2281=$z0, var3869=cn.hutool.core.text.CharSequenceUtil, var1057=$r5}
; {java.lang.Throwable=var68, r1=var1698, i2=var2227, java.util.Map=var1249, r4=var2807, cn.hutool.core.io.FastByteArrayOutputStream=var1475, $r0=var3074, java.io.PrintStream=var728, $r2=var3198, java.io.OutputStream=var2561, r3=var342, i0=var3434, cn.hutool.core.map.MapUtil=var3338, $z0=var2281, cn.hutool.core.text.CharSequenceUtil=var3869, $r5=var1057}
;seq <cn.hutool.core.io.FastByteArrayOutputStream: java.lang.String toString()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.lang.Throwable;	i2 := @parameter1: int;	r4 := @parameter2: java.util.Map;	$r0 = new cn.hutool.core.io.FastByteArrayOutputStream;	specialinvoke $r0.<cn.hutool.core.io.FastByteArrayOutputStream: void <init>()>();	$r2 = new java.io.PrintStream;	specialinvoke $r2.<java.io.PrintStream: void <init>(java.io.OutputStream)>($r0);	virtualinvoke r1.<java.lang.Throwable: void printStackTrace(java.io.PrintStream)>($r2);	r3 = virtualinvoke $r0.<cn.hutool.core.io.FastByteArrayOutputStream: java.lang.String toString()>();	i0 = virtualinvoke r3.<java.lang.String: int length()>();	if i2 < 0 goto i2 = i0;	if i2 <= i0 goto $z0 = staticinvoke <cn.hutool.core.map.MapUtil: boolean isNotEmpty(java.util.Map)>(r4);	$z0 = staticinvoke <cn.hutool.core.map.MapUtil: boolean isNotEmpty(java.util.Map)>(r4);	if $z0 == 0 goto (branch);	if i2 != i0 goto $r5 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subPre(java.lang.CharSequence,int)>(r3, i2);	$r5 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subPre(java.lang.CharSequence,int)>(r3, i2);	return $r5
;block_num 5