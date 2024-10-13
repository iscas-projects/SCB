(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3008 0)
(declare-sort var2414 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3008 var3008)
(declare-const null-String String)
(declare-const var3502 var3008) ; Statement: r6 := @this: org.hibernate.dialect.Oracle8iDialect 
(assert (not (= var3502 null-var3008)))
(declare-const var1971 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1971 null-String)))
(define-const var2831 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2831)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2831!1 String)
(assert (= var2831!1 ""))
(assert true)
(define-const var1739 String (append/672562846 var2831!1 "not (")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not (") 
(declare-const var2831!2 String)
(assert (= var2831!2 (str.++ var2831!1 "not (")))
(assert true)
(define-const var265 String (append/672562846 var1739 var1971)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1739!1 String)
(assert (= var1739!1 (str.++ var1739 var1971)))
(assert true)
(define-const var2151 String (append/672562846 var265 ")")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var265!1 String)
(assert (= var265!1 (str.++ var265 ")")))
(assert true)
(define-const var2871 String (toString/-2075883882 var2151)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3008=org.hibernate.dialect.Oracle8iDialect, var3502=r6, var1971=r1, var2414=null_type, var2831=$r0, var1739=$r2, var265=$r3, var2151=$r4, var2871=$r5}
; {org.hibernate.dialect.Oracle8iDialect=var3008, r6=var3502, r1=var1971, null_type=var2414, $r0=var2831, $r2=var1739, $r3=var265, $r4=var2151, $r5=var2871}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.Oracle8iDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not (");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1