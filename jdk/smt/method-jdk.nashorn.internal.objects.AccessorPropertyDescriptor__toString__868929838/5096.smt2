(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3779 0)
(declare-sort var3429 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getClass/1258963082 (var3429) ClassObject)
(declare-fun cast-from-var3779-to-var3429 (var3779) var3429)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun configurable/746895886 (var3779) var3429)
(declare-fun append/-1031950772 (String var3429) String)
(declare-fun enumerable/746895886 (var3779) var3429)
(declare-fun get/746895886 (var3779) var3429)
(declare-fun set/746895886 (var3779) var3429)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3779 var3779)
(declare-const var577 var3779) ; Statement: r1 := @this: jdk.nashorn.internal.objects.AccessorPropertyDescriptor 
(assert (not (= var577 null-var3779)))
(define-const var136 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var136)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var136!1 String)
(assert (= var136!1 ""))
(assert true)
(define-const var3883 String (append/-1166366385 var136!1 91)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var136!2 String)
(assert (str.prefixof var136!1 var136!2))
(assert true)
(define-const var1185 ClassObject (getClass/1258963082 (cast-from-var3779-to-var3429 var577))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3370 String (getSimpleName/-390194377 var1185)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var820 String (append/672562846 var3883 var3370)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3883!1 String)
(assert (= var3883!1 (str.++ var3883 var3370)))
(assert true)
(define-const var785 String (append/672562846 var820 " {configurable=")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {configurable=") 
(declare-const var820!1 String)
(assert (= var820!1 (str.++ var820 " {configurable=")))
(define-const var2129 var3429 (configurable/746895886 var577)) ; Statement: $r6 = r1.<jdk.nashorn.internal.objects.AccessorPropertyDescriptor: java.lang.Object configurable> 
(assert true)
(define-const var383 String (append/-1031950772 var785 var2129)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var785!1 String)
(assert (str.prefixof var785 var785!1))
(assert true)
(define-const var2052 String (append/672562846 var383 " enumerable=")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" enumerable=") 
(declare-const var383!1 String)
(assert (= var383!1 (str.++ var383 " enumerable=")))
(define-const var515 var3429 (enumerable/746895886 var577)) ; Statement: $r9 = r1.<jdk.nashorn.internal.objects.AccessorPropertyDescriptor: java.lang.Object enumerable> 
(assert true)
(define-const var2046 String (append/-1031950772 var2052 var515)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9) 
(declare-const var2052!1 String)
(assert (str.prefixof var2052 var2052!1))
(assert true)
(define-const var2817 String (append/672562846 var2046 " getter=")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" getter=") 
(declare-const var2046!1 String)
(assert (= var2046!1 (str.++ var2046 " getter=")))
(define-const var917 var3429 (get/746895886 var577)) ; Statement: $r12 = r1.<jdk.nashorn.internal.objects.AccessorPropertyDescriptor: java.lang.Object get> 
(assert true)
(define-const var2889 String (append/-1031950772 var2817 var917)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12) 
(declare-const var2817!1 String)
(assert (str.prefixof var2817 var2817!1))
(assert true)
(define-const var1846 String (append/672562846 var2889 " setter=")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" setter=") 
(declare-const var2889!1 String)
(assert (= var2889!1 (str.++ var2889 " setter=")))
(define-const var3349 var3429 (set/746895886 var577)) ; Statement: $r15 = r1.<jdk.nashorn.internal.objects.AccessorPropertyDescriptor: java.lang.Object set> 
(assert true)
(define-const var2015 String (append/-1031950772 var1846 var3349)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var1846!1 String)
(assert (str.prefixof var1846 var1846!1))
(assert true)
(define-const var557 String (append/672562846 var2015 "}]")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}]") 
(declare-const var2015!1 String)
(assert (= var2015!1 (str.++ var2015 "}]")))
(assert true)
(define-const var2760 String (toString/-2075883882 var557)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3779-to-var3429=([jdk.nashorn.internal.objects.AccessorPropertyDescriptor], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), configurable/746895886=([jdk.nashorn.internal.objects.AccessorPropertyDescriptor], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), enumerable/746895886=([jdk.nashorn.internal.objects.AccessorPropertyDescriptor], java.lang.Object), get/746895886=([jdk.nashorn.internal.objects.AccessorPropertyDescriptor], java.lang.Object), set/746895886=([jdk.nashorn.internal.objects.AccessorPropertyDescriptor], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3779=jdk.nashorn.internal.objects.AccessorPropertyDescriptor, var577=r1, var136=$r0, var3883=$r4, var3429=java.lang.Object, var1185=$r2, var3370=$r3, var820=$r5, var785=$r7, var2129=$r6, var383=$r8, var2052=$r10, var515=$r9, var2046=$r11, var2817=$r13, var917=$r12, var2889=$r14, var1846=$r16, var3349=$r15, var2015=$r17, var557=$r18, var2760=$r19}
; {jdk.nashorn.internal.objects.AccessorPropertyDescriptor=var3779, r1=var577, $r0=var136, $r4=var3883, java.lang.Object=var3429, $r2=var1185, $r3=var3370, $r5=var820, $r7=var785, $r6=var2129, $r8=var383, $r10=var2052, $r9=var515, $r11=var2046, $r13=var2817, $r12=var917, $r14=var2889, $r16=var1846, $r15=var3349, $r17=var2015, $r18=var557, $r19=var2760}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.objects.AccessorPropertyDescriptor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {configurable=");	$r6 = r1.<jdk.nashorn.internal.objects.AccessorPropertyDescriptor: java.lang.Object configurable>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" enumerable=");	$r9 = r1.<jdk.nashorn.internal.objects.AccessorPropertyDescriptor: java.lang.Object enumerable>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" getter=");	$r12 = r1.<jdk.nashorn.internal.objects.AccessorPropertyDescriptor: java.lang.Object get>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12);	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" setter=");	$r15 = r1.<jdk.nashorn.internal.objects.AccessorPropertyDescriptor: java.lang.Object set>;	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}]");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	return $r19
;block_num 1