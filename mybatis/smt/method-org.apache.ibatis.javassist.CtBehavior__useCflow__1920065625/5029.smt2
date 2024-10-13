(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2797 0)
(declare-sort var401 0)
(declare-sort var742 0)
(declare-sort var2606 0)
(declare-sort var1829 0)
(declare-sort var1401 0)
(declare-sort var191 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun declaringClass/-1057954477 (var2606) var742)
(declare-fun cast-from-var2797-to-var2606 (var2797) var2606)
(declare-fun checkModify/1228467550 (var742) void)
(declare-fun getClassPool/1566105250 (var742) var1829)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getName/1611768686 (var742) String)
(declare-fun recordCflow/-2037078600 (var1829 String String String) void)
(declare-fun var191-init () var191)
(declare-fun <init>/1879686810 (var191 var1401) void)
(declare-const null-var2797 var2797)
(declare-const null-String String)
(declare-const null-var1401 var1401)
(declare-const var3021 var2797) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtBehavior 
(assert (not (= var3021 null-var2797)))
(declare-const var1802 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var1802 null-String)))
(define-const var3378 var742 (declaringClass/-1057954477 (cast-from-var2797-to-var2606 var3021))) ; Statement: r1 = r0.<org.apache.ibatis.javassist.CtBehavior: org.apache.ibatis.javassist.CtClass declaringClass> 
(assert true)
;(assert (checkModify/1228467550 var3378)) ; Statement: virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: void checkModify()>() 

(declare-const var3378!1 var742)
(assert true)
(define-const var1438 var1829 (getClassPool/1566105250 var3378!1)) ; Statement: r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.ClassPool getClassPool()>() 
(define-const var2327 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var3050 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3050)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3050!1 String)
(assert (= var3050!1 ""))
(assert true)
(define-const var850 String (append/672562846 var3050!1 "_cflow$")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_cflow$") 
(declare-const var3050!2 String)
(assert (= var3050!2 (str.++ var3050!1 "_cflow$")))
(define-const var3096 Int var2327) ; Statement: $i0 = i1 
(define-const var2327!1 Int (+ var2327 1)) ; Statement: i1 = i1 + 1 
(assert true)
(define-const var3418 String (append/-1001720160 var850 var3096)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var850!1 String)
(assert (str.prefixof var850 var850!1))
(assert true)
(define-const var2495 String (toString/-2075883882 var3418)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1005 var1401) ; Statement: $r9 := @caughtexception 
(assert (not (= var1005 null-var1401)))
 ; Statement: goto [?= $r11 = r0.<org.apache.ibatis.javassist.CtBehavior: org.apache.ibatis.javassist.CtClass declaringClass>] 
(assert true) ; Non Conditional
(define-const var3126 var742 (declaringClass/-1057954477 (cast-from-var2797-to-var2606 var3021))) ; Statement: $r11 = r0.<org.apache.ibatis.javassist.CtBehavior: org.apache.ibatis.javassist.CtClass declaringClass> 
(assert true)
(define-const var2880 String (getName/1611768686 var3126)) ; Statement: $r12 = virtualinvoke $r11.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
;(assert (recordCflow/-2037078600 var1438 var1802 var2880 var2495)) ; Statement: virtualinvoke r2.<org.apache.ibatis.javassist.ClassPool: void recordCflow(java.lang.String,java.lang.String,java.lang.String)>(r10, $r12, $r6) 

(declare-const var1438!1 var1829)
(declare-const var1802!1 String)
(declare-const var2880!1 String)
(declare-const var2495!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1094 var1401) ; Statement: $r7 := @caughtexception 
(assert (not (= var1094 null-var1401)))
(define-const var1484 var191 var191-init) ; Statement: $r8 = new org.apache.ibatis.javassist.CannotCompileException 
(assert true)
;(assert (<init>/1879686810 var1484 var1094)) ; Statement: specialinvoke $r8.<org.apache.ibatis.javassist.CannotCompileException: void <init>(org.apache.ibatis.javassist.NotFoundException)>($r7) 

(declare-const var1484!1 var191)
(declare-const var1094!1 var1401)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {declaringClass/-1057954477=([org.apache.ibatis.javassist.CtMember], org.apache.ibatis.javassist.CtClass), cast-from-var2797-to-var2606=([org.apache.ibatis.javassist.CtBehavior], org.apache.ibatis.javassist.CtMember), checkModify/1228467550=([org.apache.ibatis.javassist.CtClass], void), getClassPool/1566105250=([org.apache.ibatis.javassist.CtClass], org.apache.ibatis.javassist.ClassPool), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), recordCflow/-2037078600=([org.apache.ibatis.javassist.ClassPool, java.lang.String, java.lang.String, java.lang.String], void), var191-init=([], org.apache.ibatis.javassist.CannotCompileException), <init>/1879686810=([org.apache.ibatis.javassist.CannotCompileException, org.apache.ibatis.javassist.NotFoundException], void)}
; {var2797=org.apache.ibatis.javassist.CtBehavior, var3021=r0, var1802=r10, var401=null_type, var742=org.apache.ibatis.javassist.CtClass, var2606=org.apache.ibatis.javassist.CtMember, var3378=r1, var1829=org.apache.ibatis.javassist.ClassPool, var1438=r2, var2327=i1, var3050=$r3, var850=$r4, var3096=$i0, var3418=$r5, var2495=$r6, var1401=org.apache.ibatis.javassist.NotFoundException, var1005=$r9, var3126=$r11, var2880=$r12, var1094=$r7, var191=org.apache.ibatis.javassist.CannotCompileException, var1484=$r8}
; {org.apache.ibatis.javassist.CtBehavior=var2797, r0=var3021, r10=var1802, null_type=var401, org.apache.ibatis.javassist.CtClass=var742, org.apache.ibatis.javassist.CtMember=var2606, r1=var3378, org.apache.ibatis.javassist.ClassPool=var1829, r2=var1438, i1=var2327, $r3=var3050, $r4=var850, $i0=var3096, $r5=var3418, $r6=var2495, org.apache.ibatis.javassist.NotFoundException=var1401, $r9=var1005, $r11=var3126, $r12=var2880, $r7=var1094, org.apache.ibatis.javassist.CannotCompileException=var191, $r8=var1484}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CtBehavior;	r10 := @parameter0: java.lang.String;	r1 = r0.<org.apache.ibatis.javassist.CtBehavior: org.apache.ibatis.javassist.CtClass declaringClass>;	virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: void checkModify()>();	r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.ClassPool getClassPool()>();	i1 = 0;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_cflow$");	$i0 = i1;	i1 = i1 + 1;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 := @caughtexception;	goto [?= $r11 = r0.<org.apache.ibatis.javassist.CtBehavior: org.apache.ibatis.javassist.CtClass declaringClass>];	$r11 = r0.<org.apache.ibatis.javassist.CtBehavior: org.apache.ibatis.javassist.CtClass declaringClass>;	$r12 = virtualinvoke $r11.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	virtualinvoke r2.<org.apache.ibatis.javassist.ClassPool: void recordCflow(java.lang.String,java.lang.String,java.lang.String)>(r10, $r12, $r6);	$r7 := @caughtexception;	$r8 = new org.apache.ibatis.javassist.CannotCompileException;	specialinvoke $r8.<org.apache.ibatis.javassist.CannotCompileException: void <init>(org.apache.ibatis.javassist.NotFoundException)>($r7);	throw $r8
;block_num 5