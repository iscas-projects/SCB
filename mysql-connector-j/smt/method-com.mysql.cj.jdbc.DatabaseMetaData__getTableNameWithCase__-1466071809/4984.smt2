(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3321 0)
(declare-sort var2085 0)
(declare-sort var1744 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun conn/1074764847 (var3321) var1744)
(declare-fun var1744_lowerCaseTableNames/-363724214 (var1744) Bool)
(declare-const null-var3321 var3321)
(declare-const null-String String)
(declare-const var572 var3321) ; Statement: r0 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var572 null-var3321)))
(declare-const var2823 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2823 null-String)))
(define-const var2077 var1744 (conn/1074764847 var572)) ; Statement: $r1 = r0.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.jdbc.JdbcConnection conn> 
(define-const var3256 Bool (var1744_lowerCaseTableNames/-363724214 var2077)) ; Statement: $z0 = interfaceinvoke $r1.<com.mysql.cj.jdbc.JdbcConnection: boolean lowerCaseTableNames()>() 
 ; Statement: if $z0 == 0 goto $r3 = r2 
(assert (= (ite var3256 1 0) 0)) ; Cond: $z0 == 0 
(define-const var506 String var2823) ; Statement: $r3 = r2 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {conn/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.jdbc.JdbcConnection), var1744_lowerCaseTableNames/-363724214=([com.mysql.cj.jdbc.JdbcConnection], boolean)}
; {var3321=com.mysql.cj.jdbc.DatabaseMetaData, var572=r0, var2823=r2, var2085=null_type, var1744=com.mysql.cj.jdbc.JdbcConnection, var2077=$r1, var3256=$z0, var506=$r3}
; {com.mysql.cj.jdbc.DatabaseMetaData=var3321, r0=var572, r2=var2823, null_type=var2085, com.mysql.cj.jdbc.JdbcConnection=var1744, $r1=var2077, $z0=var3256, $r3=var506}
;seq 
;cnt {}
;stmts r0 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r2 := @parameter0: java.lang.String;	$r1 = r0.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.jdbc.JdbcConnection conn>;	$z0 = interfaceinvoke $r1.<com.mysql.cj.jdbc.JdbcConnection: boolean lowerCaseTableNames()>();	if $z0 == 0 goto $r3 = r2;	$r3 = r2;	return $r3
;block_num 3