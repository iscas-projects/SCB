(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3870 0)
(declare-sort var1276 0)
(declare-sort var1597 0)
(declare-sort var1199 0)
(declare-sort var3701 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1597_nullToEmpty/-379247643 (String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun writeLock/-667851710 (var3870) var1199)
(declare-fun lock/-1797420134 (var1199) void)
(declare-fun unlock/-2005377823 (var1199) void)
(declare-const null-var3870 var3870)
(declare-const null-String String)
(declare-const null-var3701 var3701)
(declare-const var1996 var3870) ; Statement: r1 := @this: cn.hutool.setting.GroupedMap 
(assert (not (= var1996 null-var3870)))
(declare-const var163 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var163 null-String)))
(declare-const var505 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var505 null-String)))
(declare-const var65 String) ; Statement: r7 := @parameter2: java.lang.String 
(assert (not (= var65 null-String)))
(define-const var3915 String (var1597_nullToEmpty/-379247643 (cast-from-String-to-String var163))) ; Statement: $r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r13) 
(assert true)
(define-const var640 String (trim/-847153721 var3915)) ; Statement: r14 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>() 
(define-const var3577 var1199 (writeLock/-667851710 var1996)) ; Statement: $r2 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock writeLock> 
(assert true)
;(assert (lock/-1797420134 var3577)) ; Statement: virtualinvoke $r2.<java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock: void lock()>() 

(declare-const var3577!1 var1199)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2248 var3701) ; Statement: $r11 := @caughtexception 
(assert (not (= var2248 null-var3701)))
(assert true) ; Non Conditional
(define-const var3208 var1199 (writeLock/-667851710 var1996)) ; Statement: $r12 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock writeLock> 
(assert true)
;(assert (unlock/-2005377823 var3208)) ; Statement: virtualinvoke $r12.<java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock: void unlock()>() 

(declare-const var3208!1 var1199)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1597_nullToEmpty/-379247643=([java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), trim/-847153721=([java.lang.String], java.lang.String), writeLock/-667851710=([cn.hutool.setting.GroupedMap], java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock), lock/-1797420134=([java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock], void), unlock/-2005377823=([java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock], void)}
; {var3870=cn.hutool.setting.GroupedMap, var1996=r1, var163=r13, var1276=null_type, var505=r6, var65=r7, var1597=cn.hutool.core.text.CharSequenceUtil, var3915=$r0, var640=r14, var1199=java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock, var3577=$r2, var3701=java.lang.Throwable, var2248=$r11, var3208=$r12}
; {cn.hutool.setting.GroupedMap=var3870, r1=var1996, r13=var163, null_type=var1276, r6=var505, r7=var65, cn.hutool.core.text.CharSequenceUtil=var1597, $r0=var3915, r14=var640, java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock=var1199, $r2=var3577, java.lang.Throwable=var3701, $r11=var2248, $r12=var3208}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r1 := @this: cn.hutool.setting.GroupedMap;	r13 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	r7 := @parameter2: java.lang.String;	$r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r13);	r14 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>();	$r2 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock writeLock>;	virtualinvoke $r2.<java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock: void lock()>();	$r11 := @caughtexception;	$r12 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock writeLock>;	virtualinvoke $r12.<java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock: void unlock()>();	throw $r11
;block_num 3