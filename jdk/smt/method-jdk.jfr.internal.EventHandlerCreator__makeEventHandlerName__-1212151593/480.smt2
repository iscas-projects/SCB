(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1642 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var1642-eventHandlerProxy ClassObject)
(declare-const var1642-SUFFIX String)
(declare-const var1418 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var1418 null-Int)))
(define-const var3682 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3682)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3682!1 String)
(assert (= var3682!1 ""))
(define-const var1258 ClassObject var1642-eventHandlerProxy) ; Statement: $r1 = <jdk.jfr.internal.EventHandlerCreator: java.lang.Class eventHandlerProxy> 
(assert true)
(define-const var1922 String (getName/-1958580599 var1258)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2640 String (append/672562846 var3682!1 var1922)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3682!2 String)
(assert (= var3682!2 (str.++ var3682!1 var1922)))
(assert true)
(define-const var3718 String (append/-901862667 var2640 var1418)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var2640!1 String)
(assert (str.prefixof var2640 var2640!1))
(define-const var3020 String var1642-SUFFIX) ; Statement: $r4 = <jdk.jfr.internal.EventHandlerCreator: java.lang.String SUFFIX> 
(assert true)
(define-const var3415 String (append/672562846 var3718 var3020)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3718!1 String)
(assert (= var3718!1 (str.++ var3718 var3020)))
(assert true)
(define-const var3067 String (toString/-2075883882 var3415)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1418=l0, var3682=$r0, var1642=jdk.jfr.internal.EventHandlerCreator, var1258=$r1, var1922=$r2, var2640=$r3, var3718=$r5, var3020=$r4, var3415=$r6, var3067=$r7}
; {l0=var1418, $r0=var3682, jdk.jfr.internal.EventHandlerCreator=var1642, $r1=var1258, $r2=var1922, $r3=var2640, $r5=var3718, $r4=var3020, $r6=var3415, $r7=var3067}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts l0 := @parameter0: long;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = <jdk.jfr.internal.EventHandlerCreator: java.lang.Class eventHandlerProxy>;	$r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r4 = <jdk.jfr.internal.EventHandlerCreator: java.lang.String SUFFIX>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1