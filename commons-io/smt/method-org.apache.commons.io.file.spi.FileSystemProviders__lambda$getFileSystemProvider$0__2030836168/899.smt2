(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1152 0)
(declare-sort var1005 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getScheme/1644666065 (var1005) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const null-var1005 var1005)
(declare-const var2718 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2718 null-String)))
(declare-const var2957 var1005) ; Statement: r0 := @parameter1: java.nio.file.spi.FileSystemProvider 
(assert (not (= var2957 null-var1005)))
(assert true)
(define-const var2175 String (getScheme/1644666065 var2957)) ; Statement: $r2 = virtualinvoke r0.<java.nio.file.spi.FileSystemProvider: java.lang.String getScheme()>() 
(assert true)
(define-const var251 Bool (equalsIgnoreCase/-92311102 var2175 var2718)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getScheme/1644666065=([java.nio.file.spi.FileSystemProvider], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2718=r1, var1152=null_type, var1005=java.nio.file.spi.FileSystemProvider, var2957=r0, var2175=$r2, var251=$z0}
; {r1=var2718, null_type=var1152, java.nio.file.spi.FileSystemProvider=var1005, r0=var2957, $r2=var2175, $z0=var251}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.nio.file.spi.FileSystemProvider;	$r2 = virtualinvoke r0.<java.nio.file.spi.FileSystemProvider: java.lang.String getScheme()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1);	return $z0
;block_num 1