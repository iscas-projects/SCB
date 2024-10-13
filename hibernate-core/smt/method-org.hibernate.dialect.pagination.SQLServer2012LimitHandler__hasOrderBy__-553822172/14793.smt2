(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2366 0)
(declare-sort var107 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2366 var2366)
(declare-const null-String String)
(declare-const var994 var2366) ; Statement: r2 := @this: org.hibernate.dialect.pagination.SQLServer2012LimitHandler 
(assert (not (= var994 null-var2366)))
(declare-const var3638 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3638 null-String)))
(define-const var397 Int 0) ; Statement: i2 = 0 
(assert true)
(define-const var718 String (toLowerCase/415700667 var3638)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var2100 Int (length/-134980193 var718)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var203 Int (- var2100 1)) ; Statement: i3 = $i0 - 1 
(assert true) ; Non Conditional
 ; Statement: if i3 < 0 goto return 0 
(assert (< var203 0)) ; Cond: i3 < 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/415700667=([java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var2366=org.hibernate.dialect.pagination.SQLServer2012LimitHandler, var994=r2, var3638=r0, var107=null_type, var397=i2, var718=r1, var2100=$i0, var203=i3}
; {org.hibernate.dialect.pagination.SQLServer2012LimitHandler=var2366, r2=var994, r0=var3638, null_type=var107, i2=var397, r1=var718, $i0=var2100, i3=var203}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.String: int length()>": 1}
;stmts r2 := @this: org.hibernate.dialect.pagination.SQLServer2012LimitHandler;	r0 := @parameter0: java.lang.String;	i2 = 0;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	i3 = $i0 - 1;	if i3 < 0 goto return 0;	return 0
;block_num 3