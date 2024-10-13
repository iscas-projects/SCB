(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3457 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun Int_compare/-152067297 (Int Int) Int)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-String String)
(declare-const var1896 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1896 null-String)))
(declare-const var1861 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1861 null-String)))
(assert true)
(define-const var455 Int (length/-134980193 var1861)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var2887 Int (length/-134980193 var1896)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1821 Int (Int_compare/-152067297 var455 var2887)) ; Statement: i2 = staticinvoke <java.lang.Integer: int compare(int,int)>($i1, $i0) 
 ; Statement: if i2 == 0 goto $i3 = virtualinvoke r1.<java.lang.String: int compareTo(java.lang.String)>(r0) 
(assert (= var1821 0)) ; Cond: i2 == 0 
(assert true)
(define-const var3611 Int (compareTo/1411385946 var1896 var1861)) ; Statement: $i3 = virtualinvoke r1.<java.lang.String: int compareTo(java.lang.String)>(r0) 
(assert (let ((this<other (str.< var1896 var1861)) (this<=other (str.<= var1896 var1861)) (compareRes (compareTo/1411385946 var1896 var1861))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), Int_compare/-152067297=([int, int], int), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var1896=r1, var3457=null_type, var1861=r0, var455=$i1, var2887=$i0, var1821=i2, var3611=$i3}
; {r1=var1896, null_type=var3457, r0=var1861, $i1=var455, $i0=var2887, i2=var1821, $i3=var3611}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	i2 = staticinvoke <java.lang.Integer: int compare(int,int)>($i1, $i0);	if i2 == 0 goto $i3 = virtualinvoke r1.<java.lang.String: int compareTo(java.lang.String)>(r0);	$i3 = virtualinvoke r1.<java.lang.String: int compareTo(java.lang.String)>(r0);	return $i3
;block_num 2