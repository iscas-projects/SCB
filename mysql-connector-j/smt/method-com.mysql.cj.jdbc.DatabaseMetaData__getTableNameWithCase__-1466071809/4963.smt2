(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var645 0)
(declare-sort var3116 0)
(declare-sort var3857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun conn/1074764847 (var645) var3857)
(declare-fun var3857_lowerCaseTableNames/-363724214 (var3857) Bool)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-const null-var645 var645)
(declare-const null-String String)
(declare-const var3595 var645) ; Statement: r0 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var3595 null-var645)))
(declare-const var3289 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3289 null-String)))
(define-const var1103 var3857 (conn/1074764847 var3595)) ; Statement: $r1 = r0.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.jdbc.JdbcConnection conn> 
(define-const var2561 Bool (var3857_lowerCaseTableNames/-363724214 var1103)) ; Statement: $z0 = interfaceinvoke $r1.<com.mysql.cj.jdbc.JdbcConnection: boolean lowerCaseTableNames()>() 
 ; Statement: if $z0 == 0 goto $r3 = r2 
(assert (not (= (ite var2561 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1498 String (toLowerCase/415700667 var3289)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String toLowerCase()>() 
 ; Statement: goto [?= return $r3] 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {conn/1074764847=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.jdbc.JdbcConnection), var3857_lowerCaseTableNames/-363724214=([com.mysql.cj.jdbc.JdbcConnection], boolean), toLowerCase/415700667=([java.lang.String], java.lang.String)}
; {var645=com.mysql.cj.jdbc.DatabaseMetaData, var3595=r0, var3289=r2, var3116=null_type, var3857=com.mysql.cj.jdbc.JdbcConnection, var1103=$r1, var2561=$z0, var1498=$r3}
; {com.mysql.cj.jdbc.DatabaseMetaData=var645, r0=var3595, r2=var3289, null_type=var3116, com.mysql.cj.jdbc.JdbcConnection=var3857, $r1=var1103, $z0=var2561, $r3=var1498}
;seq <java.lang.String: java.lang.String toLowerCase()>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r2 := @parameter0: java.lang.String;	$r1 = r0.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.jdbc.JdbcConnection conn>;	$z0 = interfaceinvoke $r1.<com.mysql.cj.jdbc.JdbcConnection: boolean lowerCaseTableNames()>();	if $z0 == 0 goto $r3 = r2;	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String toLowerCase()>();	goto [?= return $r3];	return $r3
;block_num 3