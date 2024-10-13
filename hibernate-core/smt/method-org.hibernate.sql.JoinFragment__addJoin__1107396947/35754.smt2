(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1896 0)
(declare-sort var2755 0)
(declare-sort var3221 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-String-2 ((Array Int (Array Int String))) Int)
(declare-fun addJoin/1751569653 (var1896 String String (Array Int String) (Array Int String) var3221 String) void)
(declare-const null-var1896 var1896)
(declare-const null-String String)
(declare-const null-__Array__Int____Array__Int__String____ (Array Int (Array Int String)))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var3221 var3221)
(declare-const var2416 var1896) ; Statement: r1 := @this: org.hibernate.sql.JoinFragment 
(assert (not (= var2416 null-var1896)))
(declare-const var3609 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3609 null-String)))
(declare-const var343 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var343 null-String)))
(declare-const var2261 (Array Int (Array Int String))) ; Statement: r0 := @parameter2: java.lang.String[][] 
(assert (not (= var2261 null-__Array__Int____Array__Int__String____)))
(declare-const var1651 (Array Int String)) ; Statement: r4 := @parameter3: java.lang.String[] 
(assert (not (= var1651 null-__Array__Int__String__)))
(declare-const var751 var3221) ; Statement: r5 := @parameter4: org.hibernate.sql.JoinType 
(assert (not (= var751 null-var3221)))
(declare-const var1291 String) ; Statement: r6 := @parameter5: java.lang.String 
(assert (not (= var1291 null-String)))
(define-const var333 Int (getLength-Arr-String-2 var2261)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 <= 1 goto $r7 = r0[0] 
(assert (<= var333 1)) ; Cond: $i0 <= 1 
(define-const var556 (Array Int String) (select var2261 0)) ; Statement: $r7 = r0[0] 
(assert true)
;(assert (addJoin/1751569653 var2416 var3609 var343 var556 var1651 var751 var1291)) ; Statement: virtualinvoke r1.<org.hibernate.sql.JoinFragment: void addJoin(java.lang.String,java.lang.String,java.lang.String[],java.lang.String[],org.hibernate.sql.JoinType,java.lang.String)>(r2, r3, $r7, r4, r5, r6) 

(declare-const var2416!1 var1896)
(declare-const var3609!1 String)
(declare-const var343!1 String)
(declare-const var556!1 (Array Int String))
(declare-const var1651!1 (Array Int String))
(declare-const var751!1 var3221)
(declare-const var1291!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-String-2=([java.lang.String[][]], int), addJoin/1751569653=([org.hibernate.sql.JoinFragment, java.lang.String, java.lang.String, java.lang.String[], java.lang.String[], org.hibernate.sql.JoinType, java.lang.String], void)}
; {var1896=org.hibernate.sql.JoinFragment, var2416=r1, var3609=r2, var2755=null_type, var343=r3, var2261=r0, var1651=r4, var3221=org.hibernate.sql.JoinType, var751=r5, var1291=r6, var333=$i0, var556=$r7}
; {org.hibernate.sql.JoinFragment=var1896, r1=var2416, r2=var3609, null_type=var2755, r3=var343, r0=var2261, r4=var1651, org.hibernate.sql.JoinType=var3221, r5=var751, r6=var1291, $i0=var333, $r7=var556}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.sql.JoinFragment;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String[][];	r4 := @parameter3: java.lang.String[];	r5 := @parameter4: org.hibernate.sql.JoinType;	r6 := @parameter5: java.lang.String;	$i0 = lengthof r0;	if $i0 <= 1 goto $r7 = r0[0];	$r7 = r0[0];	virtualinvoke r1.<org.hibernate.sql.JoinFragment: void addJoin(java.lang.String,java.lang.String,java.lang.String[],java.lang.String[],org.hibernate.sql.JoinType,java.lang.String)>(r2, r3, $r7, r4, r5, r6);	return
;block_num 2