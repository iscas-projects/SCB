(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var403 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const var1095 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1095 null-String)))
(assert true)
(define-const var377 Bool (startsWith/-1785782452 var1095 "\u0022")) ; Statement: $z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("\"") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r5.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("n") 
(assert (not (= (ite var377 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2026 Int (length/-134980193 var1095)) ; Statement: $i0 = virtualinvoke r5.<java.lang.String: int length()>() 
(define-const var2623 Int (- var2026 1)) ; Statement: $i1 = $i0 - 1 
(assert (and true (and (>= 1 0) (>= (str.len var1095) var2623) (>= var2623 1))))
(define-const var1095!1 String (substring/-1240304868 var1095 1 var2623)) ; Statement: r5 = virtualinvoke r5.<java.lang.String: java.lang.String substring(int,int)>(1, $i1) 
(assert true) ; Non Conditional
(assert true)
(define-const var2046 Bool (equalsIgnoreCase/-92311102 var1095!1 "n")) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("n") 
 ; Statement: if $z1 != 0 goto return 0 
(assert (not (= (ite var2046 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var1095=r5, var403=null_type, var377=$z0, var2026=$i0, var2623=$i1, var2046=$z1}
; {r5=var1095, null_type=var403, $z0=var377, $i0=var2026, $i1=var2623, $z1=var2046}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r5 := @parameter0: java.lang.String;	$z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("\"");	if $z0 == 0 goto $z1 = virtualinvoke r5.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("n");	$i0 = virtualinvoke r5.<java.lang.String: int length()>();	$i1 = $i0 - 1;	r5 = virtualinvoke r5.<java.lang.String: java.lang.String substring(int,int)>(1, $i1);	$z1 = virtualinvoke r5.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("n");	if $z1 != 0 goto return 0;	return 0
;block_num 4