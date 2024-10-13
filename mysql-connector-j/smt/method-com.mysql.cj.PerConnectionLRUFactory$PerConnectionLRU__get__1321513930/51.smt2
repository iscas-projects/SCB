(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var737 0)
(declare-sort var2616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun cacheSqlLimit/513346448 (var737) Int)
(declare-const null-var737 var737)
(declare-const null-String String)
(declare-const var3131 var737) ; Statement: r1 := @this: com.mysql.cj.PerConnectionLRUFactory$PerConnectionLRU 
(assert (not (= var3131 null-var737)))
(declare-const var3645 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3645 null-String)))
 ; Statement: if r0 == null goto return null 
(assert (not (= var3645 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var3611 Int (length/-134980193 var3645)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var960 Int (cacheSqlLimit/513346448 var3131)) ; Statement: $i0 = r1.<com.mysql.cj.PerConnectionLRUFactory$PerConnectionLRU: int cacheSqlLimit> 
 ; Statement: if $i1 <= $i0 goto $r2 = r1.<com.mysql.cj.PerConnectionLRUFactory$PerConnectionLRU: java.util.concurrent.locks.Lock lock> 
(assert (not (<= var3611 var960))) ; Negate: Cond: $i1 <= $i0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cacheSqlLimit/513346448=([com.mysql.cj.PerConnectionLRUFactory$PerConnectionLRU], int)}
; {var737=com.mysql.cj.PerConnectionLRUFactory$PerConnectionLRU, var3131=r1, var3645=r0, var2616=null_type, var3611=$i1, var960=$i0}
; {com.mysql.cj.PerConnectionLRUFactory$PerConnectionLRU=var737, r1=var3131, r0=var3645, null_type=var2616, $i1=var3611, $i0=var960}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.mysql.cj.PerConnectionLRUFactory$PerConnectionLRU;	r0 := @parameter0: java.lang.String;	if r0 == null goto return null;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = r1.<com.mysql.cj.PerConnectionLRUFactory$PerConnectionLRU: int cacheSqlLimit>;	if $i1 <= $i0 goto $r2 = r1.<com.mysql.cj.PerConnectionLRUFactory$PerConnectionLRU: java.util.concurrent.locks.Lock lock>;	return null
;block_num 3