(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3971 0)
(declare-sort var1588 0)
(declare-sort var881 0)
(declare-sort var3297 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMessage/918716458 (var1588) String)
(declare-fun cast-from-var3971-to-var1588 (var3971) var1588)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entityName/-2131249072 (var3971) String)
(declare-fun identifier/-2131249072 (var3971) var881)
(declare-fun var3297_infoString/1203698788 (String var881) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3971 var3971)
(declare-const var3801 var3971) ; Statement: r1 := @this: org.hibernate.StaleObjectStateException 
(assert (not (= var3801 null-var3971)))
(define-const var2574 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2574)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2574!1 String)
(assert (= var2574!1 ""))
(assert true)
(define-const var2404 String (getMessage/918716458 (cast-from-var3971-to-var1588 var3801))) ; Statement: $r2 = specialinvoke r1.<org.hibernate.StaleStateException: java.lang.String getMessage()>() 
(assert true)
(define-const var2375 String (append/672562846 var2574!1 var2404)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2574!2 String)
(assert (= var2574!2 (str.++ var2574!1 var2404)))
(assert true)
(define-const var1181 String (append/672562846 var2375 " : ")) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ") 
(declare-const var2375!1 String)
(assert (= var2375!1 (str.++ var2375 " : ")))
(define-const var2602 String (entityName/-2131249072 var3801)) ; Statement: $r5 = r1.<org.hibernate.StaleObjectStateException: java.lang.String entityName> 
(define-const var1159 var881 (identifier/-2131249072 var3801)) ; Statement: $r4 = r1.<org.hibernate.StaleObjectStateException: java.io.Serializable identifier> 
(define-const var3043 String (var3297_infoString/1203698788 var2602 var1159)) ; Statement: $r6 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(java.lang.String,java.io.Serializable)>($r5, $r4) 
(assert true)
(define-const var1447 String (append/672562846 var1181 var3043)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1181!1 String)
(assert (= var1181!1 (str.++ var1181 var3043)))
(assert true)
(define-const var2137 String (toString/-2075883882 var1447)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMessage/918716458=([javax.persistence.PersistenceException], java.lang.String), cast-from-var3971-to-var1588=([org.hibernate.StaleObjectStateException], javax.persistence.PersistenceException), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entityName/-2131249072=([org.hibernate.StaleObjectStateException], java.lang.String), identifier/-2131249072=([org.hibernate.StaleObjectStateException], java.io.Serializable), var3297_infoString/1203698788=([java.lang.String, java.io.Serializable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3971=org.hibernate.StaleObjectStateException, var3801=r1, var2574=$r0, var1588=javax.persistence.PersistenceException, var2404=$r2, var2375=$r3, var1181=$r7, var2602=$r5, var881=java.io.Serializable, var1159=$r4, var3297=org.hibernate.pretty.MessageHelper, var3043=$r6, var1447=$r8, var2137=$r9}
; {org.hibernate.StaleObjectStateException=var3971, r1=var3801, $r0=var2574, javax.persistence.PersistenceException=var1588, $r2=var2404, $r3=var2375, $r7=var1181, $r5=var2602, java.io.Serializable=var881, $r4=var1159, org.hibernate.pretty.MessageHelper=var3297, $r6=var3043, $r8=var1447, $r9=var2137}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.StaleObjectStateException;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.hibernate.StaleStateException: java.lang.String getMessage()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ");	$r5 = r1.<org.hibernate.StaleObjectStateException: java.lang.String entityName>;	$r4 = r1.<org.hibernate.StaleObjectStateException: java.io.Serializable identifier>;	$r6 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(java.lang.String,java.io.Serializable)>($r5, $r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1