(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var359 0)
(declare-sort var3539 0)
(declare-sort var89 0)
(declare-sort var2180 0)
(declare-sort var3487 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var89_nullToEmpty/-379247643 (String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun readLock/-667851710 (var359) var2180)
(declare-fun lock/1801206281 (var2180) void)
(declare-fun unlock/-1174066288 (var2180) void)
(declare-const null-var359 var359)
(declare-const null-String String)
(declare-const null-var3487 var3487)
(declare-const var837 var359) ; Statement: r1 := @this: cn.hutool.setting.GroupedMap 
(assert (not (= var837 null-var359)))
(declare-const var3000 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var3000 null-String)))
(declare-const var2742 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2742 null-String)))
(define-const var605 String (var89_nullToEmpty/-379247643 (cast-from-String-to-String var3000))) ; Statement: $r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r9) 
(assert true)
(define-const var2876 String (trim/-847153721 var605)) ; Statement: r10 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>() 
(define-const var1773 var2180 (readLock/-667851710 var837)) ; Statement: $r2 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock> 
(assert true)
;(assert (lock/1801206281 var1773)) ; Statement: virtualinvoke $r2.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void lock()>() 

(declare-const var1773!1 var2180)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2101 var3487) ; Statement: $r7 := @caughtexception 
(assert (not (= var2101 null-var3487)))
(assert true) ; Non Conditional
(define-const var1110 var2180 (readLock/-667851710 var837)) ; Statement: $r8 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock> 
(assert true)
;(assert (unlock/-1174066288 var1110)) ; Statement: virtualinvoke $r8.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void unlock()>() 

(declare-const var1110!1 var2180)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var89_nullToEmpty/-379247643=([java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), trim/-847153721=([java.lang.String], java.lang.String), readLock/-667851710=([cn.hutool.setting.GroupedMap], java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock), lock/1801206281=([java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock], void), unlock/-1174066288=([java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock], void)}
; {var359=cn.hutool.setting.GroupedMap, var837=r1, var3000=r9, var3539=null_type, var2742=r5, var89=cn.hutool.core.text.CharSequenceUtil, var605=$r0, var2876=r10, var2180=java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock, var1773=$r2, var3487=java.lang.Throwable, var2101=$r7, var1110=$r8}
; {cn.hutool.setting.GroupedMap=var359, r1=var837, r9=var3000, null_type=var3539, r5=var2742, cn.hutool.core.text.CharSequenceUtil=var89, $r0=var605, r10=var2876, java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock=var2180, $r2=var1773, java.lang.Throwable=var3487, $r7=var2101, $r8=var1110}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r1 := @this: cn.hutool.setting.GroupedMap;	r9 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r9);	r10 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>();	$r2 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock>;	virtualinvoke $r2.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void lock()>();	$r7 := @caughtexception;	$r8 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock readLock>;	virtualinvoke $r8.<java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock: void unlock()>();	throw $r7
;block_num 3