(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1053 0)
(declare-sort var2255 0)
(declare-sort var600 0)
(declare-sort var3936 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$oldMap/428725451 (var1053) var2255)
(declare-fun var600_id/-2071121520 (var3936) String)
(declare-fun cast-from-var2255-to-var3936 (var2255) var3936)
(declare-fun val$newMap/428725451 (var1053) var2255)
(declare-fun append/-1031950772 (String var3936) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1053 var1053)
(declare-const var3955 var1053) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.AccessorProperty$4 
(assert (not (= var3955 null-var1053)))
(define-const var329 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var329)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var329!1 String)
(assert (= var329!1 ""))
(assert true)
(define-const var3850 String (append/672562846 var329!1 "Setting map ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Setting map ") 
(declare-const var329!2 String)
(assert (= var329!2 (str.++ var329!1 "Setting map ")))
(define-const var2817 var2255 (val$oldMap/428725451 var3955)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.AccessorProperty$4: jdk.nashorn.internal.runtime.PropertyMap val$oldMap> 
(define-const var3413 String (var600_id/-2071121520 (cast-from-var2255-to-var3936 var2817))) ; Statement: $r3 = staticinvoke <jdk.nashorn.internal.runtime.Debug: java.lang.String id(java.lang.Object)>($r2) 
(assert true)
(define-const var812 String (append/672562846 var3850 var3413)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3850!1 String)
(assert (= var3850!1 (str.++ var3850 var3413)))
(assert true)
(define-const var756 String (append/672562846 var812 " => ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" => ") 
(declare-const var812!1 String)
(assert (= var812!1 (str.++ var812 " => ")))
(define-const var2085 var2255 (val$newMap/428725451 var3955)) ; Statement: $r6 = r1.<jdk.nashorn.internal.runtime.AccessorProperty$4: jdk.nashorn.internal.runtime.PropertyMap val$newMap> 
(define-const var1172 String (var600_id/-2071121520 (cast-from-var2255-to-var3936 var2085))) ; Statement: $r7 = staticinvoke <jdk.nashorn.internal.runtime.Debug: java.lang.String id(java.lang.Object)>($r6) 
(assert true)
(define-const var973 String (append/672562846 var756 var1172)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var756!1 String)
(assert (= var756!1 (str.++ var756 var1172)))
(assert true)
(define-const var1605 String (append/672562846 var973 " ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var973!1 String)
(assert (= var973!1 (str.++ var973 " ")))
(define-const var860 var2255 (val$oldMap/428725451 var3955)) ; Statement: $r10 = r1.<jdk.nashorn.internal.runtime.AccessorProperty$4: jdk.nashorn.internal.runtime.PropertyMap val$oldMap> 
(assert true)
(define-const var642 String (append/-1031950772 var1605 (cast-from-var2255-to-var3936 var860))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var1605!1 String)
(assert (str.prefixof var1605 var1605!1))
(assert true)
(define-const var1844 String (append/672562846 var642 " => ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" => ") 
(declare-const var642!1 String)
(assert (= var642!1 (str.++ var642 " => ")))
(define-const var555 var2255 (val$newMap/428725451 var3955)) ; Statement: $r13 = r1.<jdk.nashorn.internal.runtime.AccessorProperty$4: jdk.nashorn.internal.runtime.PropertyMap val$newMap> 
(assert true)
(define-const var1918 String (append/-1031950772 var1844 (cast-from-var2255-to-var3936 var555))) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13) 
(declare-const var1844!1 String)
(assert (str.prefixof var1844 var1844!1))
(assert true)
(define-const var3638 String (toString/-2075883882 var1918)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$oldMap/428725451=([jdk.nashorn.internal.runtime.AccessorProperty$4], jdk.nashorn.internal.runtime.PropertyMap), var600_id/-2071121520=([java.lang.Object], java.lang.String), cast-from-var2255-to-var3936=([jdk.nashorn.internal.runtime.PropertyMap], java.lang.Object), val$newMap/428725451=([jdk.nashorn.internal.runtime.AccessorProperty$4], jdk.nashorn.internal.runtime.PropertyMap), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1053=jdk.nashorn.internal.runtime.AccessorProperty$4, var3955=r1, var329=$r0, var3850=$r4, var2255=jdk.nashorn.internal.runtime.PropertyMap, var2817=$r2, var600=jdk.nashorn.internal.runtime.Debug, var3936=java.lang.Object, var3413=$r3, var812=$r5, var756=$r8, var2085=$r6, var1172=$r7, var973=$r9, var1605=$r11, var860=$r10, var642=$r12, var1844=$r14, var555=$r13, var1918=$r15, var3638=$r16}
; {jdk.nashorn.internal.runtime.AccessorProperty$4=var1053, r1=var3955, $r0=var329, $r4=var3850, jdk.nashorn.internal.runtime.PropertyMap=var2255, $r2=var2817, jdk.nashorn.internal.runtime.Debug=var600, java.lang.Object=var3936, $r3=var3413, $r5=var812, $r8=var756, $r6=var2085, $r7=var1172, $r9=var973, $r11=var1605, $r10=var860, $r12=var642, $r14=var1844, $r13=var555, $r15=var1918, $r16=var3638}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.AccessorProperty$4;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Setting map ");	$r2 = r1.<jdk.nashorn.internal.runtime.AccessorProperty$4: jdk.nashorn.internal.runtime.PropertyMap val$oldMap>;	$r3 = staticinvoke <jdk.nashorn.internal.runtime.Debug: java.lang.String id(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" => ");	$r6 = r1.<jdk.nashorn.internal.runtime.AccessorProperty$4: jdk.nashorn.internal.runtime.PropertyMap val$newMap>;	$r7 = staticinvoke <jdk.nashorn.internal.runtime.Debug: java.lang.String id(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r10 = r1.<jdk.nashorn.internal.runtime.AccessorProperty$4: jdk.nashorn.internal.runtime.PropertyMap val$oldMap>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" => ");	$r13 = r1.<jdk.nashorn.internal.runtime.AccessorProperty$4: jdk.nashorn.internal.runtime.PropertyMap val$newMap>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 1