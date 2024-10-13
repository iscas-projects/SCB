(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2902 0)
(declare-sort var420 0)
(declare-sort var919 0)
(declare-sort var1123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var2902) Bool)
(declare-fun var919-init () var919)
(declare-fun arr-var1123-init () (Array Int var1123))
(declare-fun cast-from-String-to-var1123 (String) var1123)
(declare-fun cast-from-var2902-to-var1123 (var2902) var1123)
(declare-fun String_format/1339386452 (String (Array Int var1123)) String)
(declare-fun <init>/-1858646951 (var919 String) void)
(declare-const null-var2902 var2902)
(declare-const null-String String)
(declare-const null-__Array__Int__var1123__ (Array Int var1123))
(declare-const var906 var2902) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var906 null-var2902)))
(declare-const var3452 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3452 null-String)))
(assert true)
(define-const var2954 Bool (exists/1072868559 var906)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var2954 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1903 var919 var919-init) ; Statement: $r1 = new org.apache.commons.io.FileExistsException 
(define-const var2228 (Array Int var1123) arr-var1123-init) ; Statement: $r2 = newarray (java.lang.Object)[2] 
(declare-const var2228!1 (Array Int var1123))
(assert (not (= var2228!1 null-__Array__Int__var1123__)))
(assert (= (select var2228!1 0) (cast-from-String-to-var1123 var3452))) ; Statement: $r2[0] = r3 
(declare-const var2228!2 (Array Int var1123))
(assert (not (= var2228!2 null-__Array__Int__var1123__)))
(assert (= (select var2228!2 1) (cast-from-var2902-to-var1123 var906))) ; Statement: $r2[1] = r0 
(define-const var61 String (String_format/1339386452 "File element in parameter \u0027%s\u0027 already exists: \u0027%s\u0027" var2228!2)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("File element in parameter \'%s\' already exists: \'%s\'", $r2) 
(assert true)
;(assert (<init>/-1858646951 var1903 var61)) ; Statement: specialinvoke $r1.<org.apache.commons.io.FileExistsException: void <init>(java.lang.String)>($r4) 

(declare-const var1903!1 var919)
(declare-const var61!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), var919-init=([], org.apache.commons.io.FileExistsException), arr-var1123-init=([], java.lang.Object[]), cast-from-String-to-var1123=([java.lang.String], java.lang.Object), cast-from-var2902-to-var1123=([java.io.File], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1858646951=([org.apache.commons.io.FileExistsException, java.lang.String], void)}
; {var2902=java.io.File, var906=r0, var3452=r3, var420=null_type, var2954=$z0, var919=org.apache.commons.io.FileExistsException, var1903=$r1, var1123=java.lang.Object, var2228=$r2, var61=$r4}
; {java.io.File=var2902, r0=var906, r3=var3452, null_type=var420, $z0=var2954, org.apache.commons.io.FileExistsException=var919, $r1=var1903, java.lang.Object=var1123, $r2=var2228, $r4=var61}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: java.io.File;	r3 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 == 0 goto return;	$r1 = new org.apache.commons.io.FileExistsException;	$r2 = newarray (java.lang.Object)[2];	$r2[0] = r3;	$r2[1] = r0;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("File element in parameter \'%s\' already exists: \'%s\'", $r2);	specialinvoke $r1.<org.apache.commons.io.FileExistsException: void <init>(java.lang.String)>($r4);	throw $r1
;block_num 2