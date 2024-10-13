(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2536 0)
(declare-sort var1382 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2536 var2536)
(declare-const null-String String)
(declare-const var1207 var2536) ; Statement: r5 := @this: org.hibernate.dialect.SQLServer2016Dialect 
(assert (not (= var1207 null-var2536)))
(declare-const var3562 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3562 null-String)))
(define-const var1033 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1033)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1033!1 String)
(assert (= var1033!1 ""))
(assert true)
(define-const var209 String (append/672562846 var1033!1 "drop sequence if exists ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop sequence if exists ") 
(declare-const var1033!2 String)
(assert (= var1033!2 (str.++ var1033!1 "drop sequence if exists ")))
(assert true)
(define-const var2127 String (append/672562846 var209 var3562)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var209!1 String)
(assert (= var209!1 (str.++ var209 var3562)))
(assert true)
(define-const var3186 String (toString/-2075883882 var2127)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2536=org.hibernate.dialect.SQLServer2016Dialect, var1207=r5, var3562=r1, var1382=null_type, var1033=$r0, var209=$r2, var2127=$r3, var3186=$r4}
; {org.hibernate.dialect.SQLServer2016Dialect=var2536, r5=var1207, r1=var3562, null_type=var1382, $r0=var1033, $r2=var209, $r3=var2127, $r4=var3186}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.SQLServer2016Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop sequence if exists ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1