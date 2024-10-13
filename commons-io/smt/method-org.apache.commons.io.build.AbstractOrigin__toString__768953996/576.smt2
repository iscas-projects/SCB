(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3794 0)
(declare-sort var1588 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getSimpleName/603853551 (var3794) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun origin/-439761164 (var3794) var1588)
(declare-fun toString/-522406933 (var1588) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3794 var3794)
(declare-const var507 var3794) ; Statement: r1 := @this: org.apache.commons.io.build.AbstractOrigin 
(assert (not (= var507 null-var3794)))
(define-const var419 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var419)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var419!1 String)
(assert (= var419!1 ""))
(assert true)
(define-const var29 String (getSimpleName/603853551 var507)) ; Statement: $r2 = specialinvoke r1.<org.apache.commons.io.build.AbstractOrigin: java.lang.String getSimpleName()>() 
(assert true)
(define-const var942 String (append/672562846 var419!1 var29)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var419!2 String)
(assert (= var419!2 (str.++ var419!1 var29)))
(assert true)
(define-const var3957 String (append/672562846 var942 "[")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var942!1 String)
(assert (= var942!1 (str.++ var942 "[")))
(define-const var238 var1588 (origin/-439761164 var507)) ; Statement: $r4 = r1.<org.apache.commons.io.build.AbstractOrigin: java.lang.Object origin> 
(assert true)
(define-const var247 String (toString/-522406933 var238)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1560 String (append/672562846 var3957 var247)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3957!1 String)
(assert (= var3957!1 (str.++ var3957 var247)))
(assert true)
(define-const var199 String (append/672562846 var1560 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1560!1 String)
(assert (= var1560!1 (str.++ var1560 "]")))
(assert true)
(define-const var1117 String (toString/-2075883882 var199)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getSimpleName/603853551=([org.apache.commons.io.build.AbstractOrigin], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), origin/-439761164=([org.apache.commons.io.build.AbstractOrigin], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3794=org.apache.commons.io.build.AbstractOrigin, var507=r1, var419=$r0, var29=$r2, var942=$r3, var3957=$r6, var1588=java.lang.Object, var238=$r4, var247=$r5, var1560=$r7, var199=$r8, var1117=$r9}
; {org.apache.commons.io.build.AbstractOrigin=var3794, r1=var507, $r0=var419, $r2=var29, $r3=var942, $r6=var3957, java.lang.Object=var1588, $r4=var238, $r5=var247, $r7=var1560, $r8=var199, $r9=var1117}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.build.AbstractOrigin;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.apache.commons.io.build.AbstractOrigin: java.lang.String getSimpleName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r4 = r1.<org.apache.commons.io.build.AbstractOrigin: java.lang.Object origin>;	$r5 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1