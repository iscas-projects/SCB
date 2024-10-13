(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3162 0)
(declare-sort var240 0)
(declare-sort var3592 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var240_indexOfIgnoreCase/1193821831 (String String) Int)
(declare-const null-String String)
(declare-const var3592-DECIMAL var3592)
(declare-const var2732 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2732 null-String)))
(assert true)
(define-const var2226 Int (indexOf/-1209756239 var2732 "(")) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("(") 
(define-const var116 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i82 = (int) -1 
 ; Statement: if $i0 == $i82 goto r26 = r0 
(assert (= var2226 var116)) ; Cond: $i0 == $i82 
(define-const var926 String var2732) ; Statement: r26 = r0 
(assert true) ; Non Conditional
(define-const var1742 Int (var240_indexOfIgnoreCase/1193821831 var926 "DECIMAL")) ; Statement: $i1 = staticinvoke <com.mysql.cj.util.StringUtils: int indexOfIgnoreCase(java.lang.String,java.lang.String)>(r26, "DECIMAL") 
(define-const var2507 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i84 = (int) -1 
 ; Statement: if $i1 != $i84 goto $i75 = staticinvoke <com.mysql.cj.util.StringUtils: int indexOfIgnoreCase(java.lang.String,java.lang.String)>(r0, "UNSIGNED") 
(assert (not (= var1742 var2507))) ; Cond: $i1 != $i84 
(define-const var2679 Int (var240_indexOfIgnoreCase/1193821831 var2732 "UNSIGNED")) ; Statement: $i75 = staticinvoke <com.mysql.cj.util.StringUtils: int indexOfIgnoreCase(java.lang.String,java.lang.String)>(r0, "UNSIGNED") 
(define-const var3288 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i92 = (int) -1 
 ; Statement: if $i75 == $i92 goto $r27 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL> 
(assert (= var2679 var3288)) ; Cond: $i75 == $i92 
(define-const var2592 var3592 var3592-DECIMAL) ; Statement: $r27 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL> 
(assert true) ; Non Conditional
 ; Statement: return $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var240_indexOfIgnoreCase/1193821831=([java.lang.String, java.lang.String], int)}
; {var2732=r0, var3162=null_type, var2226=$i0, var116=$i82, var926=r26, var240=com.mysql.cj.util.StringUtils, var1742=$i1, var2507=$i84, var2679=$i75, var3288=$i92, var3592=com.mysql.cj.MysqlType, var2592=$r27}
; {r0=var2732, null_type=var3162, $i0=var2226, $i82=var116, r26=var926, com.mysql.cj.util.StringUtils=var240, $i1=var1742, $i84=var2507, $i75=var2679, $i92=var3288, com.mysql.cj.MysqlType=var3592, $r27=var2592}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("(");	$i82 = (int) -1;	if $i0 == $i82 goto r26 = r0;	r26 = r0;	$i1 = staticinvoke <com.mysql.cj.util.StringUtils: int indexOfIgnoreCase(java.lang.String,java.lang.String)>(r26, "DECIMAL");	$i84 = (int) -1;	if $i1 != $i84 goto $i75 = staticinvoke <com.mysql.cj.util.StringUtils: int indexOfIgnoreCase(java.lang.String,java.lang.String)>(r0, "UNSIGNED");	$i75 = staticinvoke <com.mysql.cj.util.StringUtils: int indexOfIgnoreCase(java.lang.String,java.lang.String)>(r0, "UNSIGNED");	$i92 = (int) -1;	if $i75 == $i92 goto $r27 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;	$r27 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;	return $r27
;block_num 6