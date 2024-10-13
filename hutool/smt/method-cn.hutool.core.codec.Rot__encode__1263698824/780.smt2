(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2676 0)
(declare-sort var3201 0)
(declare-sort var558 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3201-init () (Array Int var3201))
(declare-fun var558_notNull/515149844 (var3201 String (Array Int var3201)) var3201)
(declare-fun cast-from-String-to-var3201 (String) var3201)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var2337 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2337 null-String)))
(declare-const var3440 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3440 null-Int)))
(declare-const var3768 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3768 null-Bool)))
(define-const var1080 (Array Int var3201) arr-var3201-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var558_notNull/515149844 (cast-from-String-to-var3201 var2337) "message must not be null" var1080)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "message must not be null", $r1) 

(declare-const var2337!1 String)
(declare-const var1067 String)
(declare-const var1080!1 (Array Int var3201))
(assert true)
(define-const var433 Int (length/-134980193 var2337!1)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var546 (Array Int Int) arr-Int-init) ; Statement: r2 = newarray (char)[i0] 
(define-const var2845 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto $r3 = new java.lang.String 
(assert (>= var2845 var433)) ; Cond: i4 >= i0 
(define-const var140 String String-init) ; Statement: $r3 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var140 var546)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(char[])>(r2) 

(declare-const var140!1 String)
(declare-const var546!1 (Array Int Int))
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3201-init=([], java.lang.Object[]), var558_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var3201=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), arr-Int-init=([], char[]), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var2337=r0, var2676=null_type, var3440=i1, var3768=z0, var3201=java.lang.Object, var1080=$r1, var558=cn.hutool.core.lang.Assert, var1067="message must not be null", var433=i0, var546=r2, var2845=i4, var140=$r3}
; {r0=var2337, null_type=var2676, i1=var3440, z0=var3768, java.lang.Object=var3201, $r1=var1080, cn.hutool.core.lang.Assert=var558, "message must not be null"=var1067, i0=var433, r2=var546, i4=var2845, $r3=var140}
;seq <java.lang.String: int length()>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: void <init>(char[])>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	z0 := @parameter2: boolean;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "message must not be null", $r1);	i0 = virtualinvoke r0.<java.lang.String: int length()>();	r2 = newarray (char)[i0];	i4 = 0;	if i4 >= i0 goto $r3 = new java.lang.String;	$r3 = new java.lang.String;	specialinvoke $r3.<java.lang.String: void <init>(char[])>(r2);	return $r3
;block_num 3