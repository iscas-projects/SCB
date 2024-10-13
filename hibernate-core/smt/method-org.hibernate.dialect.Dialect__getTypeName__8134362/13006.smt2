(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var468 0)
(declare-sort var3130 0)
(declare-sort var2227 0)
(declare-sort var3197 0)
(declare-sort var1508 0)
(declare-sort var2963 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun typeNames/-970077672 (var468) var3130)
(declare-fun get/1201938295 (var3130 Int Int Int Int) String)
(declare-fun var3197-init () var3197)
(declare-fun arr-var1508-init () (Array Int var1508))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1508 (Int) var1508)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun String_format/1339386452 (String (Array Int var1508)) String)
(declare-fun <init>/-790357943 (var3197 String) void)
(declare-fun cast-from-var3197-to-var2963 (var3197) var2963)
(declare-const null-var468 var468)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__var1508__ (Array Int var1508))
(declare-const var1289 var468) ; Statement: r0 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var1289 null-var468)))
(declare-const var2809 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2809 null-Int)))
(declare-const var1125 Int) ; Statement: l1 := @parameter1: long 
(assert (not (= var1125 null-Int)))
(declare-const var377 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var377 null-Int)))
(declare-const var2064 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var2064 null-Int)))
(define-const var3878 var3130 (typeNames/-970077672 var1289)) ; Statement: $r1 = r0.<org.hibernate.dialect.Dialect: org.hibernate.dialect.TypeNames typeNames> 
(assert true)
(define-const var1053 String (get/1201938295 var3878 var2809 var1125 var377 var2064)) ; Statement: r2 = virtualinvoke $r1.<org.hibernate.dialect.TypeNames: java.lang.String get(int,long,int,int)>(i0, l1, i2, i3) 
 ; Statement: if r2 != null goto return r2 
(assert (not (not (= var1053 null-String)))) ; Negate: Cond: r2 != null  
(define-const var1261 var3197 var3197-init) ; Statement: $r8 = new org.hibernate.HibernateException 
(define-const var1275 (Array Int var1508) arr-var1508-init) ; Statement: $r4 = newarray (java.lang.Object)[2] 
(define-const var342 Int (Int_valueOf/-1371140006 var2809)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var1275!1 (Array Int var1508))
(assert (not (= var1275!1 null-__Array__Int__var1508__)))
(assert (= (select var1275!1 0) (cast-from-Int-to-var1508 var342))) ; Statement: $r4[0] = $r5 
(define-const var116 Int (Int_valueOf/-1102777585 var1125)) ; Statement: $r6 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l1) 
(declare-const var1275!2 (Array Int var1508))
(assert (not (= var1275!2 null-__Array__Int__var1508__)))
(assert (= (select var1275!2 1) (cast-from-Int-to-var1508 var116))) ; Statement: $r4[1] = $r6 
(define-const var119 String (String_format/1339386452 "No type mapping for java.sql.Types code: %s, length: %s" var1275!2)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("No type mapping for java.sql.Types code: %s, length: %s", $r4) 
(assert true)
;(assert (<init>/-790357943 var1261 var119)) ; Statement: specialinvoke $r8.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7) 

(declare-const var1261!1 var3197)
(declare-const var119!1 String)
(define-const var804 var2963 (cast-from-var3197-to-var2963 var1261!1)) ; Statement: $r9 = (java.lang.Throwable) $r8 
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {typeNames/-970077672=([org.hibernate.dialect.Dialect], org.hibernate.dialect.TypeNames), get/1201938295=([org.hibernate.dialect.TypeNames, int, long, int, int], java.lang.String), var3197-init=([], org.hibernate.HibernateException), arr-var1508-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1508=([java.lang.Integer], java.lang.Object), Int_valueOf/-1102777585=([long], java.lang.Long), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3197-to-var2963=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var468=org.hibernate.dialect.Dialect, var1289=r0, var2809=i0, var1125=l1, var377=i2, var2064=i3, var3130=org.hibernate.dialect.TypeNames, var3878=$r1, var1053=r2, var2227=null_type, var3197=org.hibernate.HibernateException, var1261=$r8, var1508=java.lang.Object, var1275=$r4, var342=$r5, var116=$r6, var119=$r7, var2963=java.lang.Throwable, var804=$r9}
; {org.hibernate.dialect.Dialect=var468, r0=var1289, i0=var2809, l1=var1125, i2=var377, i3=var2064, org.hibernate.dialect.TypeNames=var3130, $r1=var3878, r2=var1053, null_type=var2227, org.hibernate.HibernateException=var3197, $r8=var1261, java.lang.Object=var1508, $r4=var1275, $r5=var342, $r6=var116, $r7=var119, java.lang.Throwable=var2963, $r9=var804}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.dialect.Dialect;	i0 := @parameter0: int;	l1 := @parameter1: long;	i2 := @parameter2: int;	i3 := @parameter3: int;	$r1 = r0.<org.hibernate.dialect.Dialect: org.hibernate.dialect.TypeNames typeNames>;	r2 = virtualinvoke $r1.<org.hibernate.dialect.TypeNames: java.lang.String get(int,long,int,int)>(i0, l1, i2, i3);	if r2 != null goto return r2;	$r8 = new org.hibernate.HibernateException;	$r4 = newarray (java.lang.Object)[2];	$r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r4[0] = $r5;	$r6 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l1);	$r4[1] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("No type mapping for java.sql.Types code: %s, length: %s", $r4);	specialinvoke $r8.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7);	$r9 = (java.lang.Throwable) $r8;	throw $r9
;block_num 2