(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var694 0)
(declare-sort var3933 0)
(declare-sort var2197 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3933-init () var3933)
(declare-fun arr-var2197-init () (Array Int var2197))
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun cast-from-Float64-to-var2197 (Float64) var2197)
(declare-fun String_format/1339386452 (String (Array Int var2197)) String)
(declare-fun <init>/875830710 (var3933 String) void)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const null-Float64 Float64)
(declare-const null-__Array__Int__var2197__ (Array Int var2197))
(declare-const var1444 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1444 null-Bool)))
(declare-const var2194 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2194 null-String)))
(declare-const var1948 Float64) ; Statement: d0 := @parameter2: double 
(assert (not (= var1948 null-Float64)))
 ; Statement: if z0 != 0 goto return 
(assert (not (not (= (ite var1444 1 0) 0)))) ; Negate: Cond: z0 != 0  
(define-const var1766 var3933 var3933-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var1167 (Array Int var2197) arr-var2197-init) ; Statement: $r2 = newarray (java.lang.Object)[1] 
(define-const var275 Float64 (Float64_valueOf/679560954 var1948)) ; Statement: $r3 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0) 
(declare-const var1167!1 (Array Int var2197))
(assert (not (= var1167!1 null-__Array__Int__var2197__)))
(assert (= (select var1167!1 0) (cast-from-Float64-to-var2197 var275))) ; Statement: $r2[0] = $r3 
(define-const var2153 String (String_format/1339386452 var2194 var1167!1)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r1, $r2) 
(assert true)
;(assert (<init>/875830710 var1766 var2153)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var1766!1 var3933)
(declare-const var2153!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3933-init=([], java.lang.IllegalArgumentException), arr-var2197-init=([], java.lang.Object[]), Float64_valueOf/679560954=([double], java.lang.Double), cast-from-Float64-to-var2197=([java.lang.Double], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1444=z0, var2194=r1, var694=null_type, var1948=d0, var3933=java.lang.IllegalArgumentException, var1766=$r0, var2197=java.lang.Object, var1167=$r2, var275=$r3, var2153=$r4}
; {z0=var1444, r1=var2194, null_type=var694, d0=var1948, java.lang.IllegalArgumentException=var3933, $r0=var1766, java.lang.Object=var2197, $r2=var1167, $r3=var275, $r4=var2153}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts z0 := @parameter0: boolean;	r1 := @parameter1: java.lang.String;	d0 := @parameter2: double;	if z0 != 0 goto return;	$r0 = new java.lang.IllegalArgumentException;	$r2 = newarray (java.lang.Object)[1];	$r3 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0);	$r2[0] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r1, $r2);	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 2