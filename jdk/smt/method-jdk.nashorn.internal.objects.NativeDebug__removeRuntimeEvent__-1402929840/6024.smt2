(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1948 0)
(declare-sort var1664 0)
(declare-sort var456 0)
(declare-sort var2787 0)
(declare-sort var681 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var456_getEventQueue/-344971887 (var1948) var1664)
(declare-fun var456_getEvent/841420639 (var1948) var2787)
(declare-fun remove/1218620827 (var1664 var1948) Bool)
(declare-fun cast-from-var2787-to-var1948 (var2787) var1948)
(declare-fun var681-init () var681)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1948) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var681 String) void)
(declare-const null-var1948 var1948)
(declare-const var2611 var1948) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2611 null-var1948)))
(declare-const var1249 var1948) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var1249 null-var1948)))
(define-const var1542 var1664 (var456_getEventQueue/-344971887 var2611)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.objects.NativeDebug: java.util.LinkedList getEventQueue(java.lang.Object)>(r0) 
(define-const var2529 var2787 (var456_getEvent/841420639 var1249)) ; Statement: r3 = staticinvoke <jdk.nashorn.internal.objects.NativeDebug: jdk.nashorn.internal.runtime.events.RuntimeEvent getEvent(java.lang.Object)>(r2) 
(assert true)
(define-const var2588 Bool (remove/1218620827 var1542 (cast-from-var2787-to-var1948 var2529))) ; Statement: $z0 = virtualinvoke r1.<java.util.LinkedList: boolean remove(java.lang.Object)>(r3) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var2588 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1309 var681 var681-init) ; Statement: $r4 = new java.lang.IllegalStateException 
(define-const var987 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var987)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var987!1 String)
(assert (= var987!1 ""))
(assert true)
(define-const var3429 String (append/672562846 var987!1 "runtime event ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("runtime event ") 
(declare-const var987!2 String)
(assert (= var987!2 (str.++ var987!1 "runtime event ")))
(assert true)
(define-const var357 String (append/-1031950772 var3429 (cast-from-var2787-to-var1948 var2529))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var3429!1 String)
(assert (str.prefixof var3429 var3429!1))
(assert true)
(define-const var706 String (append/672562846 var357 " was not in event queue")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" was not in event queue") 
(declare-const var357!1 String)
(assert (= var357!1 (str.++ var357 " was not in event queue")))
(assert true)
(define-const var2932 String (toString/-2075883882 var706)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1309 var2932)) ; Statement: specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9) 

(declare-const var1309!1 var681)
(declare-const var2932!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var456_getEventQueue/-344971887=([java.lang.Object], java.util.LinkedList), var456_getEvent/841420639=([java.lang.Object], jdk.nashorn.internal.runtime.events.RuntimeEvent), remove/1218620827=([java.util.LinkedList, java.lang.Object], boolean), cast-from-var2787-to-var1948=([jdk.nashorn.internal.runtime.events.RuntimeEvent], java.lang.Object), var681-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1948=java.lang.Object, var2611=r0, var1249=r2, var1664=java.util.LinkedList, var456=jdk.nashorn.internal.objects.NativeDebug, var1542=r1, var2787=jdk.nashorn.internal.runtime.events.RuntimeEvent, var2529=r3, var2588=$z0, var681=java.lang.IllegalStateException, var1309=$r4, var987=$r5, var3429=$r6, var357=$r7, var706=$r8, var2932=$r9}
; {java.lang.Object=var1948, r0=var2611, r2=var1249, java.util.LinkedList=var1664, jdk.nashorn.internal.objects.NativeDebug=var456, r1=var1542, jdk.nashorn.internal.runtime.events.RuntimeEvent=var2787, r3=var2529, $z0=var2588, java.lang.IllegalStateException=var681, $r4=var1309, $r5=var987, $r6=var3429, $r7=var357, $r8=var706, $r9=var2932}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.objects.NativeDebug: java.util.LinkedList getEventQueue(java.lang.Object)>(r0);	r3 = staticinvoke <jdk.nashorn.internal.objects.NativeDebug: jdk.nashorn.internal.runtime.events.RuntimeEvent getEvent(java.lang.Object)>(r2);	$z0 = virtualinvoke r1.<java.util.LinkedList: boolean remove(java.lang.Object)>(r3);	if $z0 != 0 goto return;	$r4 = new java.lang.IllegalStateException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("runtime event ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" was not in event queue");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2