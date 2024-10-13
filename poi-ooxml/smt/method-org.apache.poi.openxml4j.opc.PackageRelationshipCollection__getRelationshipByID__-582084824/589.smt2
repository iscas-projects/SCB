(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3080 0)
(declare-sort var3469 0)
(declare-sort var3145 0)
(declare-sort var973 0)
(declare-sort var2813 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun relationshipsByID/1897838155 (var3080) var3145)
(declare-fun get/-1409998785 (var3145 var973) var973)
(declare-fun cast-from-String-to-var973 (String) var973)
(declare-fun cast-from-var973-to-var2813 (var973) var2813)
(declare-const null-var3080 var3080)
(declare-const null-String String)
(declare-const var3632 var3080) ; Statement: r1 := @this: org.apache.poi.openxml4j.opc.PackageRelationshipCollection 
(assert (not (= var3632 null-var3080)))
(declare-const var1132 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1132 null-String)))
 ; Statement: if r0 != null goto $r2 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: java.util.TreeMap relationshipsByID> 
(assert (not (= var1132 null-String))) ; Cond: r0 != null 
(define-const var2572 var3145 (relationshipsByID/1897838155 var3632)) ; Statement: $r2 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: java.util.TreeMap relationshipsByID> 
(assert true)
(define-const var1879 var973 (get/-1409998785 var2572 (cast-from-String-to-var973 var1132))) ; Statement: $r3 = virtualinvoke $r2.<java.util.TreeMap: java.lang.Object get(java.lang.Object)>(r0) 
(define-const var3111 var2813 (cast-from-var973-to-var2813 var1879)) ; Statement: $r4 = (org.apache.poi.openxml4j.opc.PackageRelationship) $r3 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {relationshipsByID/1897838155=([org.apache.poi.openxml4j.opc.PackageRelationshipCollection], java.util.TreeMap), get/-1409998785=([java.util.TreeMap, java.lang.Object], java.lang.Object), cast-from-String-to-var973=([java.lang.String], java.lang.Object), cast-from-var973-to-var2813=([java.lang.Object], org.apache.poi.openxml4j.opc.PackageRelationship)}
; {var3080=org.apache.poi.openxml4j.opc.PackageRelationshipCollection, var3632=r1, var1132=r0, var3469=null_type, var3145=java.util.TreeMap, var2572=$r2, var973=java.lang.Object, var1879=$r3, var2813=org.apache.poi.openxml4j.opc.PackageRelationship, var3111=$r4}
; {org.apache.poi.openxml4j.opc.PackageRelationshipCollection=var3080, r1=var3632, r0=var1132, null_type=var3469, java.util.TreeMap=var3145, $r2=var2572, java.lang.Object=var973, $r3=var1879, org.apache.poi.openxml4j.opc.PackageRelationship=var2813, $r4=var3111}
;seq 
;cnt {}
;stmts r1 := @this: org.apache.poi.openxml4j.opc.PackageRelationshipCollection;	r0 := @parameter0: java.lang.String;	if r0 != null goto $r2 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: java.util.TreeMap relationshipsByID>;	$r2 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: java.util.TreeMap relationshipsByID>;	$r3 = virtualinvoke $r2.<java.util.TreeMap: java.lang.Object get(java.lang.Object)>(r0);	$r4 = (org.apache.poi.openxml4j.opc.PackageRelationship) $r3;	return $r4
;block_num 2