(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var537 0)
(declare-sort var3636 0)
(declare-sort var2728 0)
(declare-sort var691 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun initialValue/-322946707 (var537) Int)
(declare-fun var3636-init () var3636)
(declare-fun arr-var2728-init () (Array Int var2728))
(declare-fun exportIdentifier/-322946707 (var537) String)
(declare-fun cast-from-String-to-var2728 (String) var2728)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2728 (Int) var2728)
(declare-fun String_format/1339386452 (String (Array Int var2728)) String)
(declare-fun <init>/-790357943 (var3636 String) void)
(declare-fun cast-from-var3636-to-var691 (var3636) var691)
(declare-const null-var537 var537)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2728__ (Array Int var2728))
(declare-const var3233 var537) ; Statement: r0 := @this: org.hibernate.boot.model.relational.Sequence 
(assert (not (= var3233 null-var537)))
(declare-const var2616 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2616 null-Int)))
(declare-const var3152 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var3152 null-Int)))
(define-const var2596 Int (initialValue/-322946707 var3233)) ; Statement: $i1 = r0.<org.hibernate.boot.model.relational.Sequence: int initialValue> 
 ; Statement: if $i1 == i0 goto $i3 = r0.<org.hibernate.boot.model.relational.Sequence: int incrementSize> 
(assert (not (= var2596 var2616))) ; Negate: Cond: $i1 == i0  
(define-const var1173 var3636 var3636-init) ; Statement: $r13 = new org.hibernate.HibernateException 
(define-const var2811 (Array Int var2728) arr-var2728-init) ; Statement: $r8 = newarray (java.lang.Object)[3] 
(define-const var1842 String (exportIdentifier/-322946707 var3233)) ; Statement: $r9 = r0.<org.hibernate.boot.model.relational.Sequence: java.lang.String exportIdentifier> 
(declare-const var2811!1 (Array Int var2728))
(assert (not (= var2811!1 null-__Array__Int__var2728__)))
(assert (= (select var2811!1 0) (cast-from-String-to-var2728 var1842))) ; Statement: $r8[0] = $r9 
(define-const var125 Int (initialValue/-322946707 var3233)) ; Statement: $i5 = r0.<org.hibernate.boot.model.relational.Sequence: int initialValue> 
(define-const var93 Int (Int_valueOf/-1371140006 var125)) ; Statement: $r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i5) 
(declare-const var2811!2 (Array Int var2728))
(assert (not (= var2811!2 null-__Array__Int__var2728__)))
(assert (= (select var2811!2 1) (cast-from-Int-to-var2728 var93))) ; Statement: $r8[1] = $r10 
(define-const var3097 Int (Int_valueOf/-1371140006 var2616)) ; Statement: $r11 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var2811!3 (Array Int var2728))
(assert (not (= var2811!3 null-__Array__Int__var2728__)))
(assert (= (select var2811!3 2) (cast-from-Int-to-var2728 var3097))) ; Statement: $r8[2] = $r11 
(define-const var3252 String (String_format/1339386452 "Multiple references to database sequence [%s] were encountered attempting to set conflicting values for \u0027initial value\u0027.  Found [%s] and [%s]" var2811!3)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Multiple references to database sequence [%s] were encountered attempting to set conflicting values for \'initial value\'.  Found [%s] and [%s]", $r8) 
(assert true)
;(assert (<init>/-790357943 var1173 var3252)) ; Statement: specialinvoke $r13.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r12) 

(declare-const var1173!1 var3636)
(declare-const var3252!1 String)
(define-const var2019 var691 (cast-from-var3636-to-var691 var1173!1)) ; Statement: $r15 = (java.lang.Throwable) $r13 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {initialValue/-322946707=([org.hibernate.boot.model.relational.Sequence], int), var3636-init=([], org.hibernate.HibernateException), arr-var2728-init=([], java.lang.Object[]), exportIdentifier/-322946707=([org.hibernate.boot.model.relational.Sequence], java.lang.String), cast-from-String-to-var2728=([java.lang.String], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2728=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3636-to-var691=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var537=org.hibernate.boot.model.relational.Sequence, var3233=r0, var2616=i0, var3152=i2, var2596=$i1, var3636=org.hibernate.HibernateException, var1173=$r13, var2728=java.lang.Object, var2811=$r8, var1842=$r9, var125=$i5, var93=$r10, var3097=$r11, var3252=$r12, var691=java.lang.Throwable, var2019=$r15}
; {org.hibernate.boot.model.relational.Sequence=var537, r0=var3233, i0=var2616, i2=var3152, $i1=var2596, org.hibernate.HibernateException=var3636, $r13=var1173, java.lang.Object=var2728, $r8=var2811, $r9=var1842, $i5=var125, $r10=var93, $r11=var3097, $r12=var3252, java.lang.Throwable=var691, $r15=var2019}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.model.relational.Sequence;	i0 := @parameter0: int;	i2 := @parameter1: int;	$i1 = r0.<org.hibernate.boot.model.relational.Sequence: int initialValue>;	if $i1 == i0 goto $i3 = r0.<org.hibernate.boot.model.relational.Sequence: int incrementSize>;	$r13 = new org.hibernate.HibernateException;	$r8 = newarray (java.lang.Object)[3];	$r9 = r0.<org.hibernate.boot.model.relational.Sequence: java.lang.String exportIdentifier>;	$r8[0] = $r9;	$i5 = r0.<org.hibernate.boot.model.relational.Sequence: int initialValue>;	$r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i5);	$r8[1] = $r10;	$r11 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r8[2] = $r11;	$r12 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Multiple references to database sequence [%s] were encountered attempting to set conflicting values for \'initial value\'.  Found [%s] and [%s]", $r8);	specialinvoke $r13.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r12);	$r15 = (java.lang.Throwable) $r13;	throw $r15
;block_num 2