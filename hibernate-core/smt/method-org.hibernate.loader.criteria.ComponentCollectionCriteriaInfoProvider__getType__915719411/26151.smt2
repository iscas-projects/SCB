(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var787 0)
(declare-sort var2699 0)
(declare-sort var701 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun var701-init () var701)
(declare-fun <init>/875830710 (var701 String) void)
(declare-const null-var787 var787)
(declare-const null-String String)
(declare-const var2991 var787) ; Statement: r1 := @this: org.hibernate.loader.criteria.ComponentCollectionCriteriaInfoProvider 
(assert (not (= var2991 null-var787)))
(declare-const var233 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var233 null-String)))
(assert true)
(define-const var1929 Int (indexOf/-1037706067 var233 46)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if $i0 < 0 goto $r2 = r1.<org.hibernate.loader.criteria.ComponentCollectionCriteriaInfoProvider: java.util.Map subTypes> 
(assert (not (< var1929 0))) ; Negate: Cond: $i0 < 0  
(define-const var414 var701 var701-init) ; Statement: $r13 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var414 "dotted paths not handled (yet?!) for collection-of-component")) ; Statement: specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("dotted paths not handled (yet?!) for collection-of-component") 

(declare-const var414!1 var701)
(declare-const var3771 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), var701-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var787=org.hibernate.loader.criteria.ComponentCollectionCriteriaInfoProvider, var2991=r1, var233=r0, var2699=null_type, var1929=$i0, var701=java.lang.IllegalArgumentException, var414=$r13, var3771="dotted paths not handled (yet?!) for collection-of-component"}
; {org.hibernate.loader.criteria.ComponentCollectionCriteriaInfoProvider=var787, r1=var2991, r0=var233, null_type=var2699, $i0=var1929, java.lang.IllegalArgumentException=var701, $r13=var414, "dotted paths not handled (yet?!) for collection-of-component"=var3771}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @this: org.hibernate.loader.criteria.ComponentCollectionCriteriaInfoProvider;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	if $i0 < 0 goto $r2 = r1.<org.hibernate.loader.criteria.ComponentCollectionCriteriaInfoProvider: java.util.Map subTypes>;	$r13 = new java.lang.IllegalArgumentException;	specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("dotted paths not handled (yet?!) for collection-of-component");	throw $r13
;block_num 2