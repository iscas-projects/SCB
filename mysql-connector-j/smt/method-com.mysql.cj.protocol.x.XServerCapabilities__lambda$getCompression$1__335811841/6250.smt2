(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var535 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getKey/1437209339 (var535) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-const null-var535 var535)
(declare-const var2857 var535) ; Statement: r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxDatatypes$Object$ObjectField 
(assert (not (= var2857 null-var535)))
(assert true)
(define-const var1117 String (getKey/1437209339 var2857)) ; Statement: $r1 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Object$ObjectField: java.lang.String getKey()>() 
(assert true)
(define-const var1167 String (toLowerCase/415700667 var1117)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getKey/1437209339=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Object$ObjectField], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String)}
; {var535=com.mysql.cj.x.protobuf.MysqlxDatatypes$Object$ObjectField, var2857=r0, var1117=$r1, var1167=$r2}
; {com.mysql.cj.x.protobuf.MysqlxDatatypes$Object$ObjectField=var535, r0=var2857, $r1=var1117, $r2=var1167}
;seq <java.lang.String: java.lang.String toLowerCase()>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1}
;stmts r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxDatatypes$Object$ObjectField;	$r1 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Object$ObjectField: java.lang.String getKey()>();	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase()>();	return $r2
;block_num 1