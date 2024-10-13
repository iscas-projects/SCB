(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_toHexString/1865784998 (Int) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3769 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3769 null-Int)))
(declare-const var3621 String) ; Statement: r1 := @parameter1: java.lang.StringBuilder 
(assert (not (= var3621 null-String)))
(define-const var472 String (Int_toHexString/1865784998 var3769)) ; Statement: r0 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0) 
(assert true)
;(assert (append/-1166366385 var3621 117)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(117) 
(declare-const var3621!1 String)
(assert (str.prefixof var3621 var3621!1))
(define-const var2019 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1621 Int (length/-134980193 var472)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3469 Int (- 4 var1621)) ; Statement: $i2 = 4 - $i1 
 ; Statement: if i3 >= $i2 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (>= var2019 var3469)) ; Cond: i3 >= $i2 
(assert true)
;(assert (append/672562846 var3621!1 var472)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3621!2 String)
(assert (= var3621!2 (str.++ var3621!1 var472)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_toHexString/1865784998=([int], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3769=i0, var3621=r1, var472=r0, var2019=i3, var1621=$i1, var3469=$i2}
; {i0=var3769, r1=var3621, r0=var472, i3=var2019, $i1=var1621, $i2=var3469}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts i0 := @parameter0: int;	r1 := @parameter1: java.lang.StringBuilder;	r0 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(117);	i3 = 0;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = 4 - $i1;	if i3 >= $i2 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	return
;block_num 3