(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2977 0)
(declare-sort var1186 0)
(declare-sort var2104 0)
(declare-sort var3981 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun property/1216992018 (var2977) var1186)
(declare-fun append/-1031950772 (String var2104) String)
(declare-fun cast-from-var1186-to-var2104 (var1186) var2104)
(declare-fun declaringClass/1216992018 (var2977) var3981)
(declare-fun cast-from-var3981-to-var2104 (var3981) var2104)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2977 var2977)
(declare-const var2947 var2977) ; Statement: r1 := @this: org.hibernate.cfg.PropertyInferredData 
(assert (not (= var2947 null-var2977)))
(define-const var2043 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2043)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2043!1 String)
(assert (= var2043!1 ""))
(assert true)
;(assert (append/672562846 var2043!1 "PropertyInferredData")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PropertyInferredData") 
(declare-const var2043!2 String)
(assert (= var2043!2 (str.++ var2043!1 "PropertyInferredData")))
(assert true)
(define-const var2991 String (append/672562846 var2043!2 "{property=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{property=") 
(declare-const var2043!3 String)
(assert (= var2043!3 (str.++ var2043!2 "{property=")))
(define-const var988 var1186 (property/1216992018 var2947)) ; Statement: $r2 = r1.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XProperty property> 
(assert true)
;(assert (append/-1031950772 var2991 (cast-from-var1186-to-var2104 var988))) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2991!1 String)
(assert (str.prefixof var2991 var2991!1))
(assert true)
(define-const var1732 String (append/672562846 var2043!3 ", declaringClass=")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", declaringClass=") 
(declare-const var2043!4 String)
(assert (= var2043!4 (str.++ var2043!3 ", declaringClass=")))
(define-const var2493 var3981 (declaringClass/1216992018 var2947)) ; Statement: $r4 = r1.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XClass declaringClass> 
(assert true)
;(assert (append/-1031950772 var1732 (cast-from-var3981-to-var2104 var2493))) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var1732!1 String)
(assert (str.prefixof var1732 var1732!1))
(assert true)
;(assert (append/-1166366385 var2043!4 125)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var2043!5 String)
(assert (str.prefixof var2043!4 var2043!5))
(assert true)
(define-const var1414 String (toString/-2075883882 var2043!5)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), property/1216992018=([org.hibernate.cfg.PropertyInferredData], org.hibernate.annotations.common.reflection.XProperty), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1186-to-var2104=([org.hibernate.annotations.common.reflection.XProperty], java.lang.Object), declaringClass/1216992018=([org.hibernate.cfg.PropertyInferredData], org.hibernate.annotations.common.reflection.XClass), cast-from-var3981-to-var2104=([org.hibernate.annotations.common.reflection.XClass], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2977=org.hibernate.cfg.PropertyInferredData, var2947=r1, var2043=$r0, var2991=$r3, var1186=org.hibernate.annotations.common.reflection.XProperty, var988=$r2, var2104=java.lang.Object, var1732=$r5, var3981=org.hibernate.annotations.common.reflection.XClass, var2493=$r4, var1414=$r6}
; {org.hibernate.cfg.PropertyInferredData=var2977, r1=var2947, $r0=var2043, $r3=var2991, org.hibernate.annotations.common.reflection.XProperty=var1186, $r2=var988, java.lang.Object=var2104, $r5=var1732, org.hibernate.annotations.common.reflection.XClass=var3981, $r4=var2493, $r6=var1414}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cfg.PropertyInferredData;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PropertyInferredData");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{property=");	$r2 = r1.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XProperty property>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", declaringClass=");	$r4 = r1.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XClass declaringClass>;	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1