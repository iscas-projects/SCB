(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3010 0)
(declare-sort var945 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3010 var3010)
(declare-const null-String String)
(declare-const var3436 var3010) ; Statement: r6 := @this: org.hibernate.dialect.IngresDialect 
(assert (not (= var3436 null-var3010)))
(declare-const var206 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var206 null-String)))
(define-const var2839 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2839)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2839!1 String)
(assert (= var2839!1 ""))
(assert true)
(define-const var3854 String (append/672562846 var2839!1 "drop sequence ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop sequence ") 
(declare-const var2839!2 String)
(assert (= var2839!2 (str.++ var2839!1 "drop sequence ")))
(assert true)
(define-const var1778 String (append/672562846 var3854 var206)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3854!1 String)
(assert (= var3854!1 (str.++ var3854 var206)))
(assert true)
(define-const var1934 String (append/672562846 var1778 " restrict")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" restrict") 
(declare-const var1778!1 String)
(assert (= var1778!1 (str.++ var1778 " restrict")))
(assert true)
(define-const var1288 String (toString/-2075883882 var1934)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3010=org.hibernate.dialect.IngresDialect, var3436=r6, var206=r1, var945=null_type, var2839=$r0, var3854=$r2, var1778=$r3, var1934=$r4, var1288=$r5}
; {org.hibernate.dialect.IngresDialect=var3010, r6=var3436, r1=var206, null_type=var945, $r0=var2839, $r2=var3854, $r3=var1778, $r4=var1934, $r5=var1288}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.IngresDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop sequence ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" restrict");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1