(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3546 0)
(declare-sort var287 0)
(declare-sort var2410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2410) void)
(declare-fun cast-from-var3546-to-var2410 (var3546) var2410)
(declare-fun parent/1512897436 (var3546) var3546)
(declare-fun navigableName/1512897436 (var3546) String)
(declare-fun fullPath/1512897436 (var3546) String)
(declare-const null-var3546 var3546)
(declare-const null-String String)
(declare-const var2564 var3546) ; Statement: r0 := @this: org.hibernate.metamodel.model.domain.NavigableRole 
(assert (not (= var2564 null-var3546)))
(declare-const var354 var3546) ; Statement: r1 := @parameter0: org.hibernate.metamodel.model.domain.NavigableRole 
(assert (not (= var354 null-var3546)))
(declare-const var1654 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1654 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3546-to-var2410 var2564))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2564!1 var3546)
(declare-const var2564!2 var3546)
(assert (not (= var2564!2 null-var3546)))
(assert (= (parent/1512897436 var2564!2) var354)) ; Statement: r0.<org.hibernate.metamodel.model.domain.NavigableRole: org.hibernate.metamodel.model.domain.NavigableRole parent> = r1 
(declare-const var2564!3 var3546)
(assert (not (= var2564!3 null-var3546)))
(assert (= (navigableName/1512897436 var2564!3) var1654)) ; Statement: r0.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String navigableName> = r2 
(define-const var2257 String "_identifierMapper") ; Statement: $r3 = "_identifierMapper" 
(assert true)
(define-const var2793 Bool (= var2257 var1654)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var2793 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if r1 == null goto $r12 = "" 
(assert (= var354 null-var3546)) ; Cond: r1 == null 
(define-const var991 String "") ; Statement: $r12 = "" 
(assert true) ; Non Conditional
(declare-const var2564!4 var3546)
(assert (not (= var2564!4 null-var3546)))
(assert (= (fullPath/1512897436 var2564!4) var991)) ; Statement: r0.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String fullPath> = $r12 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3546-to-var2410=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.Object), parent/1512897436=([org.hibernate.metamodel.model.domain.NavigableRole], org.hibernate.metamodel.model.domain.NavigableRole), navigableName/1512897436=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.String), fullPath/1512897436=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.String)}
; {var3546=org.hibernate.metamodel.model.domain.NavigableRole, var2564=r0, var354=r1, var1654=r2, var287=null_type, var2410=java.lang.Object, var2257=$r3, var2793=$z0, var991=$r12}
; {org.hibernate.metamodel.model.domain.NavigableRole=var3546, r0=var2564, r1=var354, r2=var1654, null_type=var287, java.lang.Object=var2410, $r3=var2257, $z0=var2793, $r12=var991}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.metamodel.model.domain.NavigableRole;	r1 := @parameter0: org.hibernate.metamodel.model.domain.NavigableRole;	r2 := @parameter1: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.metamodel.model.domain.NavigableRole: org.hibernate.metamodel.model.domain.NavigableRole parent> = r1;	r0.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String navigableName> = r2;	$r3 = "_identifierMapper";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto (branch);	if r1 == null goto $r12 = "";	$r12 = "";	r0.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String fullPath> = $r12;	goto [?= return];	return
;block_num 5