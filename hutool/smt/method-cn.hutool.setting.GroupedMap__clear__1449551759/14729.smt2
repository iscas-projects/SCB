(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3862 0)
(declare-sort var3600 0)
(declare-sort var3477 0)
(declare-sort var3474 0)
(declare-sort var3995 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3477_nullToEmpty/-379247643 (String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun writeLock/-667851710 (var3862) var3474)
(declare-fun lock/-1797420134 (var3474) void)
(declare-fun unlock/-2005377823 (var3474) void)
(declare-const null-var3862 var3862)
(declare-const null-String String)
(declare-const null-var3995 var3995)
(declare-const var3234 var3862) ; Statement: r1 := @this: cn.hutool.setting.GroupedMap 
(assert (not (= var3234 null-var3862)))
(declare-const var2992 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var2992 null-String)))
(define-const var225 String (var3477_nullToEmpty/-379247643 (cast-from-String-to-String var2992))) ; Statement: $r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r7) 
(assert true)
(define-const var2905 String (trim/-847153721 var225)) ; Statement: r8 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>() 
(define-const var547 var3474 (writeLock/-667851710 var3234)) ; Statement: $r2 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock writeLock> 
(assert true)
;(assert (lock/-1797420134 var547)) ; Statement: virtualinvoke $r2.<java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock: void lock()>() 

(declare-const var547!1 var3474)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2234 var3995) ; Statement: $r5 := @caughtexception 
(assert (not (= var2234 null-var3995)))
(define-const var1620 var3474 (writeLock/-667851710 var3234)) ; Statement: $r6 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock writeLock> 
(assert true)
;(assert (unlock/-2005377823 var1620)) ; Statement: virtualinvoke $r6.<java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock: void unlock()>() 

(declare-const var1620!1 var3474)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3477_nullToEmpty/-379247643=([java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), trim/-847153721=([java.lang.String], java.lang.String), writeLock/-667851710=([cn.hutool.setting.GroupedMap], java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock), lock/-1797420134=([java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock], void), unlock/-2005377823=([java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock], void)}
; {var3862=cn.hutool.setting.GroupedMap, var3234=r1, var2992=r7, var3600=null_type, var3477=cn.hutool.core.text.CharSequenceUtil, var225=$r0, var2905=r8, var3474=java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock, var547=$r2, var3995=java.lang.Throwable, var2234=$r5, var1620=$r6}
; {cn.hutool.setting.GroupedMap=var3862, r1=var3234, r7=var2992, null_type=var3600, cn.hutool.core.text.CharSequenceUtil=var3477, $r0=var225, r8=var2905, java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock=var3474, $r2=var547, java.lang.Throwable=var3995, $r5=var2234, $r6=var1620}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r1 := @this: cn.hutool.setting.GroupedMap;	r7 := @parameter0: java.lang.String;	$r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r7);	r8 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>();	$r2 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock writeLock>;	virtualinvoke $r2.<java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock: void lock()>();	$r5 := @caughtexception;	$r6 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock writeLock>;	virtualinvoke $r6.<java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock: void unlock()>();	throw $r5
;block_num 2