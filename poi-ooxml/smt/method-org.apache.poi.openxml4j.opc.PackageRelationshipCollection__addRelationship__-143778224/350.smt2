(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3108 0)
(declare-sort var798 0)
(declare-sort var146 0)
(declare-sort var1758 0)
(declare-sort var3707 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getId/-2087847944 (var798) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun relationshipsByID/1897838155 (var3108) var1758)
(declare-fun put/-1214003037 (var1758 var3707 var3707) var3707)
(declare-fun cast-from-String-to-var3707 (String) var3707)
(declare-fun cast-from-var798-to-var3707 (var798) var3707)
(declare-const null-var3108 var3108)
(declare-const null-var798 var798)
(declare-const null-String String)
(declare-const var3680 var3108) ; Statement: r9 := @this: org.apache.poi.openxml4j.opc.PackageRelationshipCollection 
(assert (not (= var3680 null-var3108)))
(declare-const var2941 var798) ; Statement: r0 := @parameter0: org.apache.poi.openxml4j.opc.PackageRelationship 
(assert (not (= var2941 null-var798)))
 ; Statement: if r0 == null goto $r1 = new java.lang.IllegalArgumentException 
(assert (not (= var2941 null-var798))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var1669 String (getId/-2087847944 var2941)) ; Statement: $r7 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String getId()>() 
 ; Statement: if $r7 == null goto $r1 = new java.lang.IllegalArgumentException 
(assert (not (= var1669 null-String))) ; Negate: Cond: $r7 == null  
(assert true)
(define-const var3041 String (getId/-2087847944 var2941)) ; Statement: $r8 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String getId()>() 
(assert true)
(define-const var1953 Bool (isEmpty/-1285796103 var3041)) ; Statement: $z0 = virtualinvoke $r8.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r10 = r9.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: java.util.TreeMap relationshipsByID> 
(assert (= (ite var1953 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2629 var1758 (relationshipsByID/1897838155 var3680)) ; Statement: $r10 = r9.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: java.util.TreeMap relationshipsByID> 
(assert true)
(define-const var2624 String (getId/-2087847944 var2941)) ; Statement: $r11 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String getId()>() 
(assert true)
;(assert (put/-1214003037 var2629 (cast-from-String-to-var3707 var2624) (cast-from-var798-to-var3707 var2941))) ; Statement: virtualinvoke $r10.<java.util.TreeMap: java.lang.Object put(java.lang.Object,java.lang.Object)>($r11, r0) 

(declare-const var2629!1 var1758)
(declare-const var2624!1 String)
(declare-const var2941!1 var798)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getId/-2087847944=([org.apache.poi.openxml4j.opc.PackageRelationship], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), relationshipsByID/1897838155=([org.apache.poi.openxml4j.opc.PackageRelationshipCollection], java.util.TreeMap), put/-1214003037=([java.util.TreeMap, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var3707=([java.lang.String], java.lang.Object), cast-from-var798-to-var3707=([org.apache.poi.openxml4j.opc.PackageRelationship], java.lang.Object)}
; {var3108=org.apache.poi.openxml4j.opc.PackageRelationshipCollection, var3680=r9, var798=org.apache.poi.openxml4j.opc.PackageRelationship, var2941=r0, var1669=$r7, var146=null_type, var3041=$r8, var1953=$z0, var1758=java.util.TreeMap, var2629=$r10, var2624=$r11, var3707=java.lang.Object}
; {org.apache.poi.openxml4j.opc.PackageRelationshipCollection=var3108, r9=var3680, org.apache.poi.openxml4j.opc.PackageRelationship=var798, r0=var2941, $r7=var1669, null_type=var146, $r8=var3041, $z0=var1953, java.util.TreeMap=var1758, $r10=var2629, $r11=var2624, java.lang.Object=var3707}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r9 := @this: org.apache.poi.openxml4j.opc.PackageRelationshipCollection;	r0 := @parameter0: org.apache.poi.openxml4j.opc.PackageRelationship;	if r0 == null goto $r1 = new java.lang.IllegalArgumentException;	$r7 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String getId()>();	if $r7 == null goto $r1 = new java.lang.IllegalArgumentException;	$r8 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String getId()>();	$z0 = virtualinvoke $r8.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r10 = r9.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: java.util.TreeMap relationshipsByID>;	$r10 = r9.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: java.util.TreeMap relationshipsByID>;	$r11 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String getId()>();	virtualinvoke $r10.<java.util.TreeMap: java.lang.Object put(java.lang.Object,java.lang.Object)>($r11, r0);	return
;block_num 4