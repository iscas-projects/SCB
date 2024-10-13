(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1748 0)
(declare-sort var260 0)
(declare-sort var787 0)
(declare-sort var3989 0)
(declare-sort var319 0)
(declare-sort var3092 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-var787-init () (Array Int var787))
(declare-fun cast-from-String-to-var787 (String) var787)
(declare-fun var3989_getString/1500902777 (String (Array Int var787)) String)
(declare-fun var3092_createSQLException/-1268047242 (String String var260) var319)
(declare-const null-String String)
(declare-const null-var260 var260)
(declare-const null-__Array__Int__var787__ (Array Int var787))
(declare-const var1731 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1731 null-String)))
(declare-const var2999 var260) ; Statement: r15 := @parameter1: com.mysql.cj.exceptions.ExceptionInterceptor 
(assert (not (= var2999 null-var260)))
(assert true)
(define-const var1664 Int (indexOf/-1209756239 var1731 "(")) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("(") 
(define-const var3927 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if i0 != $i10 goto i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(",") 
(assert (not (not (= var1664 var3927)))) ; Negate: Cond: i0 != $i10  
(define-const var734 (Array Int var787) arr-var787-init) ; Statement: $r25 = newarray (java.lang.Object)[1] 
(declare-const var734!1 (Array Int var787))
(assert (not (= var734!1 null-__Array__Int__var787__)))
(assert (= (select var734!1 0) (cast-from-String-to-var787 var1731))) ; Statement: $r25[0] = r0 
(define-const var3170 String (var3989_getString/1500902777 "EscapeProcessor.4" var734!1)) ; Statement: $r26 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("EscapeProcessor.4", $r25) 
(define-const var1150 var319 (var3092_createSQLException/-1268047242 var3170 "42000" var2999)) ; Statement: $r27 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r26, "42000", r15) 
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), arr-var787-init=([], java.lang.Object[]), cast-from-String-to-var787=([java.lang.String], java.lang.Object), var3989_getString/1500902777=([java.lang.String, java.lang.Object[]], java.lang.String), var3092_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var1731=r0, var1748=null_type, var260=com.mysql.cj.exceptions.ExceptionInterceptor, var2999=r15, var1664=i0, var3927=$i10, var787=java.lang.Object, var734=$r25, var3989=com.mysql.cj.Messages, var3170=$r26, var319=java.sql.SQLException, var3092=com.mysql.cj.jdbc.exceptions.SQLError, var1150=$r27}
; {r0=var1731, null_type=var1748, com.mysql.cj.exceptions.ExceptionInterceptor=var260, r15=var2999, i0=var1664, $i10=var3927, java.lang.Object=var787, $r25=var734, com.mysql.cj.Messages=var3989, $r26=var3170, java.sql.SQLException=var319, com.mysql.cj.jdbc.exceptions.SQLError=var3092, $r27=var1150}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r15 := @parameter1: com.mysql.cj.exceptions.ExceptionInterceptor;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("(");	$i10 = (int) -1;	if i0 != $i10 goto i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(",");	$r25 = newarray (java.lang.Object)[1];	$r25[0] = r0;	$r26 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("EscapeProcessor.4", $r25);	$r27 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r26, "42000", r15);	throw $r27
;block_num 2