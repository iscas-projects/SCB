(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var468 0)
(declare-sort var3054 0)
(declare-sort var56 0)
(declare-sort var2875 0)
(declare-sort var553 0)
(declare-sort var3936 0)
(declare-sort var1092 0)
(declare-sort var1746 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3054_size/-1187153784 (var3054) Int)
(declare-fun var1092-init () var1092)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var56) String)
(declare-fun cast-from-var3054-to-var56 (var3054) var56)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-227409803 (var1092 String var1746) void)
(declare-fun cast-from-var3936-to-var1746 (var3936) var1746)
(declare-fun cast-from-var1092-to-var1746 (var1092) var1746)
(declare-const null-var468 var468)
(declare-const null-var3054 var3054)
(declare-const null-var56 var56)
(declare-const null-var2875 var2875)
(declare-const var468-LOG var553)
(declare-const null-var3936 var3936)
(declare-const var1352 var468) ; Statement: r33 := @this: org.hibernate.engine.jndi.internal.JndiServiceImpl 
(assert (not (= var1352 null-var468)))
(declare-const var1156 var3054) ; Statement: r34 := @parameter0: javax.naming.Name 
(assert (not (= var1156 null-var3054)))
(declare-const var125 var56) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var125 null-var56)))
(declare-const var2260 var2875) ; Statement: r1 := @parameter2: javax.naming.Context 
(assert (not (= var2260 null-var2875)))
(define-const var3748 var553 var468-LOG) ; Statement: $r0 = <org.hibernate.engine.jndi.internal.JndiServiceImpl: org.hibernate.internal.CoreMessageLogger LOG> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2475 var3936) ; Statement: $r26 := @caughtexception 
(assert (not (= var2475 null-var3936)))
(define-const var1060 Int (var3054_size/-1187153784 var1156)) ; Statement: $i1 = interfaceinvoke r34.<javax.naming.Name: int size()>() 
 ; Statement: if $i1 != 1 goto r35 = r1 
(assert (not (not (= var1060 1)))) ; Negate: Cond: $i1 != 1  
(define-const var3742 var1092 var1092-init) ; Statement: $r39 = new org.hibernate.engine.jndi.JndiException 
(define-const var1256 String String-init) ; Statement: $r38 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1256)) ; Statement: specialinvoke $r38.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1256!1 String)
(assert (= var1256!1 ""))
(assert true)
(define-const var2860 String (append/672562846 var1256!1 "Error performing bind [")) ; Statement: $r29 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error performing bind [") 
(declare-const var1256!2 String)
(assert (= var1256!2 (str.++ var1256!1 "Error performing bind [")))
(assert true)
(define-const var3132 String (append/-1031950772 var2860 (cast-from-var3054-to-var56 var1156))) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r34) 
(declare-const var2860!1 String)
(assert (str.prefixof var2860 var2860!1))
(assert true)
(define-const var1429 String (append/672562846 var3132 "]")) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3132!1 String)
(assert (= var3132!1 (str.++ var3132 "]")))
(assert true)
(define-const var1433 String (toString/-2075883882 var1429)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-227409803 var3742 var1433 (cast-from-var3936-to-var1746 var2475))) ; Statement: specialinvoke $r39.<org.hibernate.engine.jndi.JndiException: void <init>(java.lang.String,java.lang.Throwable)>($r32, $r26) 

(declare-const var3742!1 var1092)
(declare-const var1433!1 String)
(declare-const var2475!1 var3936)
(define-const var2607 var1746 (cast-from-var1092-to-var1746 var3742!1)) ; Statement: $r45 = (java.lang.Throwable) $r39 
 ; Statement: throw $r45 
(check-sat)
(get-model)
(get-unsat-core)
; {var3054_size/-1187153784=([javax.naming.Name], int), var1092-init=([], org.hibernate.engine.jndi.JndiException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3054-to-var56=([javax.naming.Name], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-227409803=([org.hibernate.engine.jndi.JndiException, java.lang.String, java.lang.Throwable], void), cast-from-var3936-to-var1746=([java.lang.Exception], java.lang.Throwable), cast-from-var1092-to-var1746=([org.hibernate.engine.jndi.JndiException], java.lang.Throwable)}
; {var468=org.hibernate.engine.jndi.internal.JndiServiceImpl, var1352=r33, var3054=javax.naming.Name, var1156=r34, var56=java.lang.Object, var125=r2, var2875=javax.naming.Context, var2260=r1, var553=org.hibernate.internal.CoreMessageLogger, var3748=$r0, var3936=java.lang.Exception, var2475=$r26, var1060=$i1, var1092=org.hibernate.engine.jndi.JndiException, var3742=$r39, var1256=$r38, var2860=$r29, var3132=$r30, var1429=$r31, var1433=$r32, var1746=java.lang.Throwable, var2607=$r45}
; {org.hibernate.engine.jndi.internal.JndiServiceImpl=var468, r33=var1352, javax.naming.Name=var3054, r34=var1156, java.lang.Object=var56, r2=var125, javax.naming.Context=var2875, r1=var2260, org.hibernate.internal.CoreMessageLogger=var553, $r0=var3748, java.lang.Exception=var3936, $r26=var2475, $i1=var1060, org.hibernate.engine.jndi.JndiException=var1092, $r39=var3742, $r38=var1256, $r29=var2860, $r30=var3132, $r31=var1429, $r32=var1433, java.lang.Throwable=var1746, $r45=var2607}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r33 := @this: org.hibernate.engine.jndi.internal.JndiServiceImpl;	r34 := @parameter0: javax.naming.Name;	r2 := @parameter1: java.lang.Object;	r1 := @parameter2: javax.naming.Context;	$r0 = <org.hibernate.engine.jndi.internal.JndiServiceImpl: org.hibernate.internal.CoreMessageLogger LOG>;	$r26 := @caughtexception;	$i1 = interfaceinvoke r34.<javax.naming.Name: int size()>();	if $i1 != 1 goto r35 = r1;	$r39 = new org.hibernate.engine.jndi.JndiException;	$r38 = new java.lang.StringBuilder;	specialinvoke $r38.<java.lang.StringBuilder: void <init>()>();	$r29 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error performing bind [");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r34);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r39.<org.hibernate.engine.jndi.JndiException: void <init>(java.lang.String,java.lang.Throwable)>($r32, $r26);	$r45 = (java.lang.Throwable) $r39;	throw $r45
;block_num 3