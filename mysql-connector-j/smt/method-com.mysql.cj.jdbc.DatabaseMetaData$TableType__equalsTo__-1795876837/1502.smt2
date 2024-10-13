(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var677 0)
(declare-sort var1831 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-948363821 (var677) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var677 var677)
(declare-const null-String String)
(declare-const var1915 var677) ; Statement: r0 := @this: com.mysql.cj.jdbc.DatabaseMetaData$TableType 
(assert (not (= var1915 null-var677)))
(declare-const var3256 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3256 null-String)))
(define-const var2003 String (name/-948363821 var1915)) ; Statement: $r2 = r0.<com.mysql.cj.jdbc.DatabaseMetaData$TableType: java.lang.String name> 
(assert true)
(define-const var1745 Bool (equalsIgnoreCase/-92311102 var2003 var3256)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-948363821=([com.mysql.cj.jdbc.DatabaseMetaData$TableType], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var677=com.mysql.cj.jdbc.DatabaseMetaData$TableType, var1915=r0, var3256=r1, var1831=null_type, var2003=$r2, var1745=$z0}
; {com.mysql.cj.jdbc.DatabaseMetaData$TableType=var677, r0=var1915, r1=var3256, null_type=var1831, $r2=var2003, $z0=var1745}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.DatabaseMetaData$TableType;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.mysql.cj.jdbc.DatabaseMetaData$TableType: java.lang.String name>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1);	return $z0
;block_num 1