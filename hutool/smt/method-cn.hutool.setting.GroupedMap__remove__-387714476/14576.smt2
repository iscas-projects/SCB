(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2273 0)
(declare-sort var1801 0)
(declare-sort var394 0)
(declare-sort var2344 0)
(declare-sort var953 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var394_nullToEmpty/-379247643 (String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun writeLock/-667851710 (var2273) var2344)
(declare-fun lock/-1797420134 (var2344) void)
(declare-fun unlock/-2005377823 (var2344) void)
(declare-const null-var2273 var2273)
(declare-const null-String String)
(declare-const null-var953 var953)
(declare-const var2547 var2273) ; Statement: r1 := @this: cn.hutool.setting.GroupedMap 
(assert (not (= var2547 null-var2273)))
(declare-const var155 String) ; Statement: r11 := @parameter0: java.lang.String 
(assert (not (= var155 null-String)))
(declare-const var218 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var218 null-String)))
(define-const var1890 String (var394_nullToEmpty/-379247643 (cast-from-String-to-String var155))) ; Statement: $r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r11) 
(assert true)
(define-const var3197 String (trim/-847153721 var1890)) ; Statement: r12 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>() 
(define-const var3813 var2344 (writeLock/-667851710 var2547)) ; Statement: $r2 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock writeLock> 
(assert true)
;(assert (lock/-1797420134 var3813)) ; Statement: virtualinvoke $r2.<java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock: void lock()>() 

(declare-const var3813!1 var2344)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3258 var953) ; Statement: $r9 := @caughtexception 
(assert (not (= var3258 null-var953)))
(assert true) ; Non Conditional
(define-const var3053 var2344 (writeLock/-667851710 var2547)) ; Statement: $r10 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock writeLock> 
(assert true)
;(assert (unlock/-2005377823 var3053)) ; Statement: virtualinvoke $r10.<java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock: void unlock()>() 

(declare-const var3053!1 var2344)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var394_nullToEmpty/-379247643=([java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), trim/-847153721=([java.lang.String], java.lang.String), writeLock/-667851710=([cn.hutool.setting.GroupedMap], java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock), lock/-1797420134=([java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock], void), unlock/-2005377823=([java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock], void)}
; {var2273=cn.hutool.setting.GroupedMap, var2547=r1, var155=r11, var1801=null_type, var218=r5, var394=cn.hutool.core.text.CharSequenceUtil, var1890=$r0, var3197=r12, var2344=java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock, var3813=$r2, var953=java.lang.Throwable, var3258=$r9, var3053=$r10}
; {cn.hutool.setting.GroupedMap=var2273, r1=var2547, r11=var155, null_type=var1801, r5=var218, cn.hutool.core.text.CharSequenceUtil=var394, $r0=var1890, r12=var3197, java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock=var2344, $r2=var3813, java.lang.Throwable=var953, $r9=var3258, $r10=var3053}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r1 := @this: cn.hutool.setting.GroupedMap;	r11 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r11);	r12 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>();	$r2 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock writeLock>;	virtualinvoke $r2.<java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock: void lock()>();	$r9 := @caughtexception;	$r10 = r1.<cn.hutool.setting.GroupedMap: java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock writeLock>;	virtualinvoke $r10.<java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock: void unlock()>();	throw $r9
;block_num 3