(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var757 0)
(declare-sort var3978 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun supportsIfExistsAfterAlterTable/2014925792 (var757) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var757 var757)
(declare-const null-String String)
(declare-const var597 var757) ; Statement: r1 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var597 null-var757)))
(declare-const var1912 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1912 null-String)))
(define-const var3784 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3784 "alter table ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("alter table ") 
(declare-const var3784!1 String)
(assert (= var3784!1 "alter table "))
(assert true)
(define-const var166 Bool (supportsIfExistsAfterAlterTable/2014925792 var597)) ; Statement: $z0 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean supportsIfExistsAfterAlterTable()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(assert (= (ite var166 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var3784!1 var1912)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3784!2 String)
(assert (= var3784!2 (str.++ var3784!1 var1912)))
(assert true)
(define-const var79 String (toString/-2075883882 var3784!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), supportsIfExistsAfterAlterTable/2014925792=([org.hibernate.dialect.Dialect], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var757=org.hibernate.dialect.Dialect, var597=r1, var1912=r2, var3978=null_type, var3784=$r0, var166=$z0, var79=$r3}
; {org.hibernate.dialect.Dialect=var757, r1=var597, r2=var1912, null_type=var3978, $r0=var3784, $z0=var166, $r3=var79}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.Dialect;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("alter table ");	$z0 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean supportsIfExistsAfterAlterTable()>();	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 2