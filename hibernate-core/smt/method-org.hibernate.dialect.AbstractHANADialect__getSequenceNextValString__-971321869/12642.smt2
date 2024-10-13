(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2279 0)
(declare-sort var2497 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSelectSequenceNextValString/1894130639 (var2279 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2279 var2279)
(declare-const null-String String)
(declare-const var2348 var2279) ; Statement: r1 := @this: org.hibernate.dialect.AbstractHANADialect 
(assert (not (= var2348 null-var2279)))
(declare-const var1365 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1365 null-String)))
(define-const var2649 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2649)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2649!1 String)
(assert (= var2649!1 ""))
(assert true)
(define-const var1884 String (append/672562846 var2649!1 "select ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var2649!2 String)
(assert (= var2649!2 (str.++ var2649!1 "select ")))
(assert true)
(define-const var263 String (getSelectSequenceNextValString/1894130639 var2348 var1365)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.AbstractHANADialect: java.lang.String getSelectSequenceNextValString(java.lang.String)>(r2) 
(assert true)
(define-const var2457 String (append/672562846 var1884 var263)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1884!1 String)
(assert (= var1884!1 (str.++ var1884 var263)))
(assert true)
(define-const var2892 String (append/672562846 var2457 " from sys.dummy")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from sys.dummy") 
(declare-const var2457!1 String)
(assert (= var2457!1 (str.++ var2457 " from sys.dummy")))
(assert true)
(define-const var167 String (toString/-2075883882 var2892)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSelectSequenceNextValString/1894130639=([org.hibernate.dialect.AbstractHANADialect, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2279=org.hibernate.dialect.AbstractHANADialect, var2348=r1, var1365=r2, var2497=null_type, var2649=$r0, var1884=$r4, var263=$r3, var2457=$r5, var2892=$r6, var167=$r7}
; {org.hibernate.dialect.AbstractHANADialect=var2279, r1=var2348, r2=var1365, null_type=var2497, $r0=var2649, $r4=var1884, $r3=var263, $r5=var2457, $r6=var2892, $r7=var167}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.AbstractHANADialect;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r3 = virtualinvoke r1.<org.hibernate.dialect.AbstractHANADialect: java.lang.String getSelectSequenceNextValString(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from sys.dummy");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1