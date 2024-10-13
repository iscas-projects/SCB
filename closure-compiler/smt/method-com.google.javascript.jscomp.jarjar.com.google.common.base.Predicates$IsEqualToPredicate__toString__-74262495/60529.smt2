(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var957 0)
(declare-sort var2713 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun target/-1302487991 (var957) var2713)
(declare-fun append/-1031950772 (String var2713) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var957 var957)
(declare-const var1980 var957) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$IsEqualToPredicate 
(assert (not (= var1980 null-var957)))
(define-const var3428 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3428)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3428!1 String)
(assert (= var3428!1 ""))
(assert true)
(define-const var710 String (append/672562846 var3428!1 "Predicates.equalTo(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Predicates.equalTo(") 
(declare-const var3428!2 String)
(assert (= var3428!2 (str.++ var3428!1 "Predicates.equalTo(")))
(define-const var1988 var2713 (target/-1302487991 var1980)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$IsEqualToPredicate: java.lang.Object target> 
(assert true)
(define-const var2038 String (append/-1031950772 var710 var1988)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var710!1 String)
(assert (str.prefixof var710 var710!1))
(assert true)
(define-const var3478 String (append/672562846 var2038 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2038!1 String)
(assert (= var2038!1 (str.++ var2038 ")")))
(assert true)
(define-const var2026 String (toString/-2075883882 var3478)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), target/-1302487991=([com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$IsEqualToPredicate], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var957=com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$IsEqualToPredicate, var1980=r1, var3428=$r0, var710=$r3, var2713=java.lang.Object, var1988=$r2, var2038=$r4, var3478=$r5, var2026=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$IsEqualToPredicate=var957, r1=var1980, $r0=var3428, $r3=var710, java.lang.Object=var2713, $r2=var1988, $r4=var2038, $r5=var3478, $r6=var2026}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$IsEqualToPredicate;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Predicates.equalTo(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Predicates$IsEqualToPredicate: java.lang.Object target>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1