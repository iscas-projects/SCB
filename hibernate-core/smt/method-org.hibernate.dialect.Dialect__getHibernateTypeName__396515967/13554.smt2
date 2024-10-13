(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2272 0)
(declare-sort var65 0)
(declare-sort var3595 0)
(declare-sort var660 0)
(declare-sort var1225 0)
(declare-sort var3895 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hibernateTypeNames/-970077672 (var2272) var65)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun get/1201938295 (var65 Int Int Int Int) String)
(declare-fun var660-init () var660)
(declare-fun arr-var1225-init () (Array Int var1225))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1225 (Int) var1225)
(declare-fun String_format/1339386452 (String (Array Int var1225)) String)
(declare-fun <init>/-790357943 (var660 String) void)
(declare-fun cast-from-var660-to-var3895 (var660) var3895)
(declare-const null-var2272 var2272)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__var1225__ (Array Int var1225))
(declare-const var135 var2272) ; Statement: r0 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var135 null-var2272)))
(declare-const var2316 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2316 null-Int)))
(declare-const var2869 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2869 null-Int)))
(declare-const var1354 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var1354 null-Int)))
(declare-const var764 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var764 null-Int)))
(define-const var1488 var65 (hibernateTypeNames/-970077672 var135)) ; Statement: $r1 = r0.<org.hibernate.dialect.Dialect: org.hibernate.dialect.TypeNames hibernateTypeNames> 
(define-const var2945 Int (cast-from-Int-to-Int var2869)) ; Statement: $l4 = (long) i1 
(assert true)
(define-const var550 String (get/1201938295 var1488 var2316 var2945 var1354 var764)) ; Statement: r2 = virtualinvoke $r1.<org.hibernate.dialect.TypeNames: java.lang.String get(int,long,int,int)>(i0, $l4, i2, i3) 
 ; Statement: if r2 != null goto return r2 
(assert (not (not (= var550 null-String)))) ; Negate: Cond: r2 != null  
(define-const var711 var660 var660-init) ; Statement: $r8 = new org.hibernate.HibernateException 
(define-const var2903 (Array Int var1225) arr-var1225-init) ; Statement: $r4 = newarray (java.lang.Object)[2] 
(define-const var3054 Int (Int_valueOf/-1371140006 var2316)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var2903!1 (Array Int var1225))
(assert (not (= var2903!1 null-__Array__Int__var1225__)))
(assert (= (select var2903!1 0) (cast-from-Int-to-var1225 var3054))) ; Statement: $r4[0] = $r5 
(define-const var107 Int (Int_valueOf/-1371140006 var2869)) ; Statement: $r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
(declare-const var2903!2 (Array Int var1225))
(assert (not (= var2903!2 null-__Array__Int__var1225__)))
(assert (= (select var2903!2 1) (cast-from-Int-to-var1225 var107))) ; Statement: $r4[1] = $r6 
(define-const var365 String (String_format/1339386452 "No Hibernate type mapping for type [code=%s, length=%s]" var2903!2)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("No Hibernate type mapping for type [code=%s, length=%s]", $r4) 
(assert true)
;(assert (<init>/-790357943 var711 var365)) ; Statement: specialinvoke $r8.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7) 

(declare-const var711!1 var660)
(declare-const var365!1 String)
(define-const var3914 var3895 (cast-from-var660-to-var3895 var711!1)) ; Statement: $r9 = (java.lang.Throwable) $r8 
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {hibernateTypeNames/-970077672=([org.hibernate.dialect.Dialect], org.hibernate.dialect.TypeNames), cast-from-Int-to-Int=([int], long), get/1201938295=([org.hibernate.dialect.TypeNames, int, long, int, int], java.lang.String), var660-init=([], org.hibernate.HibernateException), arr-var1225-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1225=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var660-to-var3895=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2272=org.hibernate.dialect.Dialect, var135=r0, var2316=i0, var2869=i1, var1354=i2, var764=i3, var65=org.hibernate.dialect.TypeNames, var1488=$r1, var2945=$l4, var550=r2, var3595=null_type, var660=org.hibernate.HibernateException, var711=$r8, var1225=java.lang.Object, var2903=$r4, var3054=$r5, var107=$r6, var365=$r7, var3895=java.lang.Throwable, var3914=$r9}
; {org.hibernate.dialect.Dialect=var2272, r0=var135, i0=var2316, i1=var2869, i2=var1354, i3=var764, org.hibernate.dialect.TypeNames=var65, $r1=var1488, $l4=var2945, r2=var550, null_type=var3595, org.hibernate.HibernateException=var660, $r8=var711, java.lang.Object=var1225, $r4=var2903, $r5=var3054, $r6=var107, $r7=var365, java.lang.Throwable=var3895, $r9=var3914}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.dialect.Dialect;	i0 := @parameter0: int;	i1 := @parameter1: int;	i2 := @parameter2: int;	i3 := @parameter3: int;	$r1 = r0.<org.hibernate.dialect.Dialect: org.hibernate.dialect.TypeNames hibernateTypeNames>;	$l4 = (long) i1;	r2 = virtualinvoke $r1.<org.hibernate.dialect.TypeNames: java.lang.String get(int,long,int,int)>(i0, $l4, i2, i3);	if r2 != null goto return r2;	$r8 = new org.hibernate.HibernateException;	$r4 = newarray (java.lang.Object)[2];	$r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r4[0] = $r5;	$r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	$r4[1] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("No Hibernate type mapping for type [code=%s, length=%s]", $r4);	specialinvoke $r8.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7);	$r9 = (java.lang.Throwable) $r8;	throw $r9
;block_num 2