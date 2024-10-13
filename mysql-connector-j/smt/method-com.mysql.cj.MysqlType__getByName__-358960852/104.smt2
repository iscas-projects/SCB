(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var384 0)
(declare-sort var826 0)
(declare-sort var3830 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var826_indexOfIgnoreCase/1193821831 (String String) Int)
(declare-const null-String String)
(declare-const var3830-DECIMAL_UNSIGNED var3830)
(declare-const var363 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var363 null-String)))
(assert true)
(define-const var1109 Int (indexOf/-1209756239 var363 "(")) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("(") 
(define-const var607 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i82 = (int) -1 
 ; Statement: if $i0 == $i82 goto r26 = r0 
(assert (= var1109 var607)) ; Cond: $i0 == $i82 
(define-const var2480 String var363) ; Statement: r26 = r0 
(assert true) ; Non Conditional
(define-const var2444 Int (var826_indexOfIgnoreCase/1193821831 var2480 "DECIMAL")) ; Statement: $i1 = staticinvoke <com.mysql.cj.util.StringUtils: int indexOfIgnoreCase(java.lang.String,java.lang.String)>(r26, "DECIMAL") 
(define-const var3518 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i84 = (int) -1 
 ; Statement: if $i1 != $i84 goto $i75 = staticinvoke <com.mysql.cj.util.StringUtils: int indexOfIgnoreCase(java.lang.String,java.lang.String)>(r0, "UNSIGNED") 
(assert (not (= var2444 var3518))) ; Cond: $i1 != $i84 
(define-const var189 Int (var826_indexOfIgnoreCase/1193821831 var363 "UNSIGNED")) ; Statement: $i75 = staticinvoke <com.mysql.cj.util.StringUtils: int indexOfIgnoreCase(java.lang.String,java.lang.String)>(r0, "UNSIGNED") 
(define-const var3931 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i92 = (int) -1 
 ; Statement: if $i75 == $i92 goto $r27 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL> 
(assert (not (= var189 var3931))) ; Negate: Cond: $i75 == $i92  
(define-const var2292 var3830 var3830-DECIMAL_UNSIGNED) ; Statement: $r27 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL_UNSIGNED> 
 ; Statement: goto [?= return $r27] 
(assert true) ; Non Conditional
 ; Statement: return $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var826_indexOfIgnoreCase/1193821831=([java.lang.String, java.lang.String], int)}
; {var363=r0, var384=null_type, var1109=$i0, var607=$i82, var2480=r26, var826=com.mysql.cj.util.StringUtils, var2444=$i1, var3518=$i84, var189=$i75, var3931=$i92, var3830=com.mysql.cj.MysqlType, var2292=$r27}
; {r0=var363, null_type=var384, $i0=var1109, $i82=var607, r26=var2480, com.mysql.cj.util.StringUtils=var826, $i1=var2444, $i84=var3518, $i75=var189, $i92=var3931, com.mysql.cj.MysqlType=var3830, $r27=var2292}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("(");	$i82 = (int) -1;	if $i0 == $i82 goto r26 = r0;	r26 = r0;	$i1 = staticinvoke <com.mysql.cj.util.StringUtils: int indexOfIgnoreCase(java.lang.String,java.lang.String)>(r26, "DECIMAL");	$i84 = (int) -1;	if $i1 != $i84 goto $i75 = staticinvoke <com.mysql.cj.util.StringUtils: int indexOfIgnoreCase(java.lang.String,java.lang.String)>(r0, "UNSIGNED");	$i75 = staticinvoke <com.mysql.cj.util.StringUtils: int indexOfIgnoreCase(java.lang.String,java.lang.String)>(r0, "UNSIGNED");	$i92 = (int) -1;	if $i75 == $i92 goto $r27 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;	$r27 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL_UNSIGNED>;	goto [?= return $r27];	return $r27
;block_num 6