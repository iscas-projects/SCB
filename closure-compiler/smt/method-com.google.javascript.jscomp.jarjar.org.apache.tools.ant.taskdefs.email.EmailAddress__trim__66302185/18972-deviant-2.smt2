(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3410 0)
(declare-sort var3621 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var3410 var3410)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1233 var3410) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress 
(assert (not (= var1233 null-var3410)))
(declare-const var701 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var701 null-String)))
(declare-const var3248 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3248 null-Bool)))
(define-const var1970 Int 0) ; Statement: i13 = 0 
(assert true)
(define-const var1605 Int (length/-134980193 var701)) ; Statement: i14 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
(define-const var3223 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var1052 Int (- var1605 1)) ; Statement: $i0 = i14 - 1 
(assert (and true (and (> (str.len var701) var1052) (<= 0 var1052))))
(define-const var1308 Int (charAt/698050440 var701 var1052)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i0) 
(define-const var1018 Int (cast-from-Int-to-Int var1308)) ; Statement: $i16 = (int) $c1 
 ; Statement: if $i16 == 41 goto z1 = 1 
(assert (= var1018 41)) ; Cond: $i16 == 41 
(define-const var3223!1 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(define-const var2457 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i22 = (int) -1 
(define-const var1605!1 Int (+ var1605 var2457)) ; Statement: i14 = i14 + $i22 
(assert true) ; Non Conditional
(assert (and true (and (> (str.len var701) var1970) (<= 0 var1970))))
(define-const var1413 Int (charAt/698050440 var701 var1970)) ; Statement: $c15 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i13) 
(define-const var1639 Int (cast-from-Int-to-Int var1413)) ; Statement: $i23 = (int) $c15 
 ; Statement: if $i23 == 40 goto z1 = 1 
(assert (= var1639 40)) ; Cond: $i23 == 40 
(define-const var3223!2 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(define-const var1970!1 Int (+ var1970 1)) ; Statement: i13 = i13 + 1 
(assert true) ; Non Conditional
 ; Statement: if z1 != 0 goto z1 = 0 
(assert (not (not (= (ite var3223!2 1 0) 0)))) ; Negate: Cond: z1 != 0  
(assert (not (and true (and (>= var1970!1 0) (>= (str.len var701) var1605!1) (>= var1605!1 var1970!1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3410=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress, var1233=r2, var701=r0, var3621=null_type, var3248=z0, var1970=i13, var1605=i14, var3223=z1, var1052=$i0, var1308=$c1, var1018=$i16, var2457=$i22, var1413=$c15, var1639=$i23, var3316=$r1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress=var3410, r2=var1233, r0=var701, null_type=var3621, z0=var3248, i13=var1970, i14=var1605, z1=var3223, $i0=var1052, $c1=var1308, $i16=var1018, $i22=var2457, $c15=var1413, $i23=var1639, $r1=var3316}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress;	r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	i13 = 0;	i14 = virtualinvoke r0.<java.lang.String: int length()>();	z1 = 0;	$i0 = i14 - 1;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i0);	$i16 = (int) $c1;	if $i16 == 41 goto z1 = 1;	z1 = 1;	$i22 = (int) -1;	i14 = i14 + $i22;	$c15 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i13);	$i23 = (int) $c15;	if $i23 == 40 goto z1 = 1;	z1 = 1;	i13 = i13 + 1;	if z1 != 0 goto z1 = 0;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i13, i14);	return $r1
;block_num 7