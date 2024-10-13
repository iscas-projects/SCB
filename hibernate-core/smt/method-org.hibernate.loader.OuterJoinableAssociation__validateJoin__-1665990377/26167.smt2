(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1071 0)
(declare-sort var1137 0)
(declare-sort var2099 0)
(declare-sort var1089 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun rhsColumns/487596375 (var1071) (Array Int String))
(declare-fun var2099-init () var2099)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var2099 String) void)
(declare-fun cast-from-var2099-to-var1089 (var2099) var1089)
(declare-const null-var1071 var1071)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1171 var1071) ; Statement: r0 := @this: org.hibernate.loader.OuterJoinableAssociation 
(assert (not (= var1171 null-var1071)))
(declare-const var1707 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1707 null-String)))
(define-const var461 (Array Int String) (rhsColumns/487596375 var1171)) ; Statement: $r1 = r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String[] rhsColumns> 
 ; Statement: if $r1 == null goto $r13 = new org.hibernate.MappingException 
(assert (= var461 null-__Array__Int__String__)) ; Cond: $r1 == null 
(define-const var849 var2099 var2099-init) ; Statement: $r13 = new org.hibernate.MappingException 
(define-const var2071 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2071)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2071!1 String)
(assert (= var2071!1 ""))
(assert true)
(define-const var2050 String (append/672562846 var2071!1 "invalid join columns for association: ")) ; Statement: $r9 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid join columns for association: ") 
(declare-const var2071!2 String)
(assert (= var2071!2 (str.++ var2071!1 "invalid join columns for association: ")))
(assert true)
(define-const var2092 String (append/672562846 var2050 var1707)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2050!1 String)
(assert (= var2050!1 (str.++ var2050 var1707)))
(assert true)
(define-const var704 String (toString/-2075883882 var2092)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var849 var704)) ; Statement: specialinvoke $r13.<org.hibernate.MappingException: void <init>(java.lang.String)>($r11) 

(declare-const var849!1 var2099)
(declare-const var704!1 String)
(define-const var299 var1089 (cast-from-var2099-to-var1089 var849!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {rhsColumns/487596375=([org.hibernate.loader.OuterJoinableAssociation], java.lang.String[]), var2099-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var2099-to-var1089=([org.hibernate.MappingException], java.lang.Throwable)}
; {var1071=org.hibernate.loader.OuterJoinableAssociation, var1171=r0, var1707=r2, var1137=null_type, var461=$r1, var2099=org.hibernate.MappingException, var849=$r13, var2071=$r12, var2050=$r9, var2092=$r10, var704=$r11, var1089=java.lang.Throwable, var299=$r14}
; {org.hibernate.loader.OuterJoinableAssociation=var1071, r0=var1171, r2=var1707, null_type=var1137, $r1=var461, org.hibernate.MappingException=var2099, $r13=var849, $r12=var2071, $r9=var2050, $r10=var2092, $r11=var704, java.lang.Throwable=var1089, $r14=var299}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.OuterJoinableAssociation;	r2 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.loader.OuterJoinableAssociation: java.lang.String[] rhsColumns>;	if $r1 == null goto $r13 = new org.hibernate.MappingException;	$r13 = new org.hibernate.MappingException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid join columns for association: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.MappingException: void <init>(java.lang.String)>($r11);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 2