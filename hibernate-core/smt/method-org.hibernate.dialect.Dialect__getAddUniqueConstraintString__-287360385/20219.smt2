(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3624 0)
(declare-sort var548 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3624 var3624)
(declare-const null-String String)
(declare-const var1264 var3624) ; Statement: r6 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var1264 null-var3624)))
(declare-const var1225 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1225 null-String)))
(define-const var1878 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1878)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1878!1 String)
(assert (= var1878!1 ""))
(assert true)
(define-const var2841 String (append/672562846 var1878!1 " add constraint ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" add constraint ") 
(declare-const var1878!2 String)
(assert (= var1878!2 (str.++ var1878!1 " add constraint ")))
(assert true)
(define-const var1200 String (append/672562846 var2841 var1225)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2841!1 String)
(assert (= var2841!1 (str.++ var2841 var1225)))
(assert true)
(define-const var891 String (append/672562846 var1200 " unique ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" unique ") 
(declare-const var1200!1 String)
(assert (= var1200!1 (str.++ var1200 " unique ")))
(assert true)
(define-const var3517 String (toString/-2075883882 var891)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3624=org.hibernate.dialect.Dialect, var1264=r6, var1225=r1, var548=null_type, var1878=$r0, var2841=$r2, var1200=$r3, var891=$r4, var3517=$r5}
; {org.hibernate.dialect.Dialect=var3624, r6=var1264, r1=var1225, null_type=var548, $r0=var1878, $r2=var2841, $r3=var1200, $r4=var891, $r5=var3517}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" add constraint ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" unique ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1