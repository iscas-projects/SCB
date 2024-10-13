(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var999 0)
(declare-sort var205 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getter/-1282788050 (var999) var205)
(declare-fun append/-1031950772 (String var205) String)
(declare-fun setter/-1282788050 (var999) var205)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var999 var999)
(declare-const var3824 var999) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.UserAccessorProperty$Accessors 
(assert (not (= var3824 null-var999)))
(define-const var2590 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2590)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2590!1 String)
(assert (= var2590!1 ""))
(assert true)
(define-const var758 String (append/672562846 var2590!1 "[getter=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[getter=") 
(declare-const var2590!2 String)
(assert (= var2590!2 (str.++ var2590!1 "[getter=")))
(define-const var1051 var205 (getter/-1282788050 var3824)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.UserAccessorProperty$Accessors: java.lang.Object getter> 
(assert true)
(define-const var961 String (append/-1031950772 var758 var1051)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var758!1 String)
(assert (str.prefixof var758 var758!1))
(assert true)
(define-const var2128 String (append/672562846 var961 " setter=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" setter=") 
(declare-const var961!1 String)
(assert (= var961!1 (str.++ var961 " setter=")))
(define-const var1850 var205 (setter/-1282788050 var3824)) ; Statement: $r5 = r1.<jdk.nashorn.internal.runtime.UserAccessorProperty$Accessors: java.lang.Object setter> 
(assert true)
(define-const var1225 String (append/-1031950772 var2128 var1850)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var2128!1 String)
(assert (str.prefixof var2128 var2128!1))
(assert true)
(define-const var50 String (append/-1166366385 var1225 93)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1225!1 String)
(assert (str.prefixof var1225 var1225!1))
(assert true)
(define-const var2261 String (toString/-2075883882 var50)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getter/-1282788050=([jdk.nashorn.internal.runtime.UserAccessorProperty$Accessors], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), setter/-1282788050=([jdk.nashorn.internal.runtime.UserAccessorProperty$Accessors], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var999=jdk.nashorn.internal.runtime.UserAccessorProperty$Accessors, var3824=r1, var2590=$r0, var758=$r3, var205=java.lang.Object, var1051=$r2, var961=$r4, var2128=$r6, var1850=$r5, var1225=$r7, var50=$r8, var2261=$r9}
; {jdk.nashorn.internal.runtime.UserAccessorProperty$Accessors=var999, r1=var3824, $r0=var2590, $r3=var758, java.lang.Object=var205, $r2=var1051, $r4=var961, $r6=var2128, $r5=var1850, $r7=var1225, $r8=var50, $r9=var2261}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.UserAccessorProperty$Accessors;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[getter=");	$r2 = r1.<jdk.nashorn.internal.runtime.UserAccessorProperty$Accessors: java.lang.Object getter>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" setter=");	$r5 = r1.<jdk.nashorn.internal.runtime.UserAccessorProperty$Accessors: java.lang.Object setter>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1