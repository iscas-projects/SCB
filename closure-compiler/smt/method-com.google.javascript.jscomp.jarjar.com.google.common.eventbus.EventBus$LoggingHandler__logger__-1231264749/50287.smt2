(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var635 0)
(declare-sort var1389 0)
(declare-sort var1078 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1389!class ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getEventBus/-1735637235 (var635) var1389)
(declare-fun identifier/1246160965 (var1389) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1078_getLogger/-1440108740 (String) var1078)
(declare-const null-var635 var635)
(declare-const var905 var635) ; Statement: r4 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.eventbus.SubscriberExceptionContext 
(assert (not (= var905 null-var635)))
(define-const var3326 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3326)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3326!1 String)
(assert (= var3326!1 ""))
(define-const var3926 ClassObject var1389!class) ; Statement: $r1 = class "Lcom/google/javascript/jscomp/jarjar/com/google/common/eventbus/EventBus;" 
(assert true)
(define-const var1669 String (getName/-1958580599 var3926)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1341 String (append/672562846 var3326!1 var1669)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3326!2 String)
(assert (= var3326!2 (str.++ var3326!1 var1669)))
(assert true)
(define-const var2768 String (append/672562846 var1341 ".")) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1341!1 String)
(assert (= var1341!1 (str.++ var1341 ".")))
(assert true)
(define-const var3682 var1389 (getEventBus/-1735637235 var905)) ; Statement: $r5 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.com.google.common.eventbus.SubscriberExceptionContext: com.google.javascript.jscomp.jarjar.com.google.common.eventbus.EventBus getEventBus()>() 
(assert true)
(define-const var3491 String (identifier/1246160965 var3682)) ; Statement: $r6 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.eventbus.EventBus: java.lang.String identifier()>() 
(assert true)
(define-const var804 String (append/672562846 var2768 var3491)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2768!1 String)
(assert (= var2768!1 (str.++ var2768 var3491)))
(assert true)
(define-const var2131 String (toString/-2075883882 var804)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2673 var1078 (var1078_getLogger/-1440108740 var2131)) ; Statement: $r10 = staticinvoke <java.util.logging.Logger: java.util.logging.Logger getLogger(java.lang.String)>($r9) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getEventBus/-1735637235=([com.google.javascript.jscomp.jarjar.com.google.common.eventbus.SubscriberExceptionContext], com.google.javascript.jscomp.jarjar.com.google.common.eventbus.EventBus), identifier/1246160965=([com.google.javascript.jscomp.jarjar.com.google.common.eventbus.EventBus], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1078_getLogger/-1440108740=([java.lang.String], java.util.logging.Logger)}
; {var635=com.google.javascript.jscomp.jarjar.com.google.common.eventbus.SubscriberExceptionContext, var905=r4, var3326=$r0, var1389=com.google.javascript.jscomp.jarjar.com.google.common.eventbus.EventBus, var3926=$r1, var1669=$r2, var1341=$r3, var2768=$r7, var3682=$r5, var3491=$r6, var804=$r8, var2131=$r9, var1078=java.util.logging.Logger, var2673=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.common.eventbus.SubscriberExceptionContext=var635, r4=var905, $r0=var3326, com.google.javascript.jscomp.jarjar.com.google.common.eventbus.EventBus=var1389, $r1=var3926, $r2=var1669, $r3=var1341, $r7=var2768, $r5=var3682, $r6=var3491, $r8=var804, $r9=var2131, java.util.logging.Logger=var1078, $r10=var2673}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.eventbus.SubscriberExceptionContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = class "Lcom/google/javascript/jscomp/jarjar/com/google/common/eventbus/EventBus;";	$r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r5 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.com.google.common.eventbus.SubscriberExceptionContext: com.google.javascript.jscomp.jarjar.com.google.common.eventbus.EventBus getEventBus()>();	$r6 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.eventbus.EventBus: java.lang.String identifier()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = staticinvoke <java.util.logging.Logger: java.util.logging.Logger getLogger(java.lang.String)>($r9);	return $r10
;block_num 1