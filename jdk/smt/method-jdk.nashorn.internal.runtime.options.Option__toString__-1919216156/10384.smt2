(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1022 0)
(declare-sort var2099 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getValue/464447587 (var1022) var2099)
(declare-fun append/-1031950772 (String var2099) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2099) ClassObject)
(declare-fun cast-from-ClassObject-to-var2099 (ClassObject) var2099)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1022 var1022)
(declare-const var2577 var1022) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.options.Option 
(assert (not (= var2577 null-var1022)))
(define-const var1679 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1679)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1679!1 String)
(assert (= var1679!1 ""))
(assert true)
(define-const var2790 var2099 (getValue/464447587 var2577)) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.options.Option: java.lang.Object getValue()>() 
(assert true)
(define-const var3691 String (append/-1031950772 var1679!1 var2790)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1679!2 String)
(assert (str.prefixof var1679!1 var1679!2))
(assert true)
(define-const var551 String (append/672562846 var3691 " [")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(declare-const var3691!1 String)
(assert (= var3691!1 (str.++ var3691 " [")))
(assert true)
(define-const var2350 var2099 (getValue/464447587 var2577)) ; Statement: $r4 = virtualinvoke r1.<jdk.nashorn.internal.runtime.options.Option: java.lang.Object getValue()>() 
(assert true)
(define-const var1666 ClassObject (getClass/1258963082 var2350)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3593 String (append/-1031950772 var551 (cast-from-ClassObject-to-var2099 var1666))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var551!1 String)
(assert (str.prefixof var551 var551!1))
(assert true)
(define-const var3158 String (append/672562846 var3593 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3593!1 String)
(assert (= var3593!1 (str.++ var3593 "]")))
(assert true)
(define-const var3068 String (toString/-2075883882 var3158)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getValue/464447587=([jdk.nashorn.internal.runtime.options.Option], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-ClassObject-to-var2099=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1022=jdk.nashorn.internal.runtime.options.Option, var2577=r1, var1679=$r0, var2099=java.lang.Object, var2790=$r2, var3691=$r3, var551=$r6, var2350=$r4, var1666=$r5, var3593=$r7, var3158=$r8, var3068=$r9}
; {jdk.nashorn.internal.runtime.options.Option=var1022, r1=var2577, $r0=var1679, java.lang.Object=var2099, $r2=var2790, $r3=var3691, $r6=var551, $r4=var2350, $r5=var1666, $r7=var3593, $r8=var3158, $r9=var3068}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.options.Option;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.options.Option: java.lang.Object getValue()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	$r4 = virtualinvoke r1.<jdk.nashorn.internal.runtime.options.Option: java.lang.Object getValue()>();	$r5 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1