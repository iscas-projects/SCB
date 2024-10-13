(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2825 0)
(declare-sort var2375 0)
(declare-sort var368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSubselect/871989422 (var2375) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2825 var2825)
(declare-const null-var2375 var2375)
(declare-const null-String String)
(declare-const var580 var2825) ; Statement: r2 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var580 null-var2825)))
(declare-const var1162 var2375) ; Statement: r0 := @parameter0: org.hibernate.mapping.Table 
(assert (not (= var1162 null-var2375)))
(assert true)
(define-const var1755 String (getSubselect/871989422 var1162)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.mapping.Table: java.lang.String getSubselect()>() 
 ; Statement: if $r1 == null goto $r3 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(assert (not (= var1755 null-String))) ; Negate: Cond: $r1 == null  
(define-const var1322 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1322)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1322!1 String)
(assert (= var1322!1 ""))
(assert true)
(define-const var3904 String (append/672562846 var1322!1 "( ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("( ") 
(declare-const var1322!2 String)
(assert (= var1322!2 (str.++ var1322!1 "( ")))
(assert true)
(define-const var255 String (getSubselect/871989422 var1162)) ; Statement: $r8 = virtualinvoke r0.<org.hibernate.mapping.Table: java.lang.String getSubselect()>() 
(assert true)
(define-const var1149 String (append/672562846 var3904 var255)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3904!1 String)
(assert (= var3904!1 (str.++ var3904 var255)))
(assert true)
(define-const var1327 String (append/672562846 var1149 " )")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" )") 
(declare-const var1149!1 String)
(assert (= var1149!1 (str.++ var1149 " )")))
(assert true)
(define-const var5 String (toString/-2075883882 var1327)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSubselect/871989422=([org.hibernate.mapping.Table], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2825=org.hibernate.persister.collection.AbstractCollectionPersister, var580=r2, var2375=org.hibernate.mapping.Table, var1162=r0, var1755=$r1, var368=null_type, var1322=$r7, var3904=$r9, var255=$r8, var1149=$r10, var1327=$r11, var5=$r12}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var2825, r2=var580, org.hibernate.mapping.Table=var2375, r0=var1162, $r1=var1755, null_type=var368, $r7=var1322, $r9=var3904, $r8=var255, $r10=var1149, $r11=var1327, $r12=var5}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r0 := @parameter0: org.hibernate.mapping.Table;	$r1 = virtualinvoke r0.<org.hibernate.mapping.Table: java.lang.String getSubselect()>();	if $r1 == null goto $r3 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("( ");	$r8 = virtualinvoke r0.<org.hibernate.mapping.Table: java.lang.String getSubselect()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" )");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 2