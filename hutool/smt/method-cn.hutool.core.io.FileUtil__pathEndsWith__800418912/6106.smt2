(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var923 0)
(declare-sort var2260 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPath/-1385219261 (var923) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var923 var923)
(declare-const null-String String)
(declare-const var232 var923) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var232 null-var923)))
(declare-const var3508 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3508 null-String)))
(assert true)
(define-const var2077 String (getPath/-1385219261 var232)) ; Statement: $r1 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var2051 String (toLowerCase/415700667 var2077)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var947 Bool (endsWith/985337093 var2051 var3508)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean endsWith(java.lang.String)>(r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getPath/-1385219261=([java.io.File], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var923=java.io.File, var232=r0, var3508=r2, var2260=null_type, var2077=$r1, var2051=$r3, var947=$z0}
; {java.io.File=var923, r0=var232, r2=var3508, null_type=var2260, $r1=var2077, $r3=var2051, $z0=var947}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.io.File;	r2 := @parameter1: java.lang.String;	$r1 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>();	$r3 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean endsWith(java.lang.String)>(r2);	return $z0
;block_num 1