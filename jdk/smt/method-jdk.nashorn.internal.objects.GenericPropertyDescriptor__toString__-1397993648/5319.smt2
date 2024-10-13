(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3120 0)
(declare-sort var1992 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getClass/1258963082 (var1992) ClassObject)
(declare-fun cast-from-var3120-to-var1992 (var3120) var1992)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun configurable/952479928 (var3120) var1992)
(declare-fun append/-1031950772 (String var1992) String)
(declare-fun enumerable/952479928 (var3120) var1992)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3120 var3120)
(declare-const var909 var3120) ; Statement: r1 := @this: jdk.nashorn.internal.objects.GenericPropertyDescriptor 
(assert (not (= var909 null-var3120)))
(define-const var2878 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2878)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2878!1 String)
(assert (= var2878!1 ""))
(assert true)
(define-const var2154 String (append/-1166366385 var2878!1 91)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var2878!2 String)
(assert (str.prefixof var2878!1 var2878!2))
(assert true)
(define-const var2919 ClassObject (getClass/1258963082 (cast-from-var3120-to-var1992 var909))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1447 String (getSimpleName/-390194377 var2919)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var1910 String (append/672562846 var2154 var1447)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2154!1 String)
(assert (= var2154!1 (str.++ var2154 var1447)))
(assert true)
(define-const var1047 String (append/672562846 var1910 " {configurable=")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {configurable=") 
(declare-const var1910!1 String)
(assert (= var1910!1 (str.++ var1910 " {configurable=")))
(define-const var3915 var1992 (configurable/952479928 var909)) ; Statement: $r6 = r1.<jdk.nashorn.internal.objects.GenericPropertyDescriptor: java.lang.Object configurable> 
(assert true)
(define-const var234 String (append/-1031950772 var1047 var3915)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var1047!1 String)
(assert (str.prefixof var1047 var1047!1))
(assert true)
(define-const var3103 String (append/672562846 var234 " enumerable=")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" enumerable=") 
(declare-const var234!1 String)
(assert (= var234!1 (str.++ var234 " enumerable=")))
(define-const var2832 var1992 (enumerable/952479928 var909)) ; Statement: $r9 = r1.<jdk.nashorn.internal.objects.GenericPropertyDescriptor: java.lang.Object enumerable> 
(assert true)
(define-const var3327 String (append/-1031950772 var3103 var2832)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9) 
(declare-const var3103!1 String)
(assert (str.prefixof var3103 var3103!1))
(assert true)
(define-const var757 String (append/672562846 var3327 "}]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}]") 
(declare-const var3327!1 String)
(assert (= var3327!1 (str.++ var3327 "}]")))
(assert true)
(define-const var1336 String (toString/-2075883882 var757)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3120-to-var1992=([jdk.nashorn.internal.objects.GenericPropertyDescriptor], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), configurable/952479928=([jdk.nashorn.internal.objects.GenericPropertyDescriptor], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), enumerable/952479928=([jdk.nashorn.internal.objects.GenericPropertyDescriptor], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3120=jdk.nashorn.internal.objects.GenericPropertyDescriptor, var909=r1, var2878=$r0, var2154=$r4, var1992=java.lang.Object, var2919=$r2, var1447=$r3, var1910=$r5, var1047=$r7, var3915=$r6, var234=$r8, var3103=$r10, var2832=$r9, var3327=$r11, var757=$r12, var1336=$r13}
; {jdk.nashorn.internal.objects.GenericPropertyDescriptor=var3120, r1=var909, $r0=var2878, $r4=var2154, java.lang.Object=var1992, $r2=var2919, $r3=var1447, $r5=var1910, $r7=var1047, $r6=var3915, $r8=var234, $r10=var3103, $r9=var2832, $r11=var3327, $r12=var757, $r13=var1336}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.objects.GenericPropertyDescriptor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {configurable=");	$r6 = r1.<jdk.nashorn.internal.objects.GenericPropertyDescriptor: java.lang.Object configurable>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" enumerable=");	$r9 = r1.<jdk.nashorn.internal.objects.GenericPropertyDescriptor: java.lang.Object enumerable>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}]");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 1