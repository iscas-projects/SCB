(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2228 0)
(declare-sort var3126 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var3126) ClassObject)
(declare-fun cast-from-var2228-to-var3126 (var2228) var3126)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun arr-var3126-init () (Array Int var3126))
(declare-fun cast-from-String-to-var3126 (String) var3126)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var3126 (Int) var3126)
(declare-fun String_format/1339386452 (String (Array Int var3126)) String)
(declare-const null-Int Int)
(declare-const null-var2228 var2228)
(declare-const null-__Array__Int__var3126__ (Array Int var3126))
(declare-const var2060 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2060 null-Int)))
(declare-const var2999 var2228) ; Statement: r0 := @parameter1: java.lang.Throwable 
(assert (not (= var2999 null-var2228)))
 ; Statement: if r0 != null goto $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= var2999 null-var2228))) ; Cond: r0 != null 
(assert true)
(define-const var589 ClassObject (getClass/1258963082 (cast-from-var2228-to-var3126 var2999))) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3089 String (getSimpleName/-390194377 var589)) ; Statement: $r6 = virtualinvoke $r1.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true) ; Non Conditional
(define-const var1482 String var3089) ; Statement: r2 = $r6 
 ; Statement: if r0 != null goto $r7 = virtualinvoke r0.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert (not (not (= var2999 null-var2228)))) ; Negate: Cond: r0 != null  
(define-const var3269 String "Null") ; Statement: $r7 = "Null" 
 ; Statement: goto [?= $r3 = newarray (java.lang.Object)[3]] 
(assert true) ; Non Conditional
(define-const var2803 (Array Int var3126) arr-var3126-init) ; Statement: $r3 = newarray (java.lang.Object)[3] 
(declare-const var2803!1 (Array Int var3126))
(assert (not (= var2803!1 null-__Array__Int__var3126__)))
(assert (= (select var2803!1 0) (cast-from-String-to-var3126 var1482))) ; Statement: $r3[0] = r2 
(define-const var2078 Int (Int_valueOf/-1371140006 var2060)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var2803!2 (Array Int var3126))
(assert (not (= var2803!2 null-__Array__Int__var3126__)))
(assert (= (select var2803!2 1) (cast-from-Int-to-var3126 var2078))) ; Statement: $r3[1] = $r4 
(declare-const var2803!3 (Array Int var3126))
(assert (not (= var2803!3 null-__Array__Int__var3126__)))
(assert (= (select var2803!3 2) (cast-from-String-to-var3126 var3269))) ; Statement: $r3[2] = $r7 
(define-const var1033 String (String_format/1339386452 "%s #%,d: %s" var2803!3)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s #%,d: %s", $r3) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2228-to-var3126=([java.lang.Throwable], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), arr-var3126-init=([], java.lang.Object[]), cast-from-String-to-var3126=([java.lang.String], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var3126=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2060=i0, var2228=java.lang.Throwable, var2999=r0, var3126=java.lang.Object, var589=$r1, var3089=$r6, var1482=r2, var3269=$r7, var2803=$r3, var2078=$r4, var1033=$r5}
; {i0=var2060, java.lang.Throwable=var2228, r0=var2999, java.lang.Object=var3126, $r1=var589, $r6=var3089, r2=var1482, $r7=var3269, $r3=var2803, $r4=var2078, $r5=var1033}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.Throwable;	if r0 != null goto $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r1.<java.lang.Class: java.lang.String getSimpleName()>();	r2 = $r6;	if r0 != null goto $r7 = virtualinvoke r0.<java.lang.Throwable: java.lang.String getMessage()>();	$r7 = "Null";	goto [?= $r3 = newarray (java.lang.Object)[3]];	$r3 = newarray (java.lang.Object)[3];	$r3[0] = r2;	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r3[1] = $r4;	$r3[2] = $r7;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s #%,d: %s", $r3);	return $r5
;block_num 5