(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1396 0)
(declare-sort var41 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1396 var1396)
(declare-const null-String String)
(declare-const var1619 var1396) ; Statement: r6 := @this: org.hibernate.dialect.DB2390V8Dialect 
(assert (not (= var1619 null-var1396)))
(declare-const var480 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var480 null-String)))
(define-const var365 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var365)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var365!1 String)
(assert (= var365!1 ""))
(assert true)
(define-const var3912 String (append/672562846 var365!1 "select nextval for ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select nextval for ") 
(declare-const var365!2 String)
(assert (= var365!2 (str.++ var365!1 "select nextval for ")))
(assert true)
(define-const var1373 String (append/672562846 var3912 var480)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3912!1 String)
(assert (= var3912!1 (str.++ var3912 var480)))
(assert true)
(define-const var2722 String (append/672562846 var1373 " from sysibm.sysdummy1")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from sysibm.sysdummy1") 
(declare-const var1373!1 String)
(assert (= var1373!1 (str.++ var1373 " from sysibm.sysdummy1")))
(assert true)
(define-const var1925 String (toString/-2075883882 var2722)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1396=org.hibernate.dialect.DB2390V8Dialect, var1619=r6, var480=r1, var41=null_type, var365=$r0, var3912=$r2, var1373=$r3, var2722=$r4, var1925=$r5}
; {org.hibernate.dialect.DB2390V8Dialect=var1396, r6=var1619, r1=var480, null_type=var41, $r0=var365, $r2=var3912, $r3=var1373, $r4=var2722, $r5=var1925}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.DB2390V8Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select nextval for ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from sysibm.sysdummy1");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1