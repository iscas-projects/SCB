(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2633 0)
(declare-sort var2994 0)
(declare-sort var288 0)
(declare-sort var3460 0)
(declare-sort var1476 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var288_nullToEmpty/-379247643 (String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun readLock/-667851710 (var2633) var3460)
(declare-fun lock/1801206281 (var3460) void)
(declare-fun unlock/-1174066288 (var3460) void)
(declare-const null-var2633 var2633)
(declare-const null-String String)
(declare-const null-var1476 var1476)
(declare-const var2405 var2633) ; Statement: r1 := @this: cn.hutool.setting.GroupedMap 
(assert (not (= var2405 null-var2633)))
(declare-const var2581 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var2581 null-String)))
(define-const var1530 String (var288_nullToEmpty/-379247643 (cast-from-String-to-String var2581))) ; Statement: $r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r10) 
(assert true)
(define-const var543 String (trim/-847153721 var1530)) ; Statement: r11 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>() 
(define-const var2942 var3460 (readLock/-667851710 var2405)) ; Statement: $r2 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock> 
(assert true)
;(assert (lock/1801206281 var2942)) ; Statement: virtualinvoke $r2.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void lock()>() 

(declare-const var2942!1 var3460)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2363 var1476) ; Statement: $r8 := @caughtexception 
(assert (not (= var2363 null-var1476)))
(assert true) ; Non Conditional
(define-const var284 var3460 (readLock/-667851710 var2405)) ; Statement: $r9 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock> 
(assert true)
;(assert (unlock/-1174066288 var284)) ; Statement: virtualinvoke $r9.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void unlock()>() 

(declare-const var284!1 var3460)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var288_nullToEmpty/-379247643=([java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), trim/-847153721=([java.lang.String], java.lang.String), readLock/-667851710=([cn.hutool.setting.GroupedMap], java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock), lock/1801206281=([java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock], void), unlock/-1174066288=([java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock], void)}
; {var2633=cn.hutool.setting.GroupedMap, var2405=r1, var2581=r10, var2994=null_type, var288=cn.hutool.core.text.CharSequenceUtil, var1530=$r0, var543=r11, var3460=java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock, var2942=$r2, var1476=java.lang.Throwable, var2363=$r8, var284=$r9}
; {cn.hutool.setting.GroupedMap=var2633, r1=var2405, r10=var2581, null_type=var2994, cn.hutool.core.text.CharSequenceUtil=var288, $r0=var1530, r11=var543, java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock=var3460, $r2=var2942, java.lang.Throwable=var1476, $r8=var2363, $r9=var284}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r1 := @this: cn.hutool.setting.GroupedMap;	r10 := @parameter0: java.lang.String;	$r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r10);	r11 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>();	$r2 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock>;	virtualinvoke $r2.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void lock()>();	$r8 := @caughtexception;	$r9 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock>;	virtualinvoke $r9.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void unlock()>();	throw $r8
;block_num 3