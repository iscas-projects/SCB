(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2326 0)
(declare-sort var1312 0)
(declare-sort var3446 0)
(declare-sort var1006 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isFile/1016913701 (var2326) Bool)
(declare-fun var3446-init () var3446)
(declare-fun arr-var1006-init () (Array Int var1006))
(declare-fun cast-from-String-to-var1006 (String) var1006)
(declare-fun cast-from-var2326-to-var1006 (var2326) var1006)
(declare-fun String_format/1339386452 (String (Array Int var1006)) String)
(declare-fun <init>/875830710 (var3446 String) void)
(declare-const null-var2326 var2326)
(declare-const null-String String)
(declare-const null-__Array__Int__var1006__ (Array Int var1006))
(declare-const var3037 var2326) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var3037 null-var2326)))
(declare-const var1410 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1410 null-String)))
(assert true)
(define-const var2882 Bool (isFile/1016913701 var3037)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean isFile()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.IllegalArgumentException 
(assert (= (ite var2882 1 0) 0)) ; Cond: $z0 == 0 
(define-const var305 var3446 var3446-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var2589 (Array Int var1006) arr-var1006-init) ; Statement: $r2 = newarray (java.lang.Object)[2] 
(declare-const var2589!1 (Array Int var1006))
(assert (not (= var2589!1 null-__Array__Int__var1006__)))
(assert (= (select var2589!1 0) (cast-from-String-to-var1006 var1410))) ; Statement: $r2[0] = r3 
(declare-const var2589!2 (Array Int var1006))
(assert (not (= var2589!2 null-__Array__Int__var1006__)))
(assert (= (select var2589!2 1) (cast-from-var2326-to-var1006 var3037))) ; Statement: $r2[1] = r0 
(define-const var1174 String (String_format/1339386452 "Parameter \u0027%s\u0027 is not a file: %s" var2589!2)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Parameter \'%s\' is not a file: %s", $r2) 
(assert true)
;(assert (<init>/875830710 var305 var1174)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var305!1 var3446)
(declare-const var1174!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {isFile/1016913701=([java.io.File], boolean), var3446-init=([], java.lang.IllegalArgumentException), arr-var1006-init=([], java.lang.Object[]), cast-from-String-to-var1006=([java.lang.String], java.lang.Object), cast-from-var2326-to-var1006=([java.io.File], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2326=java.io.File, var3037=r0, var1410=r3, var1312=null_type, var2882=$z0, var3446=java.lang.IllegalArgumentException, var305=$r1, var1006=java.lang.Object, var2589=$r2, var1174=$r4}
; {java.io.File=var2326, r0=var3037, r3=var1410, null_type=var1312, $z0=var2882, java.lang.IllegalArgumentException=var3446, $r1=var305, java.lang.Object=var1006, $r2=var2589, $r4=var1174}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: java.io.File;	r3 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.io.File: boolean isFile()>();	if $z0 == 0 goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r2 = newarray (java.lang.Object)[2];	$r2[0] = r3;	$r2[1] = r0;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Parameter \'%s\' is not a file: %s", $r2);	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r1
;block_num 2