(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var817 0)
(declare-sort var250 0)
(declare-sort var1059 0)
(declare-sort var1378 0)
(declare-sort var1583 0)
(declare-sort var3784 0)
(declare-sort var41 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun processes/1730374953 (var1059) var250)
(declare-fun cast-from-var817-to-var1059 (var817) var1059)
(declare-fun var1378_isEmpty/-1652560782 (var1378) Bool)
(declare-fun cast-from-var250-to-var1378 (var250) var1378)
(declare-fun var3784-init () var3784)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var41) String)
(declare-fun cast-from-var1583-to-var41 (var1583) var41)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var3784 String var41) void)
(declare-fun cast-from-var3784-to-var41 (var3784) var41)
(declare-const null-var817 var817)
(declare-const null-Bool Bool)
(declare-const null-var1583 var1583)
(declare-const var1136 var817) ; Statement: r0 := @this: org.hibernate.engine.spi.ActionQueue$AfterTransactionCompletionProcessQueue 
(assert (not (= var1136 null-var817)))
(declare-const var1733 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var1733 null-Bool)))
(assert true) ; Non Conditional
(define-const var1237 var250 (processes/1730374953 (cast-from-var817-to-var1059 var1136))) ; Statement: $r26 = r0.<org.hibernate.engine.spi.ActionQueue$AfterTransactionCompletionProcessQueue: java.util.Queue processes> 
(define-const var1045 Bool (var1378_isEmpty/-1652560782 (cast-from-var250-to-var1378 var1237))) ; Statement: $z2 = interfaceinvoke $r26.<java.util.Queue: boolean isEmpty()>() 
 ; Statement: if $z2 != 0 goto $r1 = r0.<org.hibernate.engine.spi.ActionQueue$AfterTransactionCompletionProcessQueue: org.hibernate.engine.spi.SessionImplementor session> 
(assert (not (not (= (ite var1045 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(declare-const var3012 var1583) ; Statement: $r19 := @caughtexception 
(assert (not (= var3012 null-var1583)))
(define-const var99 var3784 var3784-init) ; Statement: $r28 = new org.hibernate.HibernateException 
(define-const var46 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var46)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var46!1 String)
(assert (= var46!1 ""))
(assert true)
(define-const var2718 String (append/672562846 var46!1 "Unable to perform afterTransactionCompletion callback: ")) ; Statement: $r23 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to perform afterTransactionCompletion callback: ") 
(declare-const var46!2 String)
(assert (= var46!2 (str.++ var46!1 "Unable to perform afterTransactionCompletion callback: ")))
(assert true)
(define-const var110 String (getMessage/849299655 (cast-from-var1583-to-var41 var3012))) ; Statement: $r22 = virtualinvoke $r19.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var2890 String (append/672562846 var2718 var110)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2718!1 String)
(assert (= var2718!1 (str.++ var2718 var110)))
(assert true)
(define-const var1781 String (toString/-2075883882 var2890)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var99 var1781 (cast-from-var1583-to-var41 var3012))) ; Statement: specialinvoke $r28.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r25, $r19) 

(declare-const var99!1 var3784)
(declare-const var1781!1 String)
(declare-const var3012!1 var1583)
(define-const var2328 var41 (cast-from-var3784-to-var41 var99!1)) ; Statement: $r29 = (java.lang.Throwable) $r28 
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {processes/1730374953=([org.hibernate.engine.spi.ActionQueue$AbstractTransactionCompletionProcessQueue], java.util.Queue), cast-from-var817-to-var1059=([org.hibernate.engine.spi.ActionQueue$AfterTransactionCompletionProcessQueue], org.hibernate.engine.spi.ActionQueue$AbstractTransactionCompletionProcessQueue), var1378_isEmpty/-1652560782=([java.util.Collection], boolean), cast-from-var250-to-var1378=([java.util.Queue], java.util.Collection), var3784-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1583-to-var41=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var3784-to-var41=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var817=org.hibernate.engine.spi.ActionQueue$AfterTransactionCompletionProcessQueue, var1136=r0, var1733=z1, var250=java.util.Queue, var1059=org.hibernate.engine.spi.ActionQueue$AbstractTransactionCompletionProcessQueue, var1237=$r26, var1378=java.util.Collection, var1045=$z2, var1583=java.lang.Exception, var3012=$r19, var3784=org.hibernate.HibernateException, var99=$r28, var46=$r27, var2718=$r23, var41=java.lang.Throwable, var110=$r22, var2890=$r24, var1781=$r25, var2328=$r29}
; {org.hibernate.engine.spi.ActionQueue$AfterTransactionCompletionProcessQueue=var817, r0=var1136, z1=var1733, java.util.Queue=var250, org.hibernate.engine.spi.ActionQueue$AbstractTransactionCompletionProcessQueue=var1059, $r26=var1237, java.util.Collection=var1378, $z2=var1045, java.lang.Exception=var1583, $r19=var3012, org.hibernate.HibernateException=var3784, $r28=var99, $r27=var46, $r23=var2718, java.lang.Throwable=var41, $r22=var110, $r24=var2890, $r25=var1781, $r29=var2328}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.spi.ActionQueue$AfterTransactionCompletionProcessQueue;	z1 := @parameter0: boolean;	$r26 = r0.<org.hibernate.engine.spi.ActionQueue$AfterTransactionCompletionProcessQueue: java.util.Queue processes>;	$z2 = interfaceinvoke $r26.<java.util.Queue: boolean isEmpty()>();	if $z2 != 0 goto $r1 = r0.<org.hibernate.engine.spi.ActionQueue$AfterTransactionCompletionProcessQueue: org.hibernate.engine.spi.SessionImplementor session>;	$r19 := @caughtexception;	$r28 = new org.hibernate.HibernateException;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to perform afterTransactionCompletion callback: ");	$r22 = virtualinvoke $r19.<java.lang.Exception: java.lang.String getMessage()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r28.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r25, $r19);	$r29 = (java.lang.Throwable) $r28;	throw $r29
;block_num 3