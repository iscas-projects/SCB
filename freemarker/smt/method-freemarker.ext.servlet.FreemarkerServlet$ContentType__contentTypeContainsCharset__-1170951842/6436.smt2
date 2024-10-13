(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2255 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var671 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var671 null-String)))
(assert true)
(define-const var3919 String (toLowerCase/415700667 var671)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var3656 Int (indexOf/-1209756239 var3919 "charset=")) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int indexOf(java.lang.String)>("charset=") 
(define-const var1539 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i0 == $i4 goto return 0 
(assert (= var3656 var1539)) ; Cond: i0 == $i4 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/415700667=([java.lang.String], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var671=r0, var2255=null_type, var3919=$r1, var3656=i0, var1539=$i4}
; {r0=var671, null_type=var2255, $r1=var3919, i0=var3656, $i4=var1539}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase()>();	i0 = virtualinvoke $r1.<java.lang.String: int indexOf(java.lang.String)>("charset=");	$i4 = (int) -1;	if i0 == $i4 goto return 0;	return 0
;block_num 2