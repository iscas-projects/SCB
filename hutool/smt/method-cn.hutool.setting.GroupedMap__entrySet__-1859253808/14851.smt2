(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1847 0)
(declare-sort var2857 0)
(declare-sort var3725 0)
(declare-sort var1937 0)
(declare-sort var3334 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3725_nullToEmpty/-379247643 (String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun readLock/-667851710 (var1847) var1937)
(declare-fun lock/1801206281 (var1937) void)
(declare-fun unlock/-1174066288 (var1937) void)
(declare-const null-var1847 var1847)
(declare-const null-String String)
(declare-const null-var3334 var3334)
(declare-const var3198 var1847) ; Statement: r1 := @this: cn.hutool.setting.GroupedMap 
(assert (not (= var3198 null-var1847)))
(declare-const var3674 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var3674 null-String)))
(define-const var3580 String (var3725_nullToEmpty/-379247643 (cast-from-String-to-String var3674))) ; Statement: $r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r10) 
(assert true)
(define-const var3646 String (trim/-847153721 var3580)) ; Statement: r11 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>() 
(define-const var1624 var1937 (readLock/-667851710 var3198)) ; Statement: $r2 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock> 
(assert true)
;(assert (lock/1801206281 var1624)) ; Statement: virtualinvoke $r2.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void lock()>() 

(declare-const var1624!1 var1937)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1287 var3334) ; Statement: $r8 := @caughtexception 
(assert (not (= var1287 null-var3334)))
(assert true) ; Non Conditional
(define-const var2789 var1937 (readLock/-667851710 var3198)) ; Statement: $r9 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock> 
(assert true)
;(assert (unlock/-1174066288 var2789)) ; Statement: virtualinvoke $r9.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void unlock()>() 

(declare-const var2789!1 var1937)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3725_nullToEmpty/-379247643=([java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), trim/-847153721=([java.lang.String], java.lang.String), readLock/-667851710=([cn.hutool.setting.GroupedMap], java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock), lock/1801206281=([java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock], void), unlock/-1174066288=([java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock], void)}
; {var1847=cn.hutool.setting.GroupedMap, var3198=r1, var3674=r10, var2857=null_type, var3725=cn.hutool.core.text.CharSequenceUtil, var3580=$r0, var3646=r11, var1937=java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock, var1624=$r2, var3334=java.lang.Throwable, var1287=$r8, var2789=$r9}
; {cn.hutool.setting.GroupedMap=var1847, r1=var3198, r10=var3674, null_type=var2857, cn.hutool.core.text.CharSequenceUtil=var3725, $r0=var3580, r11=var3646, java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock=var1937, $r2=var1624, java.lang.Throwable=var3334, $r8=var1287, $r9=var2789}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r1 := @this: cn.hutool.setting.GroupedMap;	r10 := @parameter0: java.lang.String;	$r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r10);	r11 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>();	$r2 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock>;	virtualinvoke $r2.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void lock()>();	$r8 := @caughtexception;	$r9 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock>;	virtualinvoke $r9.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void unlock()>();	throw $r8
;block_num 3