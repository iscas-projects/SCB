(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1740 0)
(declare-sort var1922 0)
(declare-sort var1785 0)
(declare-sort var95 0)
(declare-sort var3785 0)
(declare-sort var2079 0)
(declare-sort var1693 0)
(declare-sort var2430 0)
(declare-sort var1216 0)
(declare-sort var1945 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun stringPropertyNames/841652110 (var1922) var1785)
(declare-fun var3785_stream/-1288525013 (var3785) var95)
(declare-fun cast-from-var1785-to-var3785 (var1785) var3785)
(declare-fun var1693_bootstrap$/-669382172 (var1922) var2079)
(declare-fun var95_map/130902797 (var95 var2079) var95)
(declare-fun var1216_joining/-1221703981 (String String String) var2430)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var95_collect/-2050842585 (var95 var2430) var1945)
(declare-fun cast-from-var1945-to-String (var1945) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var1922 var1922)
(declare-const var85 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var85 null-String)))
(declare-const var554 var1922) ; Statement: r2 := @parameter1: java.util.Properties 
(assert (not (= var554 null-var1922)))
(define-const var3912 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3912 var85)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1) 
(declare-const var3912!1 String)
(assert (= var3912!1 var85))
(assert true)
;(assert (append/672562846 var3912!1 "\u00a7")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u00a7") 
(declare-const var3912!2 String)
(assert (= var3912!2 (str.++ var3912!1 "\u00a7")))
 ; Statement: if r2 != null goto $r3 = virtualinvoke r2.<java.util.Properties: java.util.Set stringPropertyNames()>() 
(assert (not (= var554 null-var1922))) ; Cond: r2 != null 
(assert true)
(define-const var2467 var1785 (stringPropertyNames/841652110 var554)) ; Statement: $r3 = virtualinvoke r2.<java.util.Properties: java.util.Set stringPropertyNames()>() 
(define-const var3855 var95 (var3785_stream/-1288525013 (cast-from-var1785-to-var3785 var2467))) ; Statement: $r5 = interfaceinvoke $r3.<java.util.Set: java.util.stream.Stream stream()>() 
(define-const var865 var2079 (var1693_bootstrap$/-669382172 var554)) ; Statement: $r4 = staticinvoke <com.mysql.cj.conf.ConnectionUrl$lambda_buildConnectionStringCacheKey_0__22: java.util.function.Function bootstrap$(java.util.Properties)>(r2) 
(define-const var2762 var95 (var95_map/130902797 var3855 var865)) ; Statement: $r7 = interfaceinvoke $r5.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r4) 
(define-const var1843 var2430 (var1216_joining/-1221703981 (cast-from-String-to-String ", ") (cast-from-String-to-String "{") (cast-from-String-to-String "}"))) ; Statement: $r6 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence,java.lang.CharSequence,java.lang.CharSequence)>(", ", "{", "}") 
(define-const var962 var1945 (var95_collect/-2050842585 var2762 var1843)) ; Statement: $r8 = interfaceinvoke $r7.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r6) 
(define-const var78 String (cast-from-var1945-to-String var962)) ; Statement: $r10 = (java.lang.String) $r8 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3912!2 var78)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3912!3 String)
(assert (= var3912!3 (str.++ var3912!2 var78)))
(assert true)
(define-const var3686 String (toString/-2075883882 var3912!3)) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), stringPropertyNames/841652110=([java.util.Properties], java.util.Set), var3785_stream/-1288525013=([java.util.Collection], java.util.stream.Stream), cast-from-var1785-to-var3785=([java.util.Set], java.util.Collection), var1693_bootstrap$/-669382172=([java.util.Properties], java.util.function.Function), var95_map/130902797=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), var1216_joining/-1221703981=([java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence], java.util.stream.Collector), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var95_collect/-2050842585=([java.util.stream.Stream, java.util.stream.Collector], java.lang.Object), cast-from-var1945-to-String=([java.lang.Object], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var85=r1, var1740=null_type, var1922=java.util.Properties, var554=r2, var3912=$r0, var1785=java.util.Set, var2467=$r3, var95=java.util.stream.Stream, var3785=java.util.Collection, var3855=$r5, var2079=java.util.function.Function, var1693=com.mysql.cj.conf.ConnectionUrl$lambda_buildConnectionStringCacheKey_0__22, var865=$r4, var2762=$r7, var2430=java.util.stream.Collector, var1216=java.util.stream.Collectors, var1843=$r6, var1945=java.lang.Object, var962=$r8, var78=$r10, var3686=$r9}
; {r1=var85, null_type=var1740, java.util.Properties=var1922, r2=var554, $r0=var3912, java.util.Set=var1785, $r3=var2467, java.util.stream.Stream=var95, java.util.Collection=var3785, $r5=var3855, java.util.function.Function=var2079, com.mysql.cj.conf.ConnectionUrl$lambda_buildConnectionStringCacheKey_0__22=var1693, $r4=var865, $r7=var2762, java.util.stream.Collector=var2430, java.util.stream.Collectors=var1216, $r6=var1843, java.lang.Object=var1945, $r8=var962, $r10=var78, $r9=var3686}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.util.Properties;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u00a7");	if r2 != null goto $r3 = virtualinvoke r2.<java.util.Properties: java.util.Set stringPropertyNames()>();	$r3 = virtualinvoke r2.<java.util.Properties: java.util.Set stringPropertyNames()>();	$r5 = interfaceinvoke $r3.<java.util.Set: java.util.stream.Stream stream()>();	$r4 = staticinvoke <com.mysql.cj.conf.ConnectionUrl$lambda_buildConnectionStringCacheKey_0__22: java.util.function.Function bootstrap$(java.util.Properties)>(r2);	$r7 = interfaceinvoke $r5.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r4);	$r6 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence,java.lang.CharSequence,java.lang.CharSequence)>(", ", "{", "}");	$r8 = interfaceinvoke $r7.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r6);	$r10 = (java.lang.String) $r8;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3