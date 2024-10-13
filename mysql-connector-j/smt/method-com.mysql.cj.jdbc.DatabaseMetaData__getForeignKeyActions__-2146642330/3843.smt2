(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3421 0)
(declare-sort var264 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3421 var3421)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2215 var3421) ; Statement: r6 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var2215 null-var3421)))
(declare-const var812 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var812 null-String)))
(define-const var1907 (Array Int Int) arr-Int-init) ; Statement: $r0 = newarray (int)[2] 
(declare-const var1907!1 (Array Int Int))
(assert (not (= var1907!1 null-__Array__Int__Int__)))
(assert (= (select var1907!1 0) 1)) ; Statement: $r0[0] = 1 
(declare-const var1907!2 (Array Int Int))
(assert (not (= var1907!2 null-__Array__Int__Int__)))
(assert (= (select var1907!2 1) 1)) ; Statement: $r0[1] = 1 
(assert true)
(define-const var2179 Int (lastIndexOf/-618837785 var812 ")")) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(java.lang.String)>(")") 
(assert true)
(define-const var1124 Int (length/-134980193 var812)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2032 Int (- var1124 1)) ; Statement: $i2 = $i1 - 1 
 ; Statement: if i0 == $i2 goto return $r0 
(assert (= var2179 var2032)) ; Cond: i0 == $i2 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], int[]), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), length/-134980193=([java.lang.String], int)}
; {var3421=com.mysql.cj.jdbc.DatabaseMetaData, var2215=r6, var812=r1, var264=null_type, var1907=$r0, var2179=i0, var1124=$i1, var2032=$i2}
; {com.mysql.cj.jdbc.DatabaseMetaData=var3421, r6=var2215, r1=var812, null_type=var264, $r0=var1907, i0=var2179, $i1=var1124, $i2=var2032}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: int length()>": 1}
;stmts r6 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r1 := @parameter0: java.lang.String;	$r0 = newarray (int)[2];	$r0[0] = 1;	$r0[1] = 1;	i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(java.lang.String)>(")");	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i1 - 1;	if i0 == $i2 goto return $r0;	return $r0
;block_num 2