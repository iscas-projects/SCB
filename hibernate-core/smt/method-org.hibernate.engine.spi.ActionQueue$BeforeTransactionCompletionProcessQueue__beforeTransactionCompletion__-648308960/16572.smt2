(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2989 0)
(declare-sort var294 0)
(declare-sort var287 0)
(declare-sort var2571 0)
(declare-sort var309 0)
(declare-sort var3472 0)
(declare-sort var666 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun processes/1730374953 (var287) var294)
(declare-fun cast-from-var2989-to-var287 (var2989) var287)
(declare-fun var2571_isEmpty/-1652560782 (var2571) Bool)
(declare-fun cast-from-var294-to-var2571 (var294) var2571)
(declare-fun var3472-init () var3472)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var666) String)
(declare-fun cast-from-var309-to-var666 (var309) var666)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var3472 String var666) void)
(declare-fun cast-from-var3472-to-var666 (var3472) var666)
(declare-const null-var2989 var2989)
(declare-const null-var309 var309)
(declare-const var190 var2989) ; Statement: r0 := @this: org.hibernate.engine.spi.ActionQueue$BeforeTransactionCompletionProcessQueue 
(assert (not (= var190 null-var2989)))
(assert true) ; Non Conditional
(define-const var3974 var294 (processes/1730374953 (cast-from-var2989-to-var287 var190))) ; Statement: $r1 = r0.<org.hibernate.engine.spi.ActionQueue$BeforeTransactionCompletionProcessQueue: java.util.Queue processes> 
(define-const var2437 Bool (var2571_isEmpty/-1652560782 (cast-from-var294-to-var2571 var3974))) ; Statement: $z0 = interfaceinvoke $r1.<java.util.Queue: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var2437 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(declare-const var2059 var309) ; Statement: $r6 := @caughtexception 
(assert (not (= var2059 null-var309)))
(define-const var2882 var3472 var3472-init) ; Statement: $r14 = new org.hibernate.HibernateException 
(define-const var3208 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3208)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3208!1 String)
(assert (= var3208!1 ""))
(assert true)
(define-const var3018 String (append/672562846 var3208!1 "Unable to perform beforeTransactionCompletion callback: ")) ; Statement: $r10 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to perform beforeTransactionCompletion callback: ") 
(declare-const var3208!2 String)
(assert (= var3208!2 (str.++ var3208!1 "Unable to perform beforeTransactionCompletion callback: ")))
(assert true)
(define-const var1252 String (getMessage/849299655 (cast-from-var309-to-var666 var2059))) ; Statement: $r9 = virtualinvoke $r6.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var3395 String (append/672562846 var3018 var1252)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3018!1 String)
(assert (= var3018!1 (str.++ var3018 var1252)))
(assert true)
(define-const var927 String (toString/-2075883882 var3395)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var2882 var927 (cast-from-var309-to-var666 var2059))) ; Statement: specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6) 

(declare-const var2882!1 var3472)
(declare-const var927!1 String)
(declare-const var2059!1 var309)
(define-const var696 var666 (cast-from-var3472-to-var666 var2882!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {processes/1730374953=([org.hibernate.engine.spi.ActionQueue$AbstractTransactionCompletionProcessQueue], java.util.Queue), cast-from-var2989-to-var287=([org.hibernate.engine.spi.ActionQueue$BeforeTransactionCompletionProcessQueue], org.hibernate.engine.spi.ActionQueue$AbstractTransactionCompletionProcessQueue), var2571_isEmpty/-1652560782=([java.util.Collection], boolean), cast-from-var294-to-var2571=([java.util.Queue], java.util.Collection), var3472-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var309-to-var666=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var3472-to-var666=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2989=org.hibernate.engine.spi.ActionQueue$BeforeTransactionCompletionProcessQueue, var190=r0, var294=java.util.Queue, var287=org.hibernate.engine.spi.ActionQueue$AbstractTransactionCompletionProcessQueue, var3974=$r1, var2571=java.util.Collection, var2437=$z0, var309=java.lang.Exception, var2059=$r6, var3472=org.hibernate.HibernateException, var2882=$r14, var3208=$r13, var3018=$r10, var666=java.lang.Throwable, var1252=$r9, var3395=$r11, var927=$r12, var696=$r15}
; {org.hibernate.engine.spi.ActionQueue$BeforeTransactionCompletionProcessQueue=var2989, r0=var190, java.util.Queue=var294, org.hibernate.engine.spi.ActionQueue$AbstractTransactionCompletionProcessQueue=var287, $r1=var3974, java.util.Collection=var2571, $z0=var2437, java.lang.Exception=var309, $r6=var2059, org.hibernate.HibernateException=var3472, $r14=var2882, $r13=var3208, $r10=var3018, java.lang.Throwable=var666, $r9=var1252, $r11=var3395, $r12=var927, $r15=var696}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.spi.ActionQueue$BeforeTransactionCompletionProcessQueue;	$r1 = r0.<org.hibernate.engine.spi.ActionQueue$BeforeTransactionCompletionProcessQueue: java.util.Queue processes>;	$z0 = interfaceinvoke $r1.<java.util.Queue: boolean isEmpty()>();	if $z0 != 0 goto return;	$r6 := @caughtexception;	$r14 = new org.hibernate.HibernateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to perform beforeTransactionCompletion callback: ");	$r9 = virtualinvoke $r6.<java.lang.Exception: java.lang.String getMessage()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 3