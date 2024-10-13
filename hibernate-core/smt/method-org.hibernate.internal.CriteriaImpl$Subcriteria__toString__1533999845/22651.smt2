(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3795 0)
(declare-sort var1415 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun path/1802004997 (var3795) String)
(declare-fun alias/1802004997 (var3795) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3795 var3795)
(declare-const null-String String)
(declare-const var3727 var3795) ; Statement: r1 := @this: org.hibernate.internal.CriteriaImpl$Subcriteria 
(assert (not (= var3727 null-var3795)))
(define-const var3208 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3208)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3208!1 String)
(assert (= var3208!1 ""))
(assert true)
(define-const var2963 String (append/672562846 var3208!1 "Subcriteria(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Subcriteria(") 
(declare-const var3208!2 String)
(assert (= var3208!2 (str.++ var3208!1 "Subcriteria(")))
(define-const var1142 String (path/1802004997 var3727)) ; Statement: $r2 = r1.<org.hibernate.internal.CriteriaImpl$Subcriteria: java.lang.String path> 
(assert true)
(define-const var3227 String (append/672562846 var2963 var1142)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2963!1 String)
(assert (= var2963!1 (str.++ var2963 var1142)))
(assert true)
(define-const var2537 String (append/672562846 var3227 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3227!1 String)
(assert (= var3227!1 (str.++ var3227 ":")))
(define-const var2890 String (alias/1802004997 var3727)) ; Statement: $r5 = r1.<org.hibernate.internal.CriteriaImpl$Subcriteria: java.lang.String alias> 
 ; Statement: if $r5 != null goto $r10 = r1.<org.hibernate.internal.CriteriaImpl$Subcriteria: java.lang.String alias> 
(assert (not (= var2890 null-String))) ; Cond: $r5 != null 
(define-const var2453 String (alias/1802004997 var3727)) ; Statement: $r10 = r1.<org.hibernate.internal.CriteriaImpl$Subcriteria: java.lang.String alias> 
(assert true) ; Non Conditional
(assert true)
(define-const var2056 String (append/672562846 var2537 var2453)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2537!1 String)
(assert (= var2537!1 (str.++ var2537 var2453)))
(assert true)
(define-const var2992 String (append/-1166366385 var2056 41)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2056!1 String)
(assert (str.prefixof var2056 var2056!1))
(assert true)
(define-const var512 String (toString/-2075883882 var2992)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), path/1802004997=([org.hibernate.internal.CriteriaImpl$Subcriteria], java.lang.String), alias/1802004997=([org.hibernate.internal.CriteriaImpl$Subcriteria], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3795=org.hibernate.internal.CriteriaImpl$Subcriteria, var3727=r1, var3208=$r0, var2963=$r3, var1142=$r2, var3227=$r4, var2537=$r6, var2890=$r5, var1415=null_type, var2453=$r10, var2056=$r7, var2992=$r8, var512=$r9}
; {org.hibernate.internal.CriteriaImpl$Subcriteria=var3795, r1=var3727, $r0=var3208, $r3=var2963, $r2=var1142, $r4=var3227, $r6=var2537, $r5=var2890, null_type=var1415, $r10=var2453, $r7=var2056, $r8=var2992, $r9=var512}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.internal.CriteriaImpl$Subcriteria;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Subcriteria(");	$r2 = r1.<org.hibernate.internal.CriteriaImpl$Subcriteria: java.lang.String path>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = r1.<org.hibernate.internal.CriteriaImpl$Subcriteria: java.lang.String alias>;	if $r5 != null goto $r10 = r1.<org.hibernate.internal.CriteriaImpl$Subcriteria: java.lang.String alias>;	$r10 = r1.<org.hibernate.internal.CriteriaImpl$Subcriteria: java.lang.String alias>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3