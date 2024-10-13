(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1390 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1390 null-String)))
(declare-const var2334 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2334 null-Int)))
(declare-const var3144 (Array Int Int)) ; Statement: r3 := @parameter2: char[] 
(assert (not (= var3144 null-__Array__Int__Int__)))
(declare-const var1504 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1504 null-Int)))
(assert true)
(define-const var97 String (append/672562846 var1390 ":T:")) ; Statement: $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":T:") 
(declare-const var1390!1 String)
(assert (= var1390!1 (str.++ var1390 ":T:")))
(assert true)
(define-const var3176 String (append/-1001720160 var97 var2334)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var97!1 String)
(assert (str.prefixof var97 var97!1))
(assert true)
;(assert (append/672562846 var3176 ":")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3176!1 String)
(assert (= var3176!1 (str.++ var3176 ":")))
(assert true)
;(assert (append/-1748486345 var1390!1 var3144 var1504 var2334)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r3, i1, i0) 
(declare-const var1390!2 String)
(assert (str.prefixof var1390!1 var1390!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder)}
; {var1390=r0, var2334=i0, var3144=r3, var1504=i1, var97=$r1, var3176=$r2}
; {r0=var1390, i0=var2334, r3=var3144, i1=var1504, $r1=var97, $r2=var3176}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	r3 := @parameter2: char[];	i1 := @parameter3: int;	$r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":T:");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r3, i1, i0);	return
;block_num 1