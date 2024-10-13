(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3800 0)
(declare-sort var1581 0)
(declare-sort var2158 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2158) void)
(declare-fun cast-from-var3800-to-var2158 (var3800) var2158)
(declare-fun parent/1512897436 (var3800) var3800)
(declare-fun navigableName/1512897436 (var3800) String)
(declare-fun getFullPath/1660193712 (var3800) String)
(declare-fun fullPath/1512897436 (var3800) String)
(declare-const null-var3800 var3800)
(declare-const null-String String)
(declare-const var2994 var3800) ; Statement: r0 := @this: org.hibernate.metamodel.model.domain.NavigableRole 
(assert (not (= var2994 null-var3800)))
(declare-const var3430 var3800) ; Statement: r1 := @parameter0: org.hibernate.metamodel.model.domain.NavigableRole 
(assert (not (= var3430 null-var3800)))
(declare-const var549 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var549 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3800-to-var2158 var2994))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2994!1 var3800)
(declare-const var2994!2 var3800)
(assert (not (= var2994!2 null-var3800)))
(assert (= (parent/1512897436 var2994!2) var3430)) ; Statement: r0.<org.hibernate.metamodel.model.domain.NavigableRole: org.hibernate.metamodel.model.domain.NavigableRole parent> = r1 
(declare-const var2994!3 var3800)
(assert (not (= var2994!3 null-var3800)))
(assert (= (navigableName/1512897436 var2994!3) var549)) ; Statement: r0.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String navigableName> = r2 
(define-const var3878 String "_identifierMapper") ; Statement: $r3 = "_identifierMapper" 
(assert true)
(define-const var1767 Bool (= var3878 var549)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var1767 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if r1 == null goto $r12 = "" 
(assert (not (= var3430 null-var3800))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var2808 String (getFullPath/1660193712 var3430)) ; Statement: $r12 = virtualinvoke r1.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String getFullPath()>() 
 ; Statement: goto [?= r0.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String fullPath> = $r12] 
(assert true) ; Non Conditional
(declare-const var2994!4 var3800)
(assert (not (= var2994!4 null-var3800)))
(assert (= (fullPath/1512897436 var2994!4) var2808)) ; Statement: r0.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String fullPath> = $r12 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3800-to-var2158=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.Object), parent/1512897436=([org.hibernate.metamodel.model.domain.NavigableRole], org.hibernate.metamodel.model.domain.NavigableRole), navigableName/1512897436=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.String), getFullPath/1660193712=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.String), fullPath/1512897436=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.String)}
; {var3800=org.hibernate.metamodel.model.domain.NavigableRole, var2994=r0, var3430=r1, var549=r2, var1581=null_type, var2158=java.lang.Object, var3878=$r3, var1767=$z0, var2808=$r12}
; {org.hibernate.metamodel.model.domain.NavigableRole=var3800, r0=var2994, r1=var3430, r2=var549, null_type=var1581, java.lang.Object=var2158, $r3=var3878, $z0=var1767, $r12=var2808}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.metamodel.model.domain.NavigableRole;	r1 := @parameter0: org.hibernate.metamodel.model.domain.NavigableRole;	r2 := @parameter1: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.metamodel.model.domain.NavigableRole: org.hibernate.metamodel.model.domain.NavigableRole parent> = r1;	r0.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String navigableName> = r2;	$r3 = "_identifierMapper";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto (branch);	if r1 == null goto $r12 = "";	$r12 = virtualinvoke r1.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String getFullPath()>();	goto [?= r0.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String fullPath> = $r12];	r0.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String fullPath> = $r12;	goto [?= return];	return
;block_num 5