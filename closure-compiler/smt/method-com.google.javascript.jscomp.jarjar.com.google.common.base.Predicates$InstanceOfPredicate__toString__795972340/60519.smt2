(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2869 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun clazz/-1664300204 (var2869) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2869 var2869)
(declare-const var1176 var2869) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$InstanceOfPredicate 
(assert (not (= var1176 null-var2869)))
(define-const var112 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var112)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var112!1 String)
(assert (= var112!1 ""))
(assert true)
(define-const var2719 String (append/672562846 var112!1 "Predicates.instanceOf(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Predicates.instanceOf(") 
(declare-const var112!2 String)
(assert (= var112!2 (str.++ var112!1 "Predicates.instanceOf(")))
(define-const var1681 ClassObject (clazz/-1664300204 var1176)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$InstanceOfPredicate: java.lang.Class clazz> 
(assert true)
(define-const var892 String (getName/-1958580599 var1681)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2949 String (append/672562846 var2719 var892)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2719!1 String)
(assert (= var2719!1 (str.++ var2719 var892)))
(assert true)
(define-const var2084 String (append/672562846 var2949 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2949!1 String)
(assert (= var2949!1 (str.++ var2949 ")")))
(assert true)
(define-const var2863 String (toString/-2075883882 var2084)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), clazz/-1664300204=([com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$InstanceOfPredicate], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2869=com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$InstanceOfPredicate, var1176=r1, var112=$r0, var2719=$r4, var1681=$r2, var892=$r3, var2949=$r5, var2084=$r6, var2863=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$InstanceOfPredicate=var2869, r1=var1176, $r0=var112, $r4=var2719, $r2=var1681, $r3=var892, $r5=var2949, $r6=var2084, $r7=var2863}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$InstanceOfPredicate;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Predicates.instanceOf(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$InstanceOfPredicate: java.lang.Class clazz>;	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1