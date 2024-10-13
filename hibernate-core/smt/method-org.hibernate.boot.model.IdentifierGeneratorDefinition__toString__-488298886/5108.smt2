(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1072 0)
(declare-sort var2062 0)
(declare-sort var3360 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-44921502 (var1072) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun strategy/-44921502 (var1072) String)
(declare-fun parameters/-44921502 (var1072) var2062)
(declare-fun append/-1031950772 (String var3360) String)
(declare-fun cast-from-var2062-to-var3360 (var2062) var3360)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1072 var1072)
(declare-const var1424 var1072) ; Statement: r1 := @this: org.hibernate.boot.model.IdentifierGeneratorDefinition 
(assert (not (= var1424 null-var1072)))
(define-const var790 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var790)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var790!1 String)
(assert (= var790!1 ""))
(assert true)
(define-const var3363 String (append/672562846 var790!1 "IdentifierGeneratorDefinition{name=\u0027")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IdentifierGeneratorDefinition{name=\'") 
(declare-const var790!2 String)
(assert (= var790!2 (str.++ var790!1 "IdentifierGeneratorDefinition{name=\u0027")))
(define-const var3980 String (name/-44921502 var1424)) ; Statement: $r2 = r1.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name> 
(assert true)
(define-const var2101 String (append/672562846 var3363 var3980)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3363!1 String)
(assert (= var3363!1 (str.++ var3363 var3980)))
(assert true)
(define-const var3926 String (append/-1166366385 var2101 39)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var2101!1 String)
(assert (str.prefixof var2101 var2101!1))
(assert true)
(define-const var735 String (append/672562846 var3926 ", strategy=\u0027")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", strategy=\'") 
(declare-const var3926!1 String)
(assert (= var3926!1 (str.++ var3926 ", strategy=\u0027")))
(define-const var232 String (strategy/-44921502 var1424)) ; Statement: $r6 = r1.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy> 
(assert true)
(define-const var198 String (append/672562846 var735 var232)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var735!1 String)
(assert (= var735!1 (str.++ var735 var232)))
(assert true)
(define-const var2446 String (append/-1166366385 var198 39)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var198!1 String)
(assert (str.prefixof var198 var198!1))
(assert true)
(define-const var2720 String (append/672562846 var2446 ", parameters=")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", parameters=") 
(declare-const var2446!1 String)
(assert (= var2446!1 (str.++ var2446 ", parameters=")))
(define-const var308 var2062 (parameters/-44921502 var1424)) ; Statement: $r10 = r1.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters> 
(assert true)
(define-const var19 String (append/-1031950772 var2720 (cast-from-var2062-to-var3360 var308))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var2720!1 String)
(assert (str.prefixof var2720 var2720!1))
(assert true)
(define-const var2477 String (append/-1166366385 var19 125)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var19!1 String)
(assert (str.prefixof var19 var19!1))
(assert true)
(define-const var3462 String (toString/-2075883882 var2477)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), strategy/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.lang.String), parameters/-44921502=([org.hibernate.boot.model.IdentifierGeneratorDefinition], java.util.Map), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2062-to-var3360=([java.util.Map], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1072=org.hibernate.boot.model.IdentifierGeneratorDefinition, var1424=r1, var790=$r0, var3363=$r3, var3980=$r2, var2101=$r4, var3926=$r5, var735=$r7, var232=$r6, var198=$r8, var2446=$r9, var2720=$r11, var2062=java.util.Map, var308=$r10, var3360=java.lang.Object, var19=$r12, var2477=$r13, var3462=$r14}
; {org.hibernate.boot.model.IdentifierGeneratorDefinition=var1072, r1=var1424, $r0=var790, $r3=var3363, $r2=var3980, $r4=var2101, $r5=var3926, $r7=var735, $r6=var232, $r8=var198, $r9=var2446, $r11=var2720, java.util.Map=var2062, $r10=var308, java.lang.Object=var3360, $r12=var19, $r13=var2477, $r14=var3462}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.boot.model.IdentifierGeneratorDefinition;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IdentifierGeneratorDefinition{name=\'");	$r2 = r1.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", strategy=\'");	$r6 = r1.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.lang.String strategy>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", parameters=");	$r10 = r1.<org.hibernate.boot.model.IdentifierGeneratorDefinition: java.util.Map parameters>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 1