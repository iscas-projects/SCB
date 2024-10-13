(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var830 0)
(declare-sort var3430 0)
(declare-sort var3123 0)
(declare-sort var1558 0)
(declare-sort var3149 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3123-init () (Array Int var3123))
(declare-fun var1558_notNull/515149844 (var3123 String (Array Int var3123)) var3123)
(declare-fun cast-from-String-to-var3123 (String) var3123)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun var3149_loadPrimitiveClass/-2025807845 (String) ClassObject)
(declare-const null-String String)
(declare-const null-var3430 var3430)
(declare-const null-Bool Bool)
(declare-const null-ClassObject ClassObject)
(declare-const var1065 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1065 null-String)))
(declare-const var969 var3430) ; Statement: r3 := @parameter1: java.lang.ClassLoader 
(assert (not (= var969 null-var3430)))
(declare-const var142 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var142 null-Bool)))
(define-const var1840 (Array Int var3123) arr-var3123-init) ; Statement: $r0 = newarray (java.lang.Object)[0] 
;(assert (var1558_notNull/515149844 (cast-from-String-to-var3123 var1065) "Name must not be null" var1840)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r2, "Name must not be null", $r0) 

(declare-const var1065!1 String)
(declare-const var3439 String)
(declare-const var1840!1 (Array Int var3123))
(assert true)
(define-const var1647 String (replace/1524665721 var1065!1 47 46)) ; Statement: r4 = virtualinvoke r2.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
 ; Statement: if null != r3 goto $r1 = staticinvoke <cn.hutool.core.util.ClassLoaderUtil: java.lang.Class loadPrimitiveClass(java.lang.String)>(r4) 
(assert (not (= null-var3430 var969))) ; Cond: null != r3 
(define-const var3745 ClassObject (var3149_loadPrimitiveClass/-2025807845 var1647)) ; Statement: $r1 = staticinvoke <cn.hutool.core.util.ClassLoaderUtil: java.lang.Class loadPrimitiveClass(java.lang.String)>(r4) 
(define-const var1447 ClassObject var3745) ; Statement: r5 = $r1 
 ; Statement: if $r1 != null goto return r5 
(assert (not (= var3745 null-ClassObject))) ; Cond: $r1 != null 
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3123-init=([], java.lang.Object[]), var1558_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var3123=([java.lang.String], java.lang.Object), replace/1524665721=([java.lang.String, char, char], java.lang.String), var3149_loadPrimitiveClass/-2025807845=([java.lang.String], java.lang.Class)}
; {var1065=r2, var830=null_type, var3430=java.lang.ClassLoader, var969=r3, var142=z0, var3123=java.lang.Object, var1840=$r0, var1558=cn.hutool.core.lang.Assert, var3439="Name must not be null", var1647=r4, var3149=cn.hutool.core.util.ClassLoaderUtil, var3745=$r1, var1447=r5}
; {r2=var1065, null_type=var830, java.lang.ClassLoader=var3430, r3=var969, z0=var142, java.lang.Object=var3123, $r0=var1840, cn.hutool.core.lang.Assert=var1558, "Name must not be null"=var3439, r4=var1647, cn.hutool.core.util.ClassLoaderUtil=var3149, $r1=var3745, r5=var1447}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.ClassLoader;	z0 := @parameter2: boolean;	$r0 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r2, "Name must not be null", $r0);	r4 = virtualinvoke r2.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	if null != r3 goto $r1 = staticinvoke <cn.hutool.core.util.ClassLoaderUtil: java.lang.Class loadPrimitiveClass(java.lang.String)>(r4);	$r1 = staticinvoke <cn.hutool.core.util.ClassLoaderUtil: java.lang.Class loadPrimitiveClass(java.lang.String)>(r4);	r5 = $r1;	if $r1 != null goto return r5;	return r5
;block_num 3