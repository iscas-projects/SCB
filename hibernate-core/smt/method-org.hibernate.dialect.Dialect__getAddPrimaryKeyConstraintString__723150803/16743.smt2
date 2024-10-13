(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var351 0)
(declare-sort var2891 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var351 var351)
(declare-const null-String String)
(declare-const var457 var351) ; Statement: r6 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var457 null-var351)))
(declare-const var328 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var328 null-String)))
(define-const var2202 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2202)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2202!1 String)
(assert (= var2202!1 ""))
(assert true)
(define-const var1985 String (append/672562846 var2202!1 " add constraint ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" add constraint ") 
(declare-const var2202!2 String)
(assert (= var2202!2 (str.++ var2202!1 " add constraint ")))
(assert true)
(define-const var1919 String (append/672562846 var1985 var328)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1985!1 String)
(assert (= var1985!1 (str.++ var1985 var328)))
(assert true)
(define-const var826 String (append/672562846 var1919 " primary key ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" primary key ") 
(declare-const var1919!1 String)
(assert (= var1919!1 (str.++ var1919 " primary key ")))
(assert true)
(define-const var3605 String (toString/-2075883882 var826)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var351=org.hibernate.dialect.Dialect, var457=r6, var328=r1, var2891=null_type, var2202=$r0, var1985=$r2, var1919=$r3, var826=$r4, var3605=$r5}
; {org.hibernate.dialect.Dialect=var351, r6=var457, r1=var328, null_type=var2891, $r0=var2202, $r2=var1985, $r3=var1919, $r4=var826, $r5=var3605}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" add constraint ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" primary key ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1