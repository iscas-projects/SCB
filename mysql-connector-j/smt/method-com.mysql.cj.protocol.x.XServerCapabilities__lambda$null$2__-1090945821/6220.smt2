(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1457 0)
(declare-sort var2841 0)
(declare-sort var929 0)
(declare-sort var3452 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getScalar/-658448487 (var1457) var2841)
(declare-fun getVString/-1643292109 (var2841) var929)
(declare-fun getValue/-634796257 (var929) var3452)
(declare-fun toStringUtf8/-783695909 (var3452) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-const null-var1457 var1457)
(declare-const var1996 var1457) ; Statement: r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxDatatypes$Any 
(assert (not (= var1996 null-var1457)))
(assert true)
(define-const var2427 var2841 (getScalar/-658448487 var1996)) ; Statement: $r1 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Any: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar getScalar()>() 
(assert true)
(define-const var1963 var929 (getVString/-1643292109 var2427)) ; Statement: $r2 = virtualinvoke $r1.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$String getVString()>() 
(assert true)
(define-const var2118 var3452 (getValue/-634796257 var1963)) ; Statement: $r3 = virtualinvoke $r2.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$String: com.google.protobuf.ByteString getValue()>() 
(assert true)
(define-const var1231 String (toStringUtf8/-783695909 var2118)) ; Statement: $r4 = virtualinvoke $r3.<com.google.protobuf.ByteString: java.lang.String toStringUtf8()>() 
(assert true)
(define-const var3312 String (toLowerCase/415700667 var1231)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getScalar/-658448487=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Any], com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar), getVString/-1643292109=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar], com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$String), getValue/-634796257=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$String], com.google.protobuf.ByteString), toStringUtf8/-783695909=([com.google.protobuf.ByteString], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String)}
; {var1457=com.mysql.cj.x.protobuf.MysqlxDatatypes$Any, var1996=r0, var2841=com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar, var2427=$r1, var929=com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$String, var1963=$r2, var3452=com.google.protobuf.ByteString, var2118=$r3, var1231=$r4, var3312=$r5}
; {com.mysql.cj.x.protobuf.MysqlxDatatypes$Any=var1457, r0=var1996, com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar=var2841, $r1=var2427, com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$String=var929, $r2=var1963, com.google.protobuf.ByteString=var3452, $r3=var2118, $r4=var1231, $r5=var3312}
;seq <com.google.protobuf.ByteString: java.lang.String toStringUtf8()>;	<java.lang.String: java.lang.String toLowerCase()>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1}
;stmts r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxDatatypes$Any;	$r1 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Any: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar getScalar()>();	$r2 = virtualinvoke $r1.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$String getVString()>();	$r3 = virtualinvoke $r2.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$String: com.google.protobuf.ByteString getValue()>();	$r4 = virtualinvoke $r3.<com.google.protobuf.ByteString: java.lang.String toStringUtf8()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase()>();	return $r5
;block_num 1