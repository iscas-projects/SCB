(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1394 0)
(declare-sort var3232 0)
(declare-sort var888 0)
(declare-sort var1970 0)
(declare-sort var1871 0)
(declare-sort var3349 0)
(declare-sort var3410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1871-init () var1871)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3349_tryToString/-66466847 (var3232) String)
(declare-fun cast-from-var888-to-var3232 (var888) var3232)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1632977416 (var1871 String var3410) void)
(declare-fun cast-from-var1970-to-var3410 (var1970) var3410)
(declare-const null-var1394 var1394)
(declare-const null-var3232 var3232)
(declare-const null-var888 var888)
(declare-const null-var1970 var1970)
(declare-const var372 var1394) ; Statement: r15 := @this: freemarker.core.UnifiedCall 
(assert (not (= var372 null-var1394)))
(declare-const var524 var3232) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var524 null-var3232)))
(declare-const var2286 var888) ; Statement: r0 := @parameter1: freemarker.template.utility.ObjectFactory 
(assert (not (= var2286 null-var888)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3615 var1970) ; Statement: $r5 := @caughtexception 
(assert (not (= var3615 null-var1970)))
(define-const var2858 var1871 var1871-init) ; Statement: $r6 = new freemarker.core.CallPlaceCustomDataInitializationException 
(define-const var818 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var818)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var818!1 String)
(assert (= var818!1 ""))
(assert true)
(define-const var2715 String (append/672562846 var818!1 "Failed to initialize custom data for provider identity ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to initialize custom data for provider identity ") 
(declare-const var818!2 String)
(assert (= var818!2 (str.++ var818!1 "Failed to initialize custom data for provider identity ")))
(define-const var221 String (var3349_tryToString/-66466847 var524)) ; Statement: $r8 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String tryToString(java.lang.Object)>(r3) 
(assert true)
(define-const var1659 String (append/672562846 var2715 var221)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2715!1 String)
(assert (= var2715!1 (str.++ var2715 var221)))
(assert true)
(define-const var680 String (append/672562846 var1659 " via factory ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" via factory ") 
(declare-const var1659!1 String)
(assert (= var1659!1 (str.++ var1659 " via factory ")))
(define-const var1492 String (var3349_tryToString/-66466847 (cast-from-var888-to-var3232 var2286))) ; Statement: $r11 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String tryToString(java.lang.Object)>(r0) 
(assert true)
(define-const var2775 String (append/672562846 var680 var1492)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var680!1 String)
(assert (= var680!1 (str.++ var680 var1492)))
(assert true)
(define-const var971 String (toString/-2075883882 var2775)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1632977416 var2858 var971 (cast-from-var1970-to-var3410 var3615))) ; Statement: specialinvoke $r6.<freemarker.core.CallPlaceCustomDataInitializationException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r5) 

(declare-const var2858!1 var1871)
(declare-const var971!1 String)
(declare-const var3615!1 var1970)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var1871-init=([], freemarker.core.CallPlaceCustomDataInitializationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3349_tryToString/-66466847=([java.lang.Object], java.lang.String), cast-from-var888-to-var3232=([freemarker.template.utility.ObjectFactory], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1632977416=([freemarker.core.CallPlaceCustomDataInitializationException, java.lang.String, java.lang.Throwable], void), cast-from-var1970-to-var3410=([java.lang.Exception], java.lang.Throwable)}
; {var1394=freemarker.core.UnifiedCall, var372=r15, var3232=java.lang.Object, var524=r3, var888=freemarker.template.utility.ObjectFactory, var2286=r0, var1970=java.lang.Exception, var3615=$r5, var1871=freemarker.core.CallPlaceCustomDataInitializationException, var2858=$r6, var818=$r7, var2715=$r9, var3349=freemarker.template.utility.StringUtil, var221=$r8, var1659=$r10, var680=$r12, var1492=$r11, var2775=$r13, var971=$r14, var3410=java.lang.Throwable}
; {freemarker.core.UnifiedCall=var1394, r15=var372, java.lang.Object=var3232, r3=var524, freemarker.template.utility.ObjectFactory=var888, r0=var2286, java.lang.Exception=var1970, $r5=var3615, freemarker.core.CallPlaceCustomDataInitializationException=var1871, $r6=var2858, $r7=var818, $r9=var2715, freemarker.template.utility.StringUtil=var3349, $r8=var221, $r10=var1659, $r12=var680, $r11=var1492, $r13=var2775, $r14=var971, java.lang.Throwable=var3410}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r15 := @this: freemarker.core.UnifiedCall;	r3 := @parameter0: java.lang.Object;	r0 := @parameter1: freemarker.template.utility.ObjectFactory;	$r5 := @caughtexception;	$r6 = new freemarker.core.CallPlaceCustomDataInitializationException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to initialize custom data for provider identity ");	$r8 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String tryToString(java.lang.Object)>(r3);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" via factory ");	$r11 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String tryToString(java.lang.Object)>(r0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<freemarker.core.CallPlaceCustomDataInitializationException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r5);	throw $r6
;block_num 2