(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var869 0)
(declare-sort var1854 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun afterWhere/1032958620 (var869) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-String-2 ((Array Int (Array Int String))) Int)
(declare-const null-var869 var869)
(declare-const null-String String)
(declare-const null-__Array__Int____Array__Int__String____ (Array Int (Array Int String)))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1443 var869) ; Statement: r0 := @this: org.hibernate.sql.QueryJoinFragment 
(assert (not (= var1443 null-var869)))
(declare-const var176 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var176 null-String)))
(declare-const var1174 (Array Int (Array Int String))) ; Statement: r2 := @parameter1: java.lang.String[][] 
(assert (not (= var1174 null-__Array__Int____Array__Int__String____)))
(declare-const var3304 (Array Int String)) ; Statement: r13 := @parameter2: java.lang.String[] 
(assert (not (= var3304 null-__Array__Int__String__)))
(define-const var801 String (afterWhere/1032958620 var1443)) ; Statement: $r1 = r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterWhere> 
(assert true)
;(assert (append/672562846 var801 " and ")) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ") 
(declare-const var801!1 String)
(assert (= var801!1 (str.++ var801 " and ")))
(define-const var1625 Int (getLength-Arr-String-2 var1174)) ; Statement: $i0 = lengthof r2 
 ; Statement: if $i0 <= 1 goto i7 = 0 
(assert (<= var1625 1)) ; Cond: $i0 <= 1 
(define-const var1842 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(define-const var3311 Int (getLength-Arr-String-2 var1174)) ; Statement: $i8 = lengthof r2 
 ; Statement: if i7 >= $i8 goto $i1 = lengthof r2 
(assert (>= var1842 var3311)) ; Cond: i7 >= $i8 
(define-const var2137 Int (getLength-Arr-String-2 var1174)) ; Statement: $i1 = lengthof r2 
 ; Statement: if $i1 <= 1 goto return 
(assert (<= var2137 1)) ; Cond: $i1 <= 1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {afterWhere/1032958620=([org.hibernate.sql.QueryJoinFragment], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLength-Arr-String-2=([java.lang.String[][]], int)}
; {var869=org.hibernate.sql.QueryJoinFragment, var1443=r0, var176=r10, var1854=null_type, var1174=r2, var3304=r13, var801=$r1, var1625=$i0, var1842=i7, var3311=$i8, var2137=$i1}
; {org.hibernate.sql.QueryJoinFragment=var869, r0=var1443, r10=var176, null_type=var1854, r2=var1174, r13=var3304, $r1=var801, $i0=var1625, i7=var1842, $i8=var3311, $i1=var2137}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.sql.QueryJoinFragment;	r10 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String[][];	r13 := @parameter2: java.lang.String[];	$r1 = r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterWhere>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ");	$i0 = lengthof r2;	if $i0 <= 1 goto i7 = 0;	i7 = 0;	$i8 = lengthof r2;	if i7 >= $i8 goto $i1 = lengthof r2;	$i1 = lengthof r2;	if $i1 <= 1 goto return;	return
;block_num 5