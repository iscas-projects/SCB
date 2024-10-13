(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2718 0)
(declare-sort var1002 0)
(declare-sort var2036 0)
(declare-sort var1203 0)
(declare-sort var2636 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2036_nullToEmpty/-379247643 (String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun readLock/-667851710 (var2718) var1203)
(declare-fun lock/1801206281 (var1203) void)
(declare-fun unlock/-1174066288 (var1203) void)
(declare-const null-var2718 var2718)
(declare-const null-String String)
(declare-const null-var2636 var2636)
(declare-const var3216 var2718) ; Statement: r1 := @this: cn.hutool.setting.GroupedMap 
(assert (not (= var3216 null-var2718)))
(declare-const var1220 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var1220 null-String)))
(define-const var1360 String (var2036_nullToEmpty/-379247643 (cast-from-String-to-String var1220))) ; Statement: $r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r8) 
(assert true)
(define-const var2417 String (trim/-847153721 var1360)) ; Statement: r9 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>() 
(define-const var436 var1203 (readLock/-667851710 var3216)) ; Statement: $r2 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock> 
(assert true)
;(assert (lock/1801206281 var436)) ; Statement: virtualinvoke $r2.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void lock()>() 

(declare-const var436!1 var1203)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var444 var2636) ; Statement: $r6 := @caughtexception 
(assert (not (= var444 null-var2636)))
(assert true) ; Non Conditional
(define-const var1312 var1203 (readLock/-667851710 var3216)) ; Statement: $r7 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock> 
(assert true)
;(assert (unlock/-1174066288 var1312)) ; Statement: virtualinvoke $r7.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void unlock()>() 

(declare-const var1312!1 var1203)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2036_nullToEmpty/-379247643=([java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), trim/-847153721=([java.lang.String], java.lang.String), readLock/-667851710=([cn.hutool.setting.GroupedMap], java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock), lock/1801206281=([java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock], void), unlock/-1174066288=([java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock], void)}
; {var2718=cn.hutool.setting.GroupedMap, var3216=r1, var1220=r8, var1002=null_type, var2036=cn.hutool.core.text.CharSequenceUtil, var1360=$r0, var2417=r9, var1203=java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock, var436=$r2, var2636=java.lang.Throwable, var444=$r6, var1312=$r7}
; {cn.hutool.setting.GroupedMap=var2718, r1=var3216, r8=var1220, null_type=var1002, cn.hutool.core.text.CharSequenceUtil=var2036, $r0=var1360, r9=var2417, java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock=var1203, $r2=var436, java.lang.Throwable=var2636, $r6=var444, $r7=var1312}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r1 := @this: cn.hutool.setting.GroupedMap;	r8 := @parameter0: java.lang.String;	$r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r8);	r9 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>();	$r2 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock>;	virtualinvoke $r2.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void lock()>();	$r6 := @caughtexception;	$r7 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock>;	virtualinvoke $r7.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void unlock()>();	throw $r6
;block_num 3