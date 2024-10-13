(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2045 0)
(declare-sort var868 0)
(declare-sort var374 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var868-init () (Array Int var868))
(declare-fun var374_notNull/515149844 (var868 String (Array Int var868)) var868)
(declare-fun cast-from-String-to-var868 (String) var868)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var3369 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3369 null-String)))
(declare-const var54 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var54 null-Int)))
(declare-const var2206 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2206 null-Bool)))
(define-const var2070 (Array Int var868) arr-var868-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var374_notNull/515149844 (cast-from-String-to-var868 var3369) "rot must not be null" var2070)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "rot must not be null", $r1) 

(declare-const var3369!1 String)
(declare-const var979 String)
(declare-const var2070!1 (Array Int var868))
(assert true)
(define-const var27 Int (length/-134980193 var3369!1)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var830 (Array Int Int) arr-Int-init) ; Statement: r2 = newarray (char)[i0] 
(define-const var591 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto $r3 = new java.lang.String 
(assert (>= var591 var27)) ; Cond: i4 >= i0 
(define-const var1427 String String-init) ; Statement: $r3 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var1427 var830)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(char[])>(r2) 

(declare-const var1427!1 String)
(declare-const var830!1 (Array Int Int))
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var868-init=([], java.lang.Object[]), var374_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var868=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), arr-Int-init=([], char[]), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var3369=r0, var2045=null_type, var54=i1, var2206=z0, var868=java.lang.Object, var2070=$r1, var374=cn.hutool.core.lang.Assert, var979="rot must not be null", var27=i0, var830=r2, var591=i4, var1427=$r3}
; {r0=var3369, null_type=var2045, i1=var54, z0=var2206, java.lang.Object=var868, $r1=var2070, cn.hutool.core.lang.Assert=var374, "rot must not be null"=var979, i0=var27, r2=var830, i4=var591, $r3=var1427}
;seq <java.lang.String: int length()>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: void <init>(char[])>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	z0 := @parameter2: boolean;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "rot must not be null", $r1);	i0 = virtualinvoke r0.<java.lang.String: int length()>();	r2 = newarray (char)[i0];	i4 = 0;	if i4 >= i0 goto $r3 = new java.lang.String;	$r3 = new java.lang.String;	specialinvoke $r3.<java.lang.String: void <init>(char[])>(r2);	return $r3
;block_num 3