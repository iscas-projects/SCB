(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1388 0)
(declare-sort var594 0)
(declare-sort var3749 0)
(declare-sort var1023 0)
(declare-sort var386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3749_nullToEmpty/-379247643 (String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun readLock/-667851710 (var1388) var1023)
(declare-fun lock/1801206281 (var1023) void)
(declare-fun unlock/-1174066288 (var1023) void)
(declare-const null-var1388 var1388)
(declare-const null-String String)
(declare-const null-var386 var386)
(declare-const var1765 var1388) ; Statement: r1 := @this: cn.hutool.setting.GroupedMap 
(assert (not (= var1765 null-var1388)))
(declare-const var2460 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var2460 null-String)))
(declare-const var1061 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1061 null-String)))
(define-const var753 String (var3749_nullToEmpty/-379247643 (cast-from-String-to-String var2460))) ; Statement: $r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r9) 
(assert true)
(define-const var3619 String (trim/-847153721 var753)) ; Statement: r10 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>() 
(define-const var1359 var1023 (readLock/-667851710 var1765)) ; Statement: $r2 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock> 
(assert true)
;(assert (lock/1801206281 var1359)) ; Statement: virtualinvoke $r2.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void lock()>() 

(declare-const var1359!1 var1023)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var213 var386) ; Statement: $r7 := @caughtexception 
(assert (not (= var213 null-var386)))
(assert true) ; Non Conditional
(define-const var3775 var1023 (readLock/-667851710 var1765)) ; Statement: $r8 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock> 
(assert true)
;(assert (unlock/-1174066288 var3775)) ; Statement: virtualinvoke $r8.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void unlock()>() 

(declare-const var3775!1 var1023)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3749_nullToEmpty/-379247643=([java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), trim/-847153721=([java.lang.String], java.lang.String), readLock/-667851710=([cn.hutool.setting.GroupedMap], java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock), lock/1801206281=([java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock], void), unlock/-1174066288=([java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock], void)}
; {var1388=cn.hutool.setting.GroupedMap, var1765=r1, var2460=r9, var594=null_type, var1061=r5, var3749=cn.hutool.core.text.CharSequenceUtil, var753=$r0, var3619=r10, var1023=java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock, var1359=$r2, var386=java.lang.Throwable, var213=$r7, var3775=$r8}
; {cn.hutool.setting.GroupedMap=var1388, r1=var1765, r9=var2460, null_type=var594, r5=var1061, cn.hutool.core.text.CharSequenceUtil=var3749, $r0=var753, r10=var3619, java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock=var1023, $r2=var1359, java.lang.Throwable=var386, $r7=var213, $r8=var3775}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r1 := @this: cn.hutool.setting.GroupedMap;	r9 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r9);	r10 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>();	$r2 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock>;	virtualinvoke $r2.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void lock()>();	$r7 := @caughtexception;	$r8 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock>;	virtualinvoke $r8.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void unlock()>();	throw $r7
;block_num 3