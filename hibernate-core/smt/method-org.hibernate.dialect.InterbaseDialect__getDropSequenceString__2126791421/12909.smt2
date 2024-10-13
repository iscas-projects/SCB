(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1330 0)
(declare-sort var2574 0)
(declare-sort var1088 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toUpperCase/398655892 (String var1088) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1330 var1330)
(declare-const null-String String)
(declare-const var1088-ROOT var1088)
(declare-const var1889 var1330) ; Statement: r8 := @this: org.hibernate.dialect.InterbaseDialect 
(assert (not (= var1889 null-var1330)))
(declare-const var3125 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3125 null-String)))
(define-const var35 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var35)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var35!1 String)
(assert (= var35!1 ""))
(assert true)
(define-const var3644 String (append/672562846 var35!1 "delete from rdb$generators where rdb$generator_name = \u0027")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("delete from rdb$generators where rdb$generator_name = \'") 
(declare-const var35!2 String)
(assert (= var35!2 (str.++ var35!1 "delete from rdb$generators where rdb$generator_name = \u0027")))
(define-const var3568 var1088 var1088-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1878 String (toUpperCase/398655892 var3125 var3568)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2) 
(assert true)
(define-const var2506 String (append/672562846 var3644 var1878)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3644!1 String)
(assert (= var3644!1 (str.++ var3644 var1878)))
(assert true)
(define-const var3983 String (append/672562846 var2506 "\u0027")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2506!1 String)
(assert (= var2506!1 (str.++ var2506 "\u0027")))
(assert true)
(define-const var3236 String (toString/-2075883882 var3983)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1330=org.hibernate.dialect.InterbaseDialect, var1889=r8, var3125=r1, var2574=null_type, var35=$r0, var3644=$r4, var1088=java.util.Locale, var3568=$r2, var1878=$r3, var2506=$r5, var3983=$r6, var3236=$r7}
; {org.hibernate.dialect.InterbaseDialect=var1330, r8=var1889, r1=var3125, null_type=var2574, $r0=var35, $r4=var3644, java.util.Locale=var1088, $r2=var3568, $r3=var1878, $r5=var2506, $r6=var3983, $r7=var3236}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.dialect.InterbaseDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("delete from rdb$generators where rdb$generator_name = \'");	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1