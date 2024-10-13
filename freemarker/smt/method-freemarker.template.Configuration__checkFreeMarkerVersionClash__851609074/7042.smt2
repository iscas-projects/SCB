(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1632 0)
(declare-sort var215 0)
(declare-sort var668 0)
(declare-sort var809 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var215-init () var215)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var809) String)
(declare-fun cast-from-var668-to-var809 (var668) var809)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var215 String) void)
(declare-const var1632-FM_24_DETECTED Bool)
(declare-const var1632-VERSION var668)
(define-const var2472 Bool var1632-FM_24_DETECTED) ; Statement: $z0 = <freemarker.template.Configuration: boolean FM_24_DETECTED> 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var2472 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2416 var215 var215-init) ; Statement: $r0 = new java.lang.RuntimeException 
(define-const var1952 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1952)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1952!1 String)
(assert (= var1952!1 ""))
(assert true)
(define-const var2714 String (append/672562846 var1952!1 "Clashing FreeMarker versions (")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Clashing FreeMarker versions (") 
(declare-const var1952!2 String)
(assert (= var1952!2 (str.++ var1952!1 "Clashing FreeMarker versions (")))
(define-const var2911 var668 var1632-VERSION) ; Statement: $r2 = <freemarker.template.Configuration: freemarker.template.Version VERSION> 
(assert true)
(define-const var1288 String (append/-1031950772 var2714 (cast-from-var668-to-var809 var2911))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2714!1 String)
(assert (str.prefixof var2714 var2714!1))
(assert true)
(define-const var715 String (append/672562846 var1288 " and some post-2.3.x) detected: found post-2.3.x class ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and some post-2.3.x) detected: found post-2.3.x class ") 
(declare-const var1288!1 String)
(assert (= var1288!1 (str.++ var1288 " and some post-2.3.x) detected: found post-2.3.x class ")))
(assert true)
(define-const var2838 String (append/672562846 var715 "freemarker.core._2_4_OrLaterMarker")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("freemarker.core._2_4_OrLaterMarker") 
(declare-const var715!1 String)
(assert (= var715!1 (str.++ var715 "freemarker.core._2_4_OrLaterMarker")))
(assert true)
(define-const var3612 String (append/672562846 var2838 ". You probably have two different freemarker.jar-s in the classpath.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". You probably have two different freemarker.jar-s in the classpath.") 
(declare-const var2838!1 String)
(assert (= var2838!1 (str.++ var2838 ". You probably have two different freemarker.jar-s in the classpath.")))
(assert true)
(define-const var621 String (toString/-2075883882 var3612)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2416 var621)) ; Statement: specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r8) 

(declare-const var2416!1 var215)
(declare-const var621!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var215-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var668-to-var809=([freemarker.template.Version], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var1632=freemarker.template.Configuration, var2472=$z0, var215=java.lang.RuntimeException, var2416=$r0, var1952=$r1, var2714=$r3, var668=freemarker.template.Version, var2911=$r2, var809=java.lang.Object, var1288=$r4, var715=$r5, var2838=$r6, var3612=$r7, var621=$r8}
; {freemarker.template.Configuration=var1632, $z0=var2472, java.lang.RuntimeException=var215, $r0=var2416, $r1=var1952, $r3=var2714, freemarker.template.Version=var668, $r2=var2911, java.lang.Object=var809, $r4=var1288, $r5=var715, $r6=var2838, $r7=var3612, $r8=var621}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $z0 = <freemarker.template.Configuration: boolean FM_24_DETECTED>;	if $z0 == 0 goto return;	$r0 = new java.lang.RuntimeException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Clashing FreeMarker versions (");	$r2 = <freemarker.template.Configuration: freemarker.template.Version VERSION>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and some post-2.3.x) detected: found post-2.3.x class ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("freemarker.core._2_4_OrLaterMarker");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". You probably have two different freemarker.jar-s in the classpath.");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r8);	throw $r0
;block_num 2