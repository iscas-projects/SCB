(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var684 0)
(declare-sort var1785 0)
(declare-sort var1981 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCanonicalPath/2030784441 (var684) String)
(declare-fun var1785-init () var1785)
(declare-fun arr-var1981-init () (Array Int var1981))
(declare-fun cast-from-String-to-var1981 (String) var1981)
(declare-fun cast-from-var684-to-var1981 (var684) var1981)
(declare-fun String_format/1339386452 (String (Array Int var1981)) String)
(declare-fun <init>/875830710 (var1785 String) void)
(declare-const null-var684 var684)
(declare-const null-__Array__Int__var1981__ (Array Int var1981))
(declare-const var706 var684) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var706 null-var684)))
(declare-const var1682 var684) ; Statement: r2 := @parameter1: java.io.File 
(assert (not (= var1682 null-var684)))
(assert true)
(define-const var3004 String (getCanonicalPath/2030784441 var706)) ; Statement: r1 = virtualinvoke r0.<java.io.File: java.lang.String getCanonicalPath()>() 
(assert true)
(define-const var3878 String (getCanonicalPath/2030784441 var1682)) ; Statement: $r3 = virtualinvoke r2.<java.io.File: java.lang.String getCanonicalPath()>() 
(assert true)
(define-const var1147 Bool (= var3004 var3878)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var1147 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var504 var1785 var1785-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var2320 (Array Int var1981) arr-var1981-init) ; Statement: $r5 = newarray (java.lang.Object)[3] 
(declare-const var2320!1 (Array Int var1981))
(assert (not (= var2320!1 null-__Array__Int__var1981__)))
(assert (= (select var2320!1 0) (cast-from-String-to-var1981 var3004))) ; Statement: $r5[0] = r1 
(declare-const var2320!2 (Array Int var1981))
(assert (not (= var2320!2 null-__Array__Int__var1981__)))
(assert (= (select var2320!2 1) (cast-from-var684-to-var1981 var706))) ; Statement: $r5[1] = r0 
(declare-const var2320!3 (Array Int var1981))
(assert (not (= var2320!3 null-__Array__Int__var1981__)))
(assert (= (select var2320!3 2) (cast-from-var684-to-var1981 var1682))) ; Statement: $r5[2] = r2 
(define-const var2453 String (String_format/1339386452 "File canonical paths are equal: \u0027%s\u0027 (file1=\u0027%s\u0027, file2=\u0027%s\u0027)" var2320!3)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("File canonical paths are equal: \'%s\' (file1=\'%s\', file2=\'%s\')", $r5) 
(assert true)
;(assert (<init>/875830710 var504 var2453)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var504!1 var1785)
(declare-const var2453!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getCanonicalPath/2030784441=([java.io.File], java.lang.String), var1785-init=([], java.lang.IllegalArgumentException), arr-var1981-init=([], java.lang.Object[]), cast-from-String-to-var1981=([java.lang.String], java.lang.Object), cast-from-var684-to-var1981=([java.io.File], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var684=java.io.File, var706=r0, var1682=r2, var3004=r1, var3878=$r3, var1147=$z0, var1785=java.lang.IllegalArgumentException, var504=$r4, var1981=java.lang.Object, var2320=$r5, var2453=$r6}
; {java.io.File=var684, r0=var706, r2=var1682, r1=var3004, $r3=var3878, $z0=var1147, java.lang.IllegalArgumentException=var1785, $r4=var504, java.lang.Object=var1981, $r5=var2320, $r6=var2453}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: java.io.File;	r2 := @parameter1: java.io.File;	r1 = virtualinvoke r0.<java.io.File: java.lang.String getCanonicalPath()>();	$r3 = virtualinvoke r2.<java.io.File: java.lang.String getCanonicalPath()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 == 0 goto return;	$r4 = new java.lang.IllegalArgumentException;	$r5 = newarray (java.lang.Object)[3];	$r5[0] = r1;	$r5[1] = r0;	$r5[2] = r2;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("File canonical paths are equal: \'%s\' (file1=\'%s\', file2=\'%s\')", $r5);	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r4
;block_num 2