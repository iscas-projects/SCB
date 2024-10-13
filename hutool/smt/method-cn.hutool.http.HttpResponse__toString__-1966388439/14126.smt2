(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var560 0)
(declare-sort var3850 0)
(declare-sort var2426 0)
(declare-sort var229 0)
(declare-sort var579 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3850_builder/-311177978 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun headers/-1932151335 (var229) var2426)
(declare-fun cast-from-var560-to-var229 (var560) var229)
(declare-fun var2426_entrySet/1101202697 (var2426) var579)
(declare-fun var579_iterator/1911472585 (var579) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun body/624438323 (var560) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var560 var560)
(declare-const var3035 var560) ; Statement: r2 := @this: cn.hutool.http.HttpResponse 
(assert (not (= var3035 null-var560)))
(define-const var1698 String var3850_builder/-311177978) ; Statement: r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(assert true)
(define-const var183 String (append/672562846 var1698 "Response Headers: ")) ; Statement: $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Response Headers: ") 
(declare-const var1698!1 String)
(assert (= var1698!1 (str.++ var1698 "Response Headers: ")))
(assert true)
;(assert (append/672562846 var183 "\r\n")) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n") 
(declare-const var183!1 String)
(assert (= var183!1 (str.++ var183 "\r\n")))
(define-const var2406 var2426 (headers/-1932151335 (cast-from-var560-to-var229 var3035))) ; Statement: $r3 = r2.<cn.hutool.http.HttpResponse: java.util.Map headers> 
(define-const var568 var579 (var2426_entrySet/1101202697 var2406)) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.util.Set entrySet()>() 
(define-const var3572 Iterator (var579_iterator/1911472585 var568)) ; Statement: r5 = interfaceinvoke $r4.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2510 Bool (Iterator_hasNext/-1669924200 var3572)) ; Statement: $z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r6 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Response Body: ") 
(assert (= (ite var2510 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1847 String (append/672562846 var1698!1 "Response Body: ")) ; Statement: $r6 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Response Body: ") 
(declare-const var1698!2 String)
(assert (= var1698!2 (str.++ var1698!1 "Response Body: ")))
(assert true)
;(assert (append/672562846 var1847 "\r\n")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n") 
(declare-const var1847!1 String)
(assert (= var1847!1 (str.++ var1847 "\r\n")))
(assert true)
(define-const var450 String (append/672562846 var1698!2 "    ")) ; Statement: $r8 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(declare-const var1698!3 String)
(assert (= var1698!3 (str.++ var1698!2 "    ")))
(assert true)
(define-const var3152 String (body/624438323 var3035)) ; Statement: $r7 = virtualinvoke r2.<cn.hutool.http.HttpResponse: java.lang.String body()>() 
(assert true)
(define-const var674 String (append/672562846 var450 var3152)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var450!1 String)
(assert (= var450!1 (str.++ var450 var3152)))
(assert true)
;(assert (append/672562846 var674 "\r\n")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n") 
(declare-const var674!1 String)
(assert (= var674!1 (str.++ var674 "\r\n")))
(assert true)
(define-const var2850 String (toString/-2075883882 var1698!3)) ; Statement: $r10 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var3850_builder/-311177978=([], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), headers/-1932151335=([cn.hutool.http.HttpBase], java.util.Map), cast-from-var560-to-var229=([cn.hutool.http.HttpResponse], cn.hutool.http.HttpBase), var2426_entrySet/1101202697=([java.util.Map], java.util.Set), var579_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), body/624438323=([cn.hutool.http.HttpResponse], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var560=cn.hutool.http.HttpResponse, var3035=r2, var3850=cn.hutool.core.util.StrUtil, var1698=r0, var183=$r1, var2426=java.util.Map, var229=cn.hutool.http.HttpBase, var2406=$r3, var579=java.util.Set, var568=$r4, var3572=r5, var2510=$z0, var1847=$r6, var450=$r8, var3152=$r7, var674=$r9, var2850=$r10}
; {cn.hutool.http.HttpResponse=var560, r2=var3035, cn.hutool.core.util.StrUtil=var3850, r0=var1698, $r1=var183, java.util.Map=var2426, cn.hutool.http.HttpBase=var229, $r3=var2406, java.util.Set=var579, $r4=var568, r5=var3572, $z0=var2510, $r6=var1847, $r8=var450, $r7=var3152, $r9=var674, $r10=var2850}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: cn.hutool.http.HttpResponse;	r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	$r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Response Headers: ");	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n");	$r3 = r2.<cn.hutool.http.HttpResponse: java.util.Map headers>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.util.Set entrySet()>();	r5 = interfaceinvoke $r4.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r6 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Response Body: ");	$r6 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Response Body: ");	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n");	$r8 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	$r7 = virtualinvoke r2.<cn.hutool.http.HttpResponse: java.lang.String body()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n");	$r10 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3