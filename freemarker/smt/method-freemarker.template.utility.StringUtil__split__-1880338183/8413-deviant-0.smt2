(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3960 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-String-init () (Array Int String))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var158 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var158 null-String)))
(declare-const var2879 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2879 null-String)))
(declare-const var798 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var798 null-Bool)))
(assert true)
(define-const var468 Int (length/-134980193 var2879)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if z0 == 0 goto $r5 = r1 
(assert (= (ite var798 1 0) 0)) ; Cond: z0 == 0 
(define-const var597 String var158) ; Statement: $r5 = r1 
(assert true) ; Non Conditional
(define-const var2273 String var597) ; Statement: r2 = $r5 
(assert true)
(define-const var1356 Int (length/-134980193 var158)) ; Statement: $i3 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i0 != 0 goto (branch) 
(assert (not (not (= var468 0)))) ; Negate: Cond: i0 != 0  
(define-const var1114 (Array Int String) arr-String-init) ; Statement: r6 = newarray (java.lang.String)[$i3] 
(define-const var1558 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= $i3 goto return r6 
(assert (not (>= var1558 var1356))) ; Negate: Cond: i4 >= $i3  
(assert (not (and true (and (> (str.len var158) var1558) (<= 0 var1558)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), arr-String-init=([], java.lang.String[]), charAt/698050440=([java.lang.String, int], char), String_valueOf/-371898945=([char], java.lang.String)}
; {var158=r1, var3960=null_type, var2879=r0, var798=z0, var468=i0, var597=$r5, var2273=r2, var1356=$i3, var1114=r6, var1558=i4, var167=$c2, var27=$r4}
; {r1=var158, null_type=var3960, r0=var2879, z0=var798, i0=var468, $r5=var597, r2=var2273, $i3=var1356, r6=var1114, i4=var1558, $c2=var167, $r4=var27}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if z0 == 0 goto $r5 = r1;	$r5 = r1;	r2 = $r5;	$i3 = virtualinvoke r1.<java.lang.String: int length()>();	if i0 != 0 goto (branch);	r6 = newarray (java.lang.String)[$i3];	i4 = 0;	if i4 >= $i3 goto return r6;	$c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4);	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c2);	r6[i4] = $r4;	i4 = i4 + 1;	goto [?= (branch)];	if i4 >= $i3 goto return r6;	return r6
;block_num 8