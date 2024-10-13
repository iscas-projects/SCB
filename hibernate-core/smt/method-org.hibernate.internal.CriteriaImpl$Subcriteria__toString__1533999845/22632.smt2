(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var614 0)
(declare-sort var2035 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun path/1802004997 (var614) String)
(declare-fun alias/1802004997 (var614) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var614 var614)
(declare-const null-String String)
(declare-const var1384 var614) ; Statement: r1 := @this: org.hibernate.internal.CriteriaImpl$Subcriteria 
(assert (not (= var1384 null-var614)))
(define-const var1576 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1576)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1576!1 String)
(assert (= var1576!1 ""))
(assert true)
(define-const var833 String (append/672562846 var1576!1 "Subcriteria(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Subcriteria(") 
(declare-const var1576!2 String)
(assert (= var1576!2 (str.++ var1576!1 "Subcriteria(")))
(define-const var3077 String (path/1802004997 var1384)) ; Statement: $r2 = r1.<org.hibernate.internal.CriteriaImpl$Subcriteria: java.lang.String path> 
(assert true)
(define-const var650 String (append/672562846 var833 var3077)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var833!1 String)
(assert (= var833!1 (str.++ var833 var3077)))
(assert true)
(define-const var760 String (append/672562846 var650 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var650!1 String)
(assert (= var650!1 (str.++ var650 ":")))
(define-const var170 String (alias/1802004997 var1384)) ; Statement: $r5 = r1.<org.hibernate.internal.CriteriaImpl$Subcriteria: java.lang.String alias> 
 ; Statement: if $r5 != null goto $r10 = r1.<org.hibernate.internal.CriteriaImpl$Subcriteria: java.lang.String alias> 
(assert (not (not (= var170 null-String)))) ; Negate: Cond: $r5 != null  
(define-const var1857 String "") ; Statement: $r10 = "" 
 ; Statement: goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)] 
(assert true) ; Non Conditional
(assert true)
(define-const var80 String (append/672562846 var760 var1857)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var760!1 String)
(assert (= var760!1 (str.++ var760 var1857)))
(assert true)
(define-const var2875 String (append/-1166366385 var80 41)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var80!1 String)
(assert (str.prefixof var80 var80!1))
(assert true)
(define-const var834 String (toString/-2075883882 var2875)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), path/1802004997=([org.hibernate.internal.CriteriaImpl$Subcriteria], java.lang.String), alias/1802004997=([org.hibernate.internal.CriteriaImpl$Subcriteria], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var614=org.hibernate.internal.CriteriaImpl$Subcriteria, var1384=r1, var1576=$r0, var833=$r3, var3077=$r2, var650=$r4, var760=$r6, var170=$r5, var2035=null_type, var1857=$r10, var80=$r7, var2875=$r8, var834=$r9}
; {org.hibernate.internal.CriteriaImpl$Subcriteria=var614, r1=var1384, $r0=var1576, $r3=var833, $r2=var3077, $r4=var650, $r6=var760, $r5=var170, null_type=var2035, $r10=var1857, $r7=var80, $r8=var2875, $r9=var834}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.internal.CriteriaImpl$Subcriteria;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Subcriteria(");	$r2 = r1.<org.hibernate.internal.CriteriaImpl$Subcriteria: java.lang.String path>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = r1.<org.hibernate.internal.CriteriaImpl$Subcriteria: java.lang.String alias>;	if $r5 != null goto $r10 = r1.<org.hibernate.internal.CriteriaImpl$Subcriteria: java.lang.String alias>;	$r10 = "";	goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)];	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3