(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var607 0)
(declare-sort var3831 0)
(declare-sort var2583 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2583) void)
(declare-fun cast-from-var607-to-var2583 (var607) var2583)
(declare-fun parent/776480911 (var607) var607)
(declare-fun property/776480911 (var607) String)
(declare-fun fullPath/776480911 (var607) String)
(declare-const null-var607 var607)
(declare-const null-String String)
(declare-const var1864 var607) ; Statement: r0 := @this: org.hibernate.loader.PropertyPath 
(assert (not (= var1864 null-var607)))
(declare-const var3024 var607) ; Statement: r1 := @parameter0: org.hibernate.loader.PropertyPath 
(assert (not (= var3024 null-var607)))
(declare-const var2490 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2490 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var607-to-var2583 var1864))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1864!1 var607)
(declare-const var1864!2 var607)
(assert (not (= var1864!2 null-var607)))
(assert (= (parent/776480911 var1864!2) var3024)) ; Statement: r0.<org.hibernate.loader.PropertyPath: org.hibernate.loader.PropertyPath parent> = r1 
(declare-const var1864!3 var607)
(assert (not (= var1864!3 null-var607)))
(assert (= (property/776480911 var1864!3) var2490)) ; Statement: r0.<org.hibernate.loader.PropertyPath: java.lang.String property> = r2 
(define-const var1910 String "_identifierMapper") ; Statement: $r3 = "_identifierMapper" 
(assert true)
(define-const var1365 Bool (= var1910 var2490)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var1365 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if r1 == null goto $r12 = "" 
(assert (= var3024 null-var607)) ; Cond: r1 == null 
(define-const var3137 String "") ; Statement: $r12 = "" 
(assert true) ; Non Conditional
(declare-const var1864!4 var607)
(assert (not (= var1864!4 null-var607)))
(assert (= (fullPath/776480911 var1864!4) var3137)) ; Statement: r0.<org.hibernate.loader.PropertyPath: java.lang.String fullPath> = $r12 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var607-to-var2583=([org.hibernate.loader.PropertyPath], java.lang.Object), parent/776480911=([org.hibernate.loader.PropertyPath], org.hibernate.loader.PropertyPath), property/776480911=([org.hibernate.loader.PropertyPath], java.lang.String), fullPath/776480911=([org.hibernate.loader.PropertyPath], java.lang.String)}
; {var607=org.hibernate.loader.PropertyPath, var1864=r0, var3024=r1, var2490=r2, var3831=null_type, var2583=java.lang.Object, var1910=$r3, var1365=$z0, var3137=$r12}
; {org.hibernate.loader.PropertyPath=var607, r0=var1864, r1=var3024, r2=var2490, null_type=var3831, java.lang.Object=var2583, $r3=var1910, $z0=var1365, $r12=var3137}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.loader.PropertyPath;	r1 := @parameter0: org.hibernate.loader.PropertyPath;	r2 := @parameter1: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.loader.PropertyPath: org.hibernate.loader.PropertyPath parent> = r1;	r0.<org.hibernate.loader.PropertyPath: java.lang.String property> = r2;	$r3 = "_identifierMapper";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto (branch);	if r1 == null goto $r12 = "";	$r12 = "";	r0.<org.hibernate.loader.PropertyPath: java.lang.String fullPath> = $r12;	goto [?= return];	return
;block_num 5