(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3404 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-var3404-1 ((Array Int var3404)) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var3404 var3404)
(declare-const null-__Array__Int__var3404__ (Array Int var3404))
(declare-const var2661 var3404) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var2661 null-var3404)))
(declare-const var2028 (Array Int var3404)) ; Statement: r0 := @parameter1: java.lang.Object[] 
(assert (not (= var2028 null-__Array__Int__var3404__)))
(define-const var3663 Int (getLength-Arr-var3404-1 var2028)) ; Statement: $i0 = lengthof r0 
(define-const var3213 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (char)[$i0] 
(define-const var1592 Int 0) ; Statement: i5 = 0 
(define-const var1919 Int (getLength-Arr-var3404-1 var2028)) ; Statement: i1 = lengthof r0 
(define-const var166 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i1 goto $r2 = new java.lang.String 
(assert (>= var166 var1919)) ; Cond: i6 >= i1 
(define-const var1195 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var1195 var3213)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[])>(r1) 

(declare-const var1195!1 String)
(declare-const var3213!1 (Array Int Int))
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-var3404-1=([java.lang.Object[]], int), arr-Int-init=([], char[]), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var3404=java.lang.Object, var2661=r4, var2028=r0, var3663=$i0, var3213=r1, var1592=i5, var1919=i1, var166=i6, var1195=$r2}
; {java.lang.Object=var3404, r4=var2661, r0=var2028, $i0=var3663, r1=var3213, i5=var1592, i1=var1919, i6=var166, $r2=var1195}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object[];	$i0 = lengthof r0;	r1 = newarray (char)[$i0];	i5 = 0;	i1 = lengthof r0;	i6 = 0;	if i6 >= i1 goto $r2 = new java.lang.String;	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(char[])>(r1);	return $r2
;block_num 3