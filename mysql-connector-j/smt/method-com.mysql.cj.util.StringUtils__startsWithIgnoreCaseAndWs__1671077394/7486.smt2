(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var124 0)
(declare-sort var3890 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3890_regionMatchesIgnoreCase/1635927219 (String Int String) Bool)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3945 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3945 null-String)))
(declare-const var1724 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1724 null-String)))
(declare-const var3762 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var3762 null-Int)))
 ; Statement: if r0 != null goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var3945 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var398 Int (length/-134980193 var3945)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i0 goto $z0 = staticinvoke <com.mysql.cj.util.StringUtils: boolean regionMatchesIgnoreCase(java.lang.String,int,java.lang.String)>(r0, i2, r1) 
(assert (>= var3762 var398)) ; Cond: i2 >= $i0 
(define-const var839 Bool (var3890_regionMatchesIgnoreCase/1635927219 var3945 var3762 var1724)) ; Statement: $z0 = staticinvoke <com.mysql.cj.util.StringUtils: boolean regionMatchesIgnoreCase(java.lang.String,int,java.lang.String)>(r0, i2, r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var3890_regionMatchesIgnoreCase/1635927219=([java.lang.String, int, java.lang.String], boolean)}
; {var3945=r0, var124=null_type, var1724=r1, var3762=i2, var398=$i0, var3890=com.mysql.cj.util.StringUtils, var839=$z0}
; {r0=var3945, null_type=var124, r1=var1724, i2=var3762, $i0=var398, com.mysql.cj.util.StringUtils=var3890, $z0=var839}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	i2 := @parameter2: int;	if r0 != null goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i2 >= $i0 goto $z0 = staticinvoke <com.mysql.cj.util.StringUtils: boolean regionMatchesIgnoreCase(java.lang.String,int,java.lang.String)>(r0, i2, r1);	$z0 = staticinvoke <com.mysql.cj.util.StringUtils: boolean regionMatchesIgnoreCase(java.lang.String,int,java.lang.String)>(r0, i2, r1);	return $z0
;block_num 3