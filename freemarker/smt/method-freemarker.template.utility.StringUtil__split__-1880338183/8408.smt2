(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2540 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun arr-String-init () (Array Int String))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1182 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1182 null-String)))
(declare-const var333 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var333 null-String)))
(declare-const var3714 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3714 null-Bool)))
(assert true)
(define-const var3092 Int (length/-134980193 var333)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if z0 == 0 goto $r5 = r1 
(assert (not (= (ite var3714 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
(define-const var2860 String (toLowerCase/415700667 var1182)) ; Statement: $r5 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase()>() 
 ; Statement: goto [?= r2 = $r5] 
(assert true) ; Non Conditional
(define-const var1349 String var2860) ; Statement: r2 = $r5 
(assert true)
(define-const var1041 Int (length/-134980193 var1182)) ; Statement: $i3 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i0 != 0 goto (branch) 
(assert (not (not (= var3092 0)))) ; Negate: Cond: i0 != 0  
(define-const var592 (Array Int String) arr-String-init) ; Statement: r6 = newarray (java.lang.String)[$i3] 
(define-const var3306 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= $i3 goto return r6 
(assert (not (>= var3306 var1041))) ; Negate: Cond: i4 >= $i3  
(assert (and true (and (> (str.len var1182) var3306) (<= 0 var3306))))
(define-const var208 Int (charAt/698050440 var1182 var3306)) ; Statement: $c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4) 
(define-const var3316 String (String_valueOf/-371898945 var208)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c2) 
(declare-const var592!1 (Array Int String))
(assert (not (= var592!1 null-__Array__Int__String__)))
(assert (= (select var592!1 var3306) var3316)) ; Statement: r6[i4] = $r4 
(define-const var3306!1 Int (+ var3306 1)) ; Statement: i4 = i4 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i4 >= $i3 goto return r6 
(assert (>= var3306!1 var1041)) ; Cond: i4 >= $i3 
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), toLowerCase/415700667=([java.lang.String], java.lang.String), arr-String-init=([], java.lang.String[]), charAt/698050440=([java.lang.String, int], char), String_valueOf/-371898945=([char], java.lang.String)}
; {var1182=r1, var2540=null_type, var333=r0, var3714=z0, var3092=i0, var2860=$r5, var1349=r2, var1041=$i3, var592=r6, var3306=i4, var208=$c2, var3316=$r4}
; {r1=var1182, null_type=var2540, r0=var333, z0=var3714, i0=var3092, $r5=var2860, r2=var1349, $i3=var1041, r6=var592, i4=var3306, $c2=var208, $r4=var3316}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if z0 == 0 goto $r5 = r1;	$r5 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase()>();	goto [?= r2 = $r5];	r2 = $r5;	$i3 = virtualinvoke r1.<java.lang.String: int length()>();	if i0 != 0 goto (branch);	r6 = newarray (java.lang.String)[$i3];	i4 = 0;	if i4 >= $i3 goto return r6;	$c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4);	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c2);	r6[i4] = $r4;	i4 = i4 + 1;	goto [?= (branch)];	if i4 >= $i3 goto return r6;	return r6
;block_num 8