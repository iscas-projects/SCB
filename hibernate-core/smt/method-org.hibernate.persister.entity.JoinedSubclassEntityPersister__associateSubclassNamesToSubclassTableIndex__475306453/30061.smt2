(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3809 0)
(declare-sort var525 0)
(declare-sort var913 0)
(declare-sort var1944 0)
(declare-sort var2129 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun subclassTableNameClosure/1437194565 (var3809) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1944-init () var1944)
(declare-fun arr-var2129-init () (Array Int var2129))
(declare-fun cast-from-String-to-var2129 (String) var2129)
(declare-fun String_format/1339386452 (String (Array Int var2129)) String)
(declare-fun <init>/-1092629202 (var1944 String) void)
(declare-const null-var3809 var3809)
(declare-const null-String String)
(declare-const null-var913 var913)
(declare-const null-__Array__Int____Array__Int__String____ (Array Int (Array Int String)))
(declare-const null-__Array__Int__var2129__ (Array Int var2129))
(declare-const var35 var3809) ; Statement: r0 := @this: org.hibernate.persister.entity.JoinedSubclassEntityPersister 
(assert (not (= var35 null-var3809)))
(declare-const var1151 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1151 null-String)))
(declare-const var3866 var913) ; Statement: r15 := @parameter1: java.util.Set 
(assert (not (= var3866 null-var913)))
(declare-const var3721 (Array Int (Array Int String))) ; Statement: r12 := @parameter2: java.lang.String[][] 
(assert (not (= var3721 null-__Array__Int____Array__Int__String____)))
(define-const var636 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var2444 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(define-const var2753 (Array Int String) (subclassTableNameClosure/1437194565 var35)) ; Statement: $r1 = r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: java.lang.String[] subclassTableNameClosure> 
(define-const var3138 Int (getLength-Arr-String-1 var2753)) ; Statement: $i0 = lengthof $r1 
 ; Statement: if i6 >= $i0 goto (branch) 
(assert (>= var2444 var3138)) ; Cond: i6 >= $i0 
 ; Statement: if z1 != 0 goto return 
(assert (not (not (= (ite var636 1 0) 0)))) ; Negate: Cond: z1 != 0  
(define-const var1997 var1944 var1944-init) ; Statement: $r2 = new java.lang.IllegalStateException 
(define-const var354 (Array Int var2129) arr-var2129-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(declare-const var354!1 (Array Int var2129))
(assert (not (= var354!1 null-__Array__Int__var2129__)))
(assert (= (select var354!1 0) (cast-from-String-to-var2129 var1151))) ; Statement: $r3[0] = r4 
(define-const var1718 String (String_format/1339386452 "Was unable to locate subclass table [%s] in \u0027subclassTableNameClosure\u0027" var354!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Was unable to locate subclass table [%s] in \'subclassTableNameClosure\'", $r3) 
(assert true)
;(assert (<init>/-1092629202 var1997 var1718)) ; Statement: specialinvoke $r2.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5) 

(declare-const var1997!1 var1944)
(declare-const var1718!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {subclassTableNameClosure/1437194565=([org.hibernate.persister.entity.JoinedSubclassEntityPersister], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var1944-init=([], java.lang.IllegalStateException), arr-var2129-init=([], java.lang.Object[]), cast-from-String-to-var2129=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3809=org.hibernate.persister.entity.JoinedSubclassEntityPersister, var35=r0, var1151=r4, var525=null_type, var913=java.util.Set, var3866=r15, var3721=r12, var636=z1, var2444=i6, var2753=$r1, var3138=$i0, var1944=java.lang.IllegalStateException, var1997=$r2, var2129=java.lang.Object, var354=$r3, var1718=$r5}
; {org.hibernate.persister.entity.JoinedSubclassEntityPersister=var3809, r0=var35, r4=var1151, null_type=var525, java.util.Set=var913, r15=var3866, r12=var3721, z1=var636, i6=var2444, $r1=var2753, $i0=var3138, java.lang.IllegalStateException=var1944, $r2=var1997, java.lang.Object=var2129, $r3=var354, $r5=var1718}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.persister.entity.JoinedSubclassEntityPersister;	r4 := @parameter0: java.lang.String;	r15 := @parameter1: java.util.Set;	r12 := @parameter2: java.lang.String[][];	z1 = 0;	i6 = 0;	$r1 = r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: java.lang.String[] subclassTableNameClosure>;	$i0 = lengthof $r1;	if i6 >= $i0 goto (branch);	if z1 != 0 goto return;	$r2 = new java.lang.IllegalStateException;	$r3 = newarray (java.lang.Object)[1];	$r3[0] = r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Was unable to locate subclass table [%s] in \'subclassTableNameClosure\'", $r3);	specialinvoke $r2.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r5);	throw $r2
;block_num 4