(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2685 0)
(declare-sort var3095 0)
(declare-sort var2922 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1681388712 (var2922) String)
(declare-fun cast-from-var3095-to-var2922 (var3095) var2922)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun lastIndexOf/679652410 (String Int Int) Int)
(declare-const null-var2685 var2685)
(declare-const null-var3095 var3095)
(declare-const var1980 var2685) ; Statement: r2 := @this: org.apache.log4j.Hierarchy 
(assert (not (= var1980 null-var2685)))
(declare-const var1371 var3095) ; Statement: r0 := @parameter0: org.apache.log4j.Logger 
(assert (not (= var1371 null-var3095)))
(define-const var3895 String (name/1681388712 (cast-from-var3095-to-var2922 var1371))) ; Statement: r1 = r0.<org.apache.log4j.Logger: java.lang.String name> 
(assert true)
(define-const var3573 Int (length/-134980193 var3895)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3476 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var3693 Int (- var3573 1)) ; Statement: $i1 = i0 - 1 
(assert true)
(define-const var1391 Int (lastIndexOf/679652410 var3895 46 var3693)) ; Statement: i2 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int,int)>(46, $i1) 
(assert true) ; Non Conditional
 ; Statement: if i2 < 0 goto (branch) 
(assert (< var1391 0)) ; Cond: i2 < 0 
 ; Statement: if z2 != 0 goto return 
(assert (not (= (ite var3476 1 0) 0))) ; Cond: z2 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1681388712=([org.apache.log4j.Category], java.lang.String), cast-from-var3095-to-var2922=([org.apache.log4j.Logger], org.apache.log4j.Category), length/-134980193=([java.lang.String], int), lastIndexOf/679652410=([java.lang.String, int, int], int)}
; {var2685=org.apache.log4j.Hierarchy, var1980=r2, var3095=org.apache.log4j.Logger, var1371=r0, var2922=org.apache.log4j.Category, var3895=r1, var3573=i0, var3476=z2, var3693=$i1, var1391=i2}
; {org.apache.log4j.Hierarchy=var2685, r2=var1980, org.apache.log4j.Logger=var3095, r0=var1371, org.apache.log4j.Category=var2922, r1=var3895, i0=var3573, z2=var3476, $i1=var3693, i2=var1391}
;seq <java.lang.String: int length()>;	<java.lang.String: int lastIndexOf(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: int lastIndexOf(int,int)>": 1}
;stmts r2 := @this: org.apache.log4j.Hierarchy;	r0 := @parameter0: org.apache.log4j.Logger;	r1 = r0.<org.apache.log4j.Logger: java.lang.String name>;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	z2 = 0;	$i1 = i0 - 1;	i2 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int,int)>(46, $i1);	if i2 < 0 goto (branch);	if z2 != 0 goto return;	return
;block_num 4