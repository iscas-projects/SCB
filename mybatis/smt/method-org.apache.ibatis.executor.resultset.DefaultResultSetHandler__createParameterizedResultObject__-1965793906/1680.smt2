(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3310 0)
(declare-sort var3402 0)
(declare-sort var2741 0)
(declare-sort var1812 0)
(declare-sort var356 0)
(declare-sort var345 0)
(declare-sort var1508 0)
(declare-sort var3616 0)
(declare-sort var3860 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2741_iterator/-912451715 (var2741) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var356)
(declare-fun cast-from-var356-to-var345 (var356) var345)
(declare-fun getJavaType/-1340862304 (var345) ClassObject)
(declare-fun getColumn/-1561699629 (var345) String)
(declare-fun var3616-init () var3616)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var356) String)
(declare-fun cast-from-var345-to-var356 (var345) var356)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1707365385 (var3616 String var3860) void)
(declare-fun cast-from-var1508-to-var3860 (var1508) var3860)
(declare-const null-var3310 var3310)
(declare-const null-var3402 var3402)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2741 var2741)
(declare-const null-String String)
(declare-const null-var1508 var1508)
(declare-const var1708 var3310) ; Statement: r2 := @this: org.apache.ibatis.executor.resultset.DefaultResultSetHandler 
(assert (not (= var1708 null-var3310)))
(declare-const var1 var3402) ; Statement: r13 := @parameter0: org.apache.ibatis.executor.resultset.ResultSetWrapper 
(assert (not (= var1 null-var3402)))
(declare-const var872 ClassObject) ; Statement: r3 := @parameter1: java.lang.Class 
(assert (not (= var872 null-ClassObject)))
(declare-const var290 var2741) ; Statement: r0 := @parameter2: java.util.List 
(assert (not (= var290 null-var2741)))
(declare-const var3967 var2741) ; Statement: r4 := @parameter3: java.util.List 
(assert (not (= var3967 null-var2741)))
(declare-const var1063 var2741) ; Statement: r5 := @parameter4: java.util.List 
(assert (not (= var1063 null-var2741)))
(declare-const var2247 String) ; Statement: r14 := @parameter5: java.lang.String 
(assert (not (= var2247 null-String)))
(define-const var3856 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3729 Iterator (var2741_iterator/-912451715 var290)) ; Statement: r1 = interfaceinvoke r0.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2690 Bool (Iterator_hasNext/-1669924200 var3729)) ; Statement: $z0 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var2690 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3709 var356 (Iterator_next/-1124697587 var3729)) ; Statement: $r7 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3729!1 Iterator)
(define-const var1558 var345 (cast-from-var356-to-var345 var3709)) ; Statement: r8 = (org.apache.ibatis.mapping.ResultMapping) $r7 
(assert true)
(define-const var1056 ClassObject (getJavaType/-1340862304 var1558)) ; Statement: r9 = virtualinvoke r8.<org.apache.ibatis.mapping.ResultMapping: java.lang.Class getJavaType()>() 
(assert true)
(define-const var732 String (getColumn/-1561699629 var1558)) ; Statement: r10 = virtualinvoke r8.<org.apache.ibatis.mapping.ResultMapping: java.lang.String getColumn()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3859 var1508) ; Statement: $r23 := @caughtexception 
(assert (not (= var3859 null-var1508)))
(define-const var1608 var3616 var3616-init) ; Statement: $r24 = new org.apache.ibatis.executor.ExecutorException 
(define-const var3100 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3100)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3100!1 String)
(assert (= var3100!1 ""))
(assert true)
(define-const var3087 String (append/672562846 var3100!1 "Could not process result for mapping: ")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not process result for mapping: ") 
(declare-const var3100!2 String)
(assert (= var3100!2 (str.++ var3100!1 "Could not process result for mapping: ")))
(assert true)
(define-const var3511 String (append/-1031950772 var3087 (cast-from-var345-to-var356 var1558))) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r8) 
(declare-const var3087!1 String)
(assert (str.prefixof var3087 var3087!1))
(assert true)
(define-const var896 String (toString/-2075883882 var3511)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1707365385 var1608 var896 (cast-from-var1508-to-var3860 var3859))) ; Statement: specialinvoke $r24.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String,java.lang.Throwable)>($r28, $r23) 

(declare-const var1608!1 var3616)
(declare-const var896!1 String)
(declare-const var3859!1 var1508)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var2741_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var356-to-var345=([java.lang.Object], org.apache.ibatis.mapping.ResultMapping), getJavaType/-1340862304=([org.apache.ibatis.mapping.ResultMapping], java.lang.Class), getColumn/-1561699629=([org.apache.ibatis.mapping.ResultMapping], java.lang.String), var3616-init=([], org.apache.ibatis.executor.ExecutorException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var345-to-var356=([org.apache.ibatis.mapping.ResultMapping], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1707365385=([org.apache.ibatis.executor.ExecutorException, java.lang.String, java.lang.Throwable], void), cast-from-var1508-to-var3860=([java.lang.Exception], java.lang.Throwable)}
; {var3310=org.apache.ibatis.executor.resultset.DefaultResultSetHandler, var1708=r2, var3402=org.apache.ibatis.executor.resultset.ResultSetWrapper, var1=r13, var872=r3, var2741=java.util.List, var290=r0, var3967=r4, var1063=r5, var2247=r14, var1812=null_type, var3856=z1, var3729=r1, var2690=$z0, var356=java.lang.Object, var3709=$r7, var345=org.apache.ibatis.mapping.ResultMapping, var1558=r8, var1056=r9, var732=r10, var1508=java.lang.Exception, var3859=$r23, var3616=org.apache.ibatis.executor.ExecutorException, var1608=$r24, var3100=$r25, var3087=$r26, var3511=$r27, var896=$r28, var3860=java.lang.Throwable}
; {org.apache.ibatis.executor.resultset.DefaultResultSetHandler=var3310, r2=var1708, org.apache.ibatis.executor.resultset.ResultSetWrapper=var3402, r13=var1, r3=var872, java.util.List=var2741, r0=var290, r4=var3967, r5=var1063, r14=var2247, null_type=var1812, z1=var3856, r1=var3729, $z0=var2690, java.lang.Object=var356, $r7=var3709, org.apache.ibatis.mapping.ResultMapping=var345, r8=var1558, r9=var1056, r10=var732, java.lang.Exception=var1508, $r23=var3859, org.apache.ibatis.executor.ExecutorException=var3616, $r24=var1608, $r25=var3100, $r26=var3087, $r27=var3511, $r28=var896, java.lang.Throwable=var3860}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.ibatis.executor.resultset.DefaultResultSetHandler;	r13 := @parameter0: org.apache.ibatis.executor.resultset.ResultSetWrapper;	r3 := @parameter1: java.lang.Class;	r0 := @parameter2: java.util.List;	r4 := @parameter3: java.util.List;	r5 := @parameter4: java.util.List;	r14 := @parameter5: java.lang.String;	z1 = 0;	r1 = interfaceinvoke r0.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto (branch);	$r7 = interfaceinvoke r1.<java.util.Iterator: java.lang.Object next()>();	r8 = (org.apache.ibatis.mapping.ResultMapping) $r7;	r9 = virtualinvoke r8.<org.apache.ibatis.mapping.ResultMapping: java.lang.Class getJavaType()>();	r10 = virtualinvoke r8.<org.apache.ibatis.mapping.ResultMapping: java.lang.String getColumn()>();	$r23 := @caughtexception;	$r24 = new org.apache.ibatis.executor.ExecutorException;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not process result for mapping: ");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r8);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String,java.lang.Throwable)>($r28, $r23);	throw $r24
;block_num 4