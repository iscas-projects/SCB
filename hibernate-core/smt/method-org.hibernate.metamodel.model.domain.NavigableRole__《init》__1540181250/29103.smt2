(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3786 0)
(declare-sort var3536 0)
(declare-sort var155 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var155) void)
(declare-fun cast-from-var3786-to-var155 (var3786) var155)
(declare-fun parent/1512897436 (var3786) var3786)
(declare-fun navigableName/1512897436 (var3786) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun fullPath/1512897436 (var3786) String)
(declare-const null-var3786 var3786)
(declare-const null-String String)
(declare-const var1474 var3786) ; Statement: r0 := @this: org.hibernate.metamodel.model.domain.NavigableRole 
(assert (not (= var1474 null-var3786)))
(declare-const var2939 var3786) ; Statement: r1 := @parameter0: org.hibernate.metamodel.model.domain.NavigableRole 
(assert (not (= var2939 null-var3786)))
(declare-const var3451 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3451 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3786-to-var155 var1474))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1474!1 var3786)
(declare-const var1474!2 var3786)
(assert (not (= var1474!2 null-var3786)))
(assert (= (parent/1512897436 var1474!2) var2939)) ; Statement: r0.<org.hibernate.metamodel.model.domain.NavigableRole: org.hibernate.metamodel.model.domain.NavigableRole parent> = r1 
(declare-const var1474!3 var3786)
(assert (not (= var1474!3 null-var3786)))
(assert (= (navigableName/1512897436 var1474!3) var3451)) ; Statement: r0.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String navigableName> = r2 
(define-const var3281 String "_identifierMapper") ; Statement: $r3 = "_identifierMapper" 
(assert true)
(define-const var1929 Bool (= var3281 var3451)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var1929 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r1 == null goto r13 = "" 
(assert (= var2939 null-var3786)) ; Cond: r1 == null 
(define-const var2718 String "") ; Statement: r13 = "" 
(assert true) ; Non Conditional
(define-const var3897 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3897)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3897!1 String)
(assert (= var3897!1 ""))
(assert true)
(define-const var3787 String (append/672562846 var3897!1 var2718)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13) 
(declare-const var3897!2 String)
(assert (= var3897!2 (str.++ var3897!1 var2718)))
(assert true)
(define-const var2501 String (append/672562846 var3787 var3451)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3787!1 String)
(assert (= var3787!1 (str.++ var3787 var3451)))
(assert true)
(define-const var3580 String (toString/-2075883882 var2501)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1474!4 var3786)
(assert (not (= var1474!4 null-var3786)))
(assert (= (fullPath/1512897436 var1474!4) var3580)) ; Statement: r0.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String fullPath> = $r7 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3786-to-var155=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.Object), parent/1512897436=([org.hibernate.metamodel.model.domain.NavigableRole], org.hibernate.metamodel.model.domain.NavigableRole), navigableName/1512897436=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), fullPath/1512897436=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.String)}
; {var3786=org.hibernate.metamodel.model.domain.NavigableRole, var1474=r0, var2939=r1, var3451=r2, var3536=null_type, var155=java.lang.Object, var3281=$r3, var1929=$z0, var2718=r13, var3897=$r4, var3787=$r5, var2501=$r6, var3580=$r7}
; {org.hibernate.metamodel.model.domain.NavigableRole=var3786, r0=var1474, r1=var2939, r2=var3451, null_type=var3536, java.lang.Object=var155, $r3=var3281, $z0=var1929, r13=var2718, $r4=var3897, $r5=var3787, $r6=var2501, $r7=var3580}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.metamodel.model.domain.NavigableRole;	r1 := @parameter0: org.hibernate.metamodel.model.domain.NavigableRole;	r2 := @parameter1: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.metamodel.model.domain.NavigableRole: org.hibernate.metamodel.model.domain.NavigableRole parent> = r1;	r0.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String navigableName> = r2;	$r3 = "_identifierMapper";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto (branch);	if r1 == null goto r13 = "";	r13 = "";	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String fullPath> = $r7;	return
;block_num 5