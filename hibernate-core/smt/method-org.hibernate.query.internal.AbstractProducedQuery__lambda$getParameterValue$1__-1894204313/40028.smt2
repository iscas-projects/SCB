(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1768 0)
(declare-sort var864 0)
(declare-sort var430 0)
(declare-sort var1513 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var430) String)
(declare-fun cast-from-var1768-to-var430 (var1768) var430)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1513-init () var1513)
(declare-fun <init>/875830710 (var1513 String) void)
(declare-const null-var1768 var1768)
(declare-const null-var864 var864)
(declare-const var1843 var1768) ; Statement: r1 := @parameter0: org.hibernate.query.QueryParameter 
(assert (not (= var1843 null-var1768)))
(declare-const var701 var864) ; Statement: r6 := @parameter1: org.hibernate.QueryParameterException 
(assert (not (= var701 null-var864)))
(define-const var2141 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2141)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2141!1 String)
(assert (= var2141!1 ""))
(assert true)
(define-const var2880 String (append/672562846 var2141!1 "Parameter reference [")) ; Statement: $r2 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parameter reference [") 
(declare-const var2141!2 String)
(assert (= var2141!2 (str.++ var2141!1 "Parameter reference [")))
(assert true)
(define-const var3437 String (append/-1031950772 var2880 (cast-from-var1768-to-var430 var1843))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2880!1 String)
(assert (str.prefixof var2880 var2880!1))
(assert true)
(define-const var2844 String (append/672562846 var3437 "] did not come from this query")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] did not come from this query") 
(declare-const var3437!1 String)
(assert (= var3437!1 (str.++ var3437 "] did not come from this query")))
(assert true)
(define-const var730 String (toString/-2075883882 var2844)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if r6 != null goto $r11 = new java.lang.IllegalArgumentException 
(assert (not (not (= var701 null-var864)))) ; Negate: Cond: r6 != null  
(define-const var2453 var1513 var1513-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2453 var730)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>(r5) 

(declare-const var2453!1 var1513)
(declare-const var730!1 String)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1768-to-var430=([org.hibernate.query.QueryParameter], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1513-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1768=org.hibernate.query.QueryParameter, var1843=r1, var864=org.hibernate.QueryParameterException, var701=r6, var2141=$r9, var2880=$r2, var430=java.lang.Object, var3437=$r3, var2844=$r4, var730=r5, var1513=java.lang.IllegalArgumentException, var2453=$r10}
; {org.hibernate.query.QueryParameter=var1768, r1=var1843, org.hibernate.QueryParameterException=var864, r6=var701, $r9=var2141, $r2=var2880, java.lang.Object=var430, $r3=var3437, $r4=var2844, r5=var730, java.lang.IllegalArgumentException=var1513, $r10=var2453}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.hibernate.query.QueryParameter;	r6 := @parameter1: org.hibernate.QueryParameterException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parameter reference [");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] did not come from this query");	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	if r6 != null goto $r11 = new java.lang.IllegalArgumentException;	$r10 = new java.lang.IllegalArgumentException;	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>(r5);	return $r10
;block_num 2