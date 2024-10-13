(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3059 0)
(declare-sort var2469 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSelectSequenceNextValString/2094383758 (var3059 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3059 var3059)
(declare-const null-String String)
(declare-const var2804 var3059) ; Statement: r1 := @this: org.hibernate.dialect.Oracle8iDialect 
(assert (not (= var2804 null-var3059)))
(declare-const var2935 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2935 null-String)))
(define-const var929 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var929)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var929!1 String)
(assert (= var929!1 ""))
(assert true)
(define-const var1967 String (append/672562846 var929!1 "select ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var929!2 String)
(assert (= var929!2 (str.++ var929!1 "select ")))
(assert true)
(define-const var2173 String (getSelectSequenceNextValString/2094383758 var2804 var2935)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.Oracle8iDialect: java.lang.String getSelectSequenceNextValString(java.lang.String)>(r2) 
(assert true)
(define-const var1269 String (append/672562846 var1967 var2173)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1967!1 String)
(assert (= var1967!1 (str.++ var1967 var2173)))
(assert true)
(define-const var3131 String (append/672562846 var1269 " from dual")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from dual") 
(declare-const var1269!1 String)
(assert (= var1269!1 (str.++ var1269 " from dual")))
(assert true)
(define-const var2369 String (toString/-2075883882 var3131)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSelectSequenceNextValString/2094383758=([org.hibernate.dialect.Oracle8iDialect, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3059=org.hibernate.dialect.Oracle8iDialect, var2804=r1, var2935=r2, var2469=null_type, var929=$r0, var1967=$r4, var2173=$r3, var1269=$r5, var3131=$r6, var2369=$r7}
; {org.hibernate.dialect.Oracle8iDialect=var3059, r1=var2804, r2=var2935, null_type=var2469, $r0=var929, $r4=var1967, $r3=var2173, $r5=var1269, $r6=var3131, $r7=var2369}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.Oracle8iDialect;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r3 = virtualinvoke r1.<org.hibernate.dialect.Oracle8iDialect: java.lang.String getSelectSequenceNextValString(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from dual");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1