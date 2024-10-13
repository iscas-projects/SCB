(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var268 0)
(declare-sort var2626 0)
(declare-sort var349 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSubselect/871989422 (var2626) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var268 var268)
(declare-const null-var2626 var2626)
(declare-const null-String String)
(declare-const var3719 var268) ; Statement: r2 := @this: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var3719 null-var268)))
(declare-const var1349 var2626) ; Statement: r0 := @parameter0: org.hibernate.mapping.Table 
(assert (not (= var1349 null-var2626)))
(assert true)
(define-const var1014 String (getSubselect/871989422 var1349)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.mapping.Table: java.lang.String getSubselect()>() 
 ; Statement: if $r1 == null goto $r3 = r2.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(assert (not (= var1014 null-String))) ; Negate: Cond: $r1 == null  
(define-const var1194 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1194)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1194!1 String)
(assert (= var1194!1 ""))
(assert true)
(define-const var1247 String (append/672562846 var1194!1 "( ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("( ") 
(declare-const var1194!2 String)
(assert (= var1194!2 (str.++ var1194!1 "( ")))
(assert true)
(define-const var219 String (getSubselect/871989422 var1349)) ; Statement: $r8 = virtualinvoke r0.<org.hibernate.mapping.Table: java.lang.String getSubselect()>() 
(assert true)
(define-const var3798 String (append/672562846 var1247 var219)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1247!1 String)
(assert (= var1247!1 (str.++ var1247 var219)))
(assert true)
(define-const var2567 String (append/672562846 var3798 " )")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" )") 
(declare-const var3798!1 String)
(assert (= var3798!1 (str.++ var3798 " )")))
(assert true)
(define-const var339 String (toString/-2075883882 var2567)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSubselect/871989422=([org.hibernate.mapping.Table], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var268=org.hibernate.persister.entity.AbstractEntityPersister, var3719=r2, var2626=org.hibernate.mapping.Table, var1349=r0, var1014=$r1, var349=null_type, var1194=$r7, var1247=$r9, var219=$r8, var3798=$r10, var2567=$r11, var339=$r12}
; {org.hibernate.persister.entity.AbstractEntityPersister=var268, r2=var3719, org.hibernate.mapping.Table=var2626, r0=var1349, $r1=var1014, null_type=var349, $r7=var1194, $r9=var1247, $r8=var219, $r10=var3798, $r11=var2567, $r12=var339}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.persister.entity.AbstractEntityPersister;	r0 := @parameter0: org.hibernate.mapping.Table;	$r1 = virtualinvoke r0.<org.hibernate.mapping.Table: java.lang.String getSubselect()>();	if $r1 == null goto $r3 = r2.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("( ");	$r8 = virtualinvoke r0.<org.hibernate.mapping.Table: java.lang.String getSubselect()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" )");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 2