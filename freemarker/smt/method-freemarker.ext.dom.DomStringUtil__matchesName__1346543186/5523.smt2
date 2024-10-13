(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1173 0)
(declare-sort var2894 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDefaultNS/-140015768 (var2894) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var2894 var2894)
(declare-const var3990 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3990 null-String)))
(declare-const var740 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var740 null-String)))
(declare-const var2053 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2053 null-String)))
(declare-const var974 var2894) ; Statement: r0 := @parameter3: freemarker.core.Environment 
(assert (not (= var974 null-var2894)))
(assert true)
(define-const var695 String (getDefaultNS/-140015768 var974)) ; Statement: r1 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String getDefaultNS()>() 
 ; Statement: if r1 == null goto $r3 = "" 
(assert (= var695 null-String)) ; Cond: r1 == null 
(define-const var1696 String "") ; Statement: $r3 = "" 
(assert true)
(define-const var3816 Bool (= var1696 var2053)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto r4 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String getPrefixForNamespace(java.lang.String)>(r2) 
(assert (not (= (ite var3816 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if r1 == null goto $z2 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>(r8) 
(assert (not (= var695 null-String))) ; Negate: Cond: r1 == null  
(define-const var3000 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3000)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3000!1 String)
(assert (= var3000!1 ""))
(assert true)
(define-const var1099 String (append/672562846 var3000!1 "N:")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("N:") 
(declare-const var3000!2 String)
(assert (= var3000!2 (str.++ var3000!1 "N:")))
(assert true)
(define-const var913 String (append/672562846 var1099 var740)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var1099!1 String)
(assert (= var1099!1 (str.++ var1099 var740)))
(assert true)
(define-const var3735 String (toString/-2075883882 var913)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var187 Bool (= var3990 var3735)) ; Statement: $z4 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>($r19) 
 ; Statement: return $z4 
(check-sat)
(get-model)
(get-unsat-core)
; {getDefaultNS/-140015768=([freemarker.core.Environment], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3990=r5, var1173=null_type, var740=r8, var2053=r2, var2894=freemarker.core.Environment, var974=r0, var695=r1, var1696=$r3, var3816=$z0, var3000=$r16, var1099=$r17, var913=$r18, var3735=$r19, var187=$z4}
; {r5=var3990, null_type=var1173, r8=var740, r2=var2053, freemarker.core.Environment=var2894, r0=var974, r1=var695, $r3=var1696, $z0=var3816, $r16=var3000, $r17=var1099, $r18=var913, $r19=var3735, $z4=var187}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @parameter0: java.lang.String;	r8 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r0 := @parameter3: freemarker.core.Environment;	r1 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String getDefaultNS()>();	if r1 == null goto $r3 = "";	$r3 = "";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto r4 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String getPrefixForNamespace(java.lang.String)>(r2);	if r1 == null goto $z2 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>(r8);	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("N:");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	$z4 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>($r19);	return $z4
;block_num 4