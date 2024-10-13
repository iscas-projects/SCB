(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var427 0)
(declare-sort var60 0)
(declare-sort var3865 0)
(declare-sort var3927 0)
(declare-sort var569 0)
(declare-sort var2210 0)
(declare-sort var820 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProperty/395598068 (var60) String)
(declare-fun getValue/480890313 (var3865 String) var3927)
(declare-fun getJavaType/-1340862304 (var60) ClassObject)
(declare-fun var2210-init () var2210)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3927) String)
(declare-fun cast-from-var569-to-var3927 (var569) var3927)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1707365385 (var2210 String var820) void)
(declare-fun cast-from-var569-to-var820 (var569) var820)
(declare-const null-var427 var427)
(declare-const null-var60 var60)
(declare-const null-var3865 var3865)
(declare-const null-var3927 var3927)
(declare-const null-ClassObject ClassObject)
(declare-const null-var569 var569)
(declare-const var2418 var427) ; Statement: r3 := @this: org.apache.ibatis.executor.resultset.DefaultResultSetHandler 
(assert (not (= var2418 null-var427)))
(declare-const var1707 var60) ; Statement: r0 := @parameter0: org.apache.ibatis.mapping.ResultMapping 
(assert (not (= var1707 null-var60)))
(declare-const var1121 var3865) ; Statement: r2 := @parameter1: org.apache.ibatis.reflection.MetaObject 
(assert (not (= var1121 null-var3865)))
(assert true)
(define-const var2110 String (getProperty/395598068 var1707)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.mapping.ResultMapping: java.lang.String getProperty()>() 
(assert true)
(define-const var3453 var3927 (getValue/480890313 var1121 var2110)) ; Statement: r17 = virtualinvoke r2.<org.apache.ibatis.reflection.MetaObject: java.lang.Object getValue(java.lang.String)>(r1) 
 ; Statement: if r17 != null goto $r4 = r3.<org.apache.ibatis.executor.resultset.DefaultResultSetHandler: org.apache.ibatis.reflection.factory.ObjectFactory objectFactory> 
(assert (not (not (= var3453 null-var3927)))) ; Negate: Cond: r17 != null  
(assert true)
(define-const var72 ClassObject (getJavaType/-1340862304 var1707)) ; Statement: r18 = virtualinvoke r0.<org.apache.ibatis.mapping.ResultMapping: java.lang.Class getJavaType()>() 
 ; Statement: if r18 != null goto $r6 = r3.<org.apache.ibatis.executor.resultset.DefaultResultSetHandler: org.apache.ibatis.reflection.factory.ObjectFactory objectFactory> 
(assert (not (not (= var72 null-ClassObject)))) ; Negate: Cond: r18 != null  
(declare-const var2990 var569) ; Statement: $r8 := @caughtexception 
(assert (not (= var2990 null-var569)))
(define-const var711 var2210 var2210-init) ; Statement: $r9 = new org.apache.ibatis.executor.ExecutorException 
(define-const var2032 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2032)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2032!1 String)
(assert (= var2032!1 ""))
(assert true)
(define-const var3871 String (append/672562846 var2032!1 "Error instantiating collection property for result \u0027")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error instantiating collection property for result \'") 
(declare-const var2032!2 String)
(assert (= var2032!2 (str.++ var2032!1 "Error instantiating collection property for result \u0027")))
(assert true)
(define-const var1262 String (getProperty/395598068 var1707)) ; Statement: $r11 = virtualinvoke r0.<org.apache.ibatis.mapping.ResultMapping: java.lang.String getProperty()>() 
(assert true)
(define-const var1322 String (append/672562846 var3871 var1262)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3871!1 String)
(assert (= var3871!1 (str.++ var3871 var1262)))
(assert true)
(define-const var3007 String (append/672562846 var1322 "\u0027.  Cause: ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.  Cause: ") 
(declare-const var1322!1 String)
(assert (= var1322!1 (str.++ var1322 "\u0027.  Cause: ")))
(assert true)
(define-const var2292 String (append/-1031950772 var3007 (cast-from-var569-to-var3927 var2990))) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var3007!1 String)
(assert (str.prefixof var3007 var3007!1))
(assert true)
(define-const var2111 String (toString/-2075883882 var2292)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1707365385 var711 var2111 (cast-from-var569-to-var820 var2990))) ; Statement: specialinvoke $r9.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var711!1 var2210)
(declare-const var2111!1 String)
(declare-const var2990!1 var569)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getProperty/395598068=([org.apache.ibatis.mapping.ResultMapping], java.lang.String), getValue/480890313=([org.apache.ibatis.reflection.MetaObject, java.lang.String], java.lang.Object), getJavaType/-1340862304=([org.apache.ibatis.mapping.ResultMapping], java.lang.Class), var2210-init=([], org.apache.ibatis.executor.ExecutorException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var569-to-var3927=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1707365385=([org.apache.ibatis.executor.ExecutorException, java.lang.String, java.lang.Throwable], void), cast-from-var569-to-var820=([java.lang.Exception], java.lang.Throwable)}
; {var427=org.apache.ibatis.executor.resultset.DefaultResultSetHandler, var2418=r3, var60=org.apache.ibatis.mapping.ResultMapping, var1707=r0, var3865=org.apache.ibatis.reflection.MetaObject, var1121=r2, var2110=r1, var3927=java.lang.Object, var3453=r17, var72=r18, var569=java.lang.Exception, var2990=$r8, var2210=org.apache.ibatis.executor.ExecutorException, var711=$r9, var2032=$r10, var3871=$r12, var1262=$r11, var1322=$r13, var3007=$r14, var2292=$r15, var2111=$r16, var820=java.lang.Throwable}
; {org.apache.ibatis.executor.resultset.DefaultResultSetHandler=var427, r3=var2418, org.apache.ibatis.mapping.ResultMapping=var60, r0=var1707, org.apache.ibatis.reflection.MetaObject=var3865, r2=var1121, r1=var2110, java.lang.Object=var3927, r17=var3453, r18=var72, java.lang.Exception=var569, $r8=var2990, org.apache.ibatis.executor.ExecutorException=var2210, $r9=var711, $r10=var2032, $r12=var3871, $r11=var1262, $r13=var1322, $r14=var3007, $r15=var2292, $r16=var2111, java.lang.Throwable=var820}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.ibatis.executor.resultset.DefaultResultSetHandler;	r0 := @parameter0: org.apache.ibatis.mapping.ResultMapping;	r2 := @parameter1: org.apache.ibatis.reflection.MetaObject;	r1 = virtualinvoke r0.<org.apache.ibatis.mapping.ResultMapping: java.lang.String getProperty()>();	r17 = virtualinvoke r2.<org.apache.ibatis.reflection.MetaObject: java.lang.Object getValue(java.lang.String)>(r1);	if r17 != null goto $r4 = r3.<org.apache.ibatis.executor.resultset.DefaultResultSetHandler: org.apache.ibatis.reflection.factory.ObjectFactory objectFactory>;	r18 = virtualinvoke r0.<org.apache.ibatis.mapping.ResultMapping: java.lang.Class getJavaType()>();	if r18 != null goto $r6 = r3.<org.apache.ibatis.executor.resultset.DefaultResultSetHandler: org.apache.ibatis.reflection.factory.ObjectFactory objectFactory>;	$r8 := @caughtexception;	$r9 = new org.apache.ibatis.executor.ExecutorException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error instantiating collection property for result \'");	$r11 = virtualinvoke r0.<org.apache.ibatis.mapping.ResultMapping: java.lang.String getProperty()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.  Cause: ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 3