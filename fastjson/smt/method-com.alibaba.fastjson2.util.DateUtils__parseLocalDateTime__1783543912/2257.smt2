(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2500 0)
(declare-sort var826 0)
(declare-sort var635 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var635_parseLocalDateTime/1482916590 (String Int Int) var826)
(declare-const null-String String)
(declare-const var783 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var783 null-String)))
 ; Statement: if r0 != null goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var783 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var2072 Int (length/-134980193 var783)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var597 var826 (var635_parseLocalDateTime/1482916590 var783 0 var2072)) ; Statement: $r1 = staticinvoke <com.alibaba.fastjson2.util.DateUtils: java.time.LocalDateTime parseLocalDateTime(java.lang.String,int,int)>(r0, 0, $i0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var635_parseLocalDateTime/1482916590=([java.lang.String, int, int], java.time.LocalDateTime)}
; {var783=r0, var2500=null_type, var2072=$i0, var826=java.time.LocalDateTime, var635=com.alibaba.fastjson2.util.DateUtils, var597=$r1}
; {r0=var783, null_type=var2500, $i0=var2072, java.time.LocalDateTime=var826, com.alibaba.fastjson2.util.DateUtils=var635, $r1=var597}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r1 = staticinvoke <com.alibaba.fastjson2.util.DateUtils: java.time.LocalDateTime parseLocalDateTime(java.lang.String,int,int)>(r0, 0, $i0);	return $r1
;block_num 2