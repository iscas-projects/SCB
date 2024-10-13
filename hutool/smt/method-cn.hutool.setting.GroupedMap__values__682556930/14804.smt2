(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3223 0)
(declare-sort var871 0)
(declare-sort var3812 0)
(declare-sort var2218 0)
(declare-sort var3063 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3812_nullToEmpty/-379247643 (String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun readLock/-667851710 (var3223) var2218)
(declare-fun lock/1801206281 (var2218) void)
(declare-fun unlock/-1174066288 (var2218) void)
(declare-const null-var3223 var3223)
(declare-const null-String String)
(declare-const null-var3063 var3063)
(declare-const var1474 var3223) ; Statement: r1 := @this: cn.hutool.setting.GroupedMap 
(assert (not (= var1474 null-var3223)))
(declare-const var1596 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var1596 null-String)))
(define-const var2660 String (var3812_nullToEmpty/-379247643 (cast-from-String-to-String var1596))) ; Statement: $r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r10) 
(assert true)
(define-const var514 String (trim/-847153721 var2660)) ; Statement: r11 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>() 
(define-const var3180 var2218 (readLock/-667851710 var1474)) ; Statement: $r2 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock> 
(assert true)
;(assert (lock/1801206281 var3180)) ; Statement: virtualinvoke $r2.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void lock()>() 

(declare-const var3180!1 var2218)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var494 var3063) ; Statement: $r8 := @caughtexception 
(assert (not (= var494 null-var3063)))
(assert true) ; Non Conditional
(define-const var2258 var2218 (readLock/-667851710 var1474)) ; Statement: $r9 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock> 
(assert true)
;(assert (unlock/-1174066288 var2258)) ; Statement: virtualinvoke $r9.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void unlock()>() 

(declare-const var2258!1 var2218)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3812_nullToEmpty/-379247643=([java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), trim/-847153721=([java.lang.String], java.lang.String), readLock/-667851710=([cn.hutool.setting.GroupedMap], java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock), lock/1801206281=([java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock], void), unlock/-1174066288=([java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock], void)}
; {var3223=cn.hutool.setting.GroupedMap, var1474=r1, var1596=r10, var871=null_type, var3812=cn.hutool.core.text.CharSequenceUtil, var2660=$r0, var514=r11, var2218=java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock, var3180=$r2, var3063=java.lang.Throwable, var494=$r8, var2258=$r9}
; {cn.hutool.setting.GroupedMap=var3223, r1=var1474, r10=var1596, null_type=var871, cn.hutool.core.text.CharSequenceUtil=var3812, $r0=var2660, r11=var514, java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock=var2218, $r2=var3180, java.lang.Throwable=var3063, $r8=var494, $r9=var2258}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r1 := @this: cn.hutool.setting.GroupedMap;	r10 := @parameter0: java.lang.String;	$r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r10);	r11 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>();	$r2 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock>;	virtualinvoke $r2.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void lock()>();	$r8 := @caughtexception;	$r9 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock>;	virtualinvoke $r9.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void unlock()>();	throw $r8
;block_num 3