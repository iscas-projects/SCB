(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1328 0)
(declare-sort var205 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1328 var1328)
(declare-const null-String String)
(declare-const var1998 var1328) ; Statement: r6 := @this: org.hibernate.dialect.DB2390V8Dialect 
(assert (not (= var1998 null-var1328)))
(declare-const var237 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var237 null-String)))
(define-const var746 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var746)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var746!1 String)
(assert (= var746!1 ""))
(assert true)
(define-const var294 String (append/672562846 var746!1 "create sequence ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create sequence ") 
(declare-const var746!2 String)
(assert (= var746!2 (str.++ var746!1 "create sequence ")))
(assert true)
(define-const var3576 String (append/672562846 var294 var237)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var294!1 String)
(assert (= var294!1 (str.++ var294 var237)))
(assert true)
(define-const var3305 String (append/672562846 var3576 " as integer start with 1 increment by 1 minvalue 1 nomaxvalue nocycle nocache")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as integer start with 1 increment by 1 minvalue 1 nomaxvalue nocycle nocache") 
(declare-const var3576!1 String)
(assert (= var3576!1 (str.++ var3576 " as integer start with 1 increment by 1 minvalue 1 nomaxvalue nocycle nocache")))
(assert true)
(define-const var3936 String (toString/-2075883882 var3305)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1328=org.hibernate.dialect.DB2390V8Dialect, var1998=r6, var237=r1, var205=null_type, var746=$r0, var294=$r2, var3576=$r3, var3305=$r4, var3936=$r5}
; {org.hibernate.dialect.DB2390V8Dialect=var1328, r6=var1998, r1=var237, null_type=var205, $r0=var746, $r2=var294, $r3=var3576, $r4=var3305, $r5=var3936}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.DB2390V8Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create sequence ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as integer start with 1 increment by 1 minvalue 1 nomaxvalue nocycle nocache");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1