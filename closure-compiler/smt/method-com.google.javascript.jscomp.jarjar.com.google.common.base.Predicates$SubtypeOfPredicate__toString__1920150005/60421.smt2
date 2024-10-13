(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var608 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun clazz/1756961053 (var608) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var608 var608)
(declare-const var2054 var608) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$SubtypeOfPredicate 
(assert (not (= var2054 null-var608)))
(define-const var2640 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2640)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2640!1 String)
(assert (= var2640!1 ""))
(assert true)
(define-const var145 String (append/672562846 var2640!1 "Predicates.subtypeOf(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Predicates.subtypeOf(") 
(declare-const var2640!2 String)
(assert (= var2640!2 (str.++ var2640!1 "Predicates.subtypeOf(")))
(define-const var2659 ClassObject (clazz/1756961053 var2054)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$SubtypeOfPredicate: java.lang.Class clazz> 
(assert true)
(define-const var3867 String (getName/-1958580599 var2659)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2575 String (append/672562846 var145 var3867)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var145!1 String)
(assert (= var145!1 (str.++ var145 var3867)))
(assert true)
(define-const var1422 String (append/672562846 var2575 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2575!1 String)
(assert (= var2575!1 (str.++ var2575 ")")))
(assert true)
(define-const var2454 String (toString/-2075883882 var1422)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), clazz/1756961053=([com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$SubtypeOfPredicate], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var608=com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$SubtypeOfPredicate, var2054=r1, var2640=$r0, var145=$r4, var2659=$r2, var3867=$r3, var2575=$r5, var1422=$r6, var2454=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$SubtypeOfPredicate=var608, r1=var2054, $r0=var2640, $r4=var145, $r2=var2659, $r3=var3867, $r5=var2575, $r6=var1422, $r7=var2454}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$SubtypeOfPredicate;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Predicates.subtypeOf(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$SubtypeOfPredicate: java.lang.Class clazz>;	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1