(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1429 0)
(declare-sort var2501 0)
(declare-sort var2295 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var2501_indexOfIgnoreCase/1193821831 (String String) Int)
(declare-const null-String String)
(declare-const var2295-DECIMAL var2295)
(declare-const var2874 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2874 null-String)))
(assert true)
(define-const var3922 Int (indexOf/-1209756239 var2874 "(")) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("(") 
(define-const var3711 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i82 = (int) -1 
 ; Statement: if $i0 == $i82 goto r26 = r0 
(assert (not (= var3922 var3711))) ; Negate: Cond: $i0 == $i82  
(assert true)
(define-const var2848 Int (indexOf/-1209756239 var2874 "(")) ; Statement: $i74 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("(") 
(assert (not (and true (and (>= 0 0) (>= (str.len var2874) var2848) (>= var2848 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var2501_indexOfIgnoreCase/1193821831=([java.lang.String, java.lang.String], int)}
; {var2874=r0, var1429=null_type, var3922=$i0, var3711=$i82, var2848=$i74, var819=$r25, var1601=r26, var2501=com.mysql.cj.util.StringUtils, var1218=$i1, var1897=$i84, var1835=$i75, var1849=$i92, var2295=com.mysql.cj.MysqlType, var3691=$r27}
; {r0=var2874, null_type=var1429, $i0=var3922, $i82=var3711, $i74=var2848, $r25=var819, r26=var1601, com.mysql.cj.util.StringUtils=var2501, $i1=var1218, $i84=var1897, $i75=var1835, $i92=var1849, com.mysql.cj.MysqlType=var2295, $r27=var3691}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("(");	$i82 = (int) -1;	if $i0 == $i82 goto r26 = r0;	$i74 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("(");	$r25 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i74);	r26 = virtualinvoke $r25.<java.lang.String: java.lang.String trim()>();	goto [?= $i1 = staticinvoke <com.mysql.cj.util.StringUtils: int indexOfIgnoreCase(java.lang.String,java.lang.String)>(r26, "DECIMAL")];	$i1 = staticinvoke <com.mysql.cj.util.StringUtils: int indexOfIgnoreCase(java.lang.String,java.lang.String)>(r26, "DECIMAL");	$i84 = (int) -1;	if $i1 != $i84 goto $i75 = staticinvoke <com.mysql.cj.util.StringUtils: int indexOfIgnoreCase(java.lang.String,java.lang.String)>(r0, "UNSIGNED");	$i75 = staticinvoke <com.mysql.cj.util.StringUtils: int indexOfIgnoreCase(java.lang.String,java.lang.String)>(r0, "UNSIGNED");	$i92 = (int) -1;	if $i75 == $i92 goto $r27 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;	$r27 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;	return $r27
;block_num 6