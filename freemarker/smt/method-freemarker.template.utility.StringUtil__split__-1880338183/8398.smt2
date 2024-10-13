(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3600 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun arr-String-init () (Array Int String))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1821 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1821 null-String)))
(declare-const var2207 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2207 null-String)))
(declare-const var217 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var217 null-Bool)))
(assert true)
(define-const var3506 Int (length/-134980193 var2207)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if z0 == 0 goto $r5 = r1 
(assert (not (= (ite var217 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
(define-const var2732 String (toLowerCase/415700667 var1821)) ; Statement: $r5 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase()>() 
 ; Statement: goto [?= r2 = $r5] 
(assert true) ; Non Conditional
(define-const var2093 String var2732) ; Statement: r2 = $r5 
(assert true)
(define-const var3167 Int (length/-134980193 var1821)) ; Statement: $i3 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i0 != 0 goto (branch) 
(assert (not (not (= var3506 0)))) ; Negate: Cond: i0 != 0  
(define-const var3393 (Array Int String) arr-String-init) ; Statement: r6 = newarray (java.lang.String)[$i3] 
(define-const var2262 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= $i3 goto return r6 
(assert (>= var2262 var3167)) ; Cond: i4 >= $i3 
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), toLowerCase/415700667=([java.lang.String], java.lang.String), arr-String-init=([], java.lang.String[])}
; {var1821=r1, var3600=null_type, var2207=r0, var217=z0, var3506=i0, var2732=$r5, var2093=r2, var3167=$i3, var3393=r6, var2262=i4}
; {r1=var1821, null_type=var3600, r0=var2207, z0=var217, i0=var3506, $r5=var2732, r2=var2093, $i3=var3167, r6=var3393, i4=var2262}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String toLowerCase()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if z0 == 0 goto $r5 = r1;	$r5 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase()>();	goto [?= r2 = $r5];	r2 = $r5;	$i3 = virtualinvoke r1.<java.lang.String: int length()>();	if i0 != 0 goto (branch);	r6 = newarray (java.lang.String)[$i3];	i4 = 0;	if i4 >= $i3 goto return r6;	return r6
;block_num 6