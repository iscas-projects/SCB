(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var331 0)
(declare-sort var2852 0)
(declare-sort var2505 0)
(declare-sort var2735 0)
(declare-sort var3100 0)
(declare-sort var2093 0)
(declare-sort var3683 0)
(declare-sort var2572 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun knownMappers/-970016727 (var331) var2505)
(declare-fun var2505_get/1088891777 (var2505 var2735) var2735)
(declare-fun cast-from-ClassObject-to-var2735 (ClassObject) var2735)
(declare-fun cast-from-var2735-to-var3100 (var2735) var3100)
(declare-fun var3683-init () var3683)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2735) String)
(declare-fun cast-from-var2093-to-var2735 (var2093) var2735)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1521833477 (var3683 String var2572) void)
(declare-fun cast-from-var2093-to-var2572 (var2093) var2572)
(declare-const null-var331 var331)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2852 var2852)
(declare-const null-var3100 var3100)
(declare-const null-var2093 var2093)
(declare-const var1555 var331) ; Statement: r0 := @this: org.apache.ibatis.binding.MapperRegistry 
(assert (not (= var1555 null-var331)))
(declare-const var565 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var565 null-ClassObject)))
(declare-const var3817 var2852) ; Statement: r5 := @parameter1: org.apache.ibatis.session.SqlSession 
(assert (not (= var3817 null-var2852)))
(define-const var2914 var2505 (knownMappers/-970016727 var1555)) ; Statement: $r2 = r0.<org.apache.ibatis.binding.MapperRegistry: java.util.Map knownMappers> 
(define-const var1043 var2735 (var2505_get/1088891777 var2914 (cast-from-ClassObject-to-var2735 var565))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3581 var3100 (cast-from-var2735-to-var3100 var1043)) ; Statement: r4 = (org.apache.ibatis.binding.MapperProxyFactory) $r3 
 ; Statement: if r4 != null goto $r6 = virtualinvoke r4.<org.apache.ibatis.binding.MapperProxyFactory: java.lang.Object newInstance(org.apache.ibatis.session.SqlSession)>(r5) 
(assert (not (not (= var3581 null-var3100)))) ; Negate: Cond: r4 != null  
(declare-const var3226 var2093) ; Statement: $r13 := @caughtexception 
(assert (not (= var3226 null-var2093)))
(define-const var2618 var3683 var3683-init) ; Statement: $r14 = new org.apache.ibatis.binding.BindingException 
(define-const var3155 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3155)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3155!1 String)
(assert (= var3155!1 ""))
(assert true)
(define-const var631 String (append/672562846 var3155!1 "Error getting mapper instance. Cause: ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error getting mapper instance. Cause: ") 
(declare-const var3155!2 String)
(assert (= var3155!2 (str.++ var3155!1 "Error getting mapper instance. Cause: ")))
(assert true)
(define-const var1012 String (append/-1031950772 var631 (cast-from-var2093-to-var2735 var3226))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13) 
(declare-const var631!1 String)
(assert (str.prefixof var631 var631!1))
(assert true)
(define-const var3927 String (toString/-2075883882 var1012)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1521833477 var2618 var3927 (cast-from-var2093-to-var2572 var3226))) ; Statement: specialinvoke $r14.<org.apache.ibatis.binding.BindingException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r13) 

(declare-const var2618!1 var3683)
(declare-const var3927!1 String)
(declare-const var3226!1 var2093)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {knownMappers/-970016727=([org.apache.ibatis.binding.MapperRegistry], java.util.Map), var2505_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var2735=([java.lang.Class], java.lang.Object), cast-from-var2735-to-var3100=([java.lang.Object], org.apache.ibatis.binding.MapperProxyFactory), var3683-init=([], org.apache.ibatis.binding.BindingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2093-to-var2735=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1521833477=([org.apache.ibatis.binding.BindingException, java.lang.String, java.lang.Throwable], void), cast-from-var2093-to-var2572=([java.lang.Exception], java.lang.Throwable)}
; {var331=org.apache.ibatis.binding.MapperRegistry, var1555=r0, var565=r1, var2852=org.apache.ibatis.session.SqlSession, var3817=r5, var2505=java.util.Map, var2914=$r2, var2735=java.lang.Object, var1043=$r3, var3100=org.apache.ibatis.binding.MapperProxyFactory, var3581=r4, var2093=java.lang.Exception, var3226=$r13, var3683=org.apache.ibatis.binding.BindingException, var2618=$r14, var3155=$r15, var631=$r16, var1012=$r17, var3927=$r18, var2572=java.lang.Throwable}
; {org.apache.ibatis.binding.MapperRegistry=var331, r0=var1555, r1=var565, org.apache.ibatis.session.SqlSession=var2852, r5=var3817, java.util.Map=var2505, $r2=var2914, java.lang.Object=var2735, $r3=var1043, org.apache.ibatis.binding.MapperProxyFactory=var3100, r4=var3581, java.lang.Exception=var2093, $r13=var3226, org.apache.ibatis.binding.BindingException=var3683, $r14=var2618, $r15=var3155, $r16=var631, $r17=var1012, $r18=var3927, java.lang.Throwable=var2572}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.binding.MapperRegistry;	r1 := @parameter0: java.lang.Class;	r5 := @parameter1: org.apache.ibatis.session.SqlSession;	$r2 = r0.<org.apache.ibatis.binding.MapperRegistry: java.util.Map knownMappers>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.apache.ibatis.binding.MapperProxyFactory) $r3;	if r4 != null goto $r6 = virtualinvoke r4.<org.apache.ibatis.binding.MapperProxyFactory: java.lang.Object newInstance(org.apache.ibatis.session.SqlSession)>(r5);	$r13 := @caughtexception;	$r14 = new org.apache.ibatis.binding.BindingException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error getting mapper instance. Cause: ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.apache.ibatis.binding.BindingException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r13);	throw $r14
;block_num 2