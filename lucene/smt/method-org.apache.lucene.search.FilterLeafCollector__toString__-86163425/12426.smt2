(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3539 0)
(declare-sort var745 0)
(declare-sort var162 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var745) ClassObject)
(declare-fun cast-from-var3539-to-var745 (var3539) var745)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun in/-1241249081 (var3539) var162)
(declare-fun cast-from-var162-to-String (var162) String)
(declare-const null-var3539 var3539)
(declare-const var2028 var3539) ; Statement: r0 := @this: org.apache.lucene.search.FilterLeafCollector 
(assert (not (= var2028 null-var3539)))
(assert true)
(define-const var84 ClassObject (getClass/1258963082 (cast-from-var3539-to-var745 var2028))) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var504 String (getSimpleName/-390194377 var84)) ; Statement: r4 = virtualinvoke $r1.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var324 Int (length/-134980193 var504)) ; Statement: $i0 = virtualinvoke r4.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r2 = r0.<org.apache.lucene.search.FilterLeafCollector: org.apache.lucene.search.LeafCollector in> 
(assert (not (= var324 0))) ; Cond: $i0 != 0 
(define-const var3731 var162 (in/-1241249081 var2028)) ; Statement: $r2 = r0.<org.apache.lucene.search.FilterLeafCollector: org.apache.lucene.search.LeafCollector in> 
(define-const var47 String (str.++ "\u0001(\u0001)" var504 (cast-from-var162-to-String var3731))) ; Statement: $r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,org.apache.lucene.search.LeafCollector)>(r4, $r2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001(\u0001)") 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3539-to-var745=([org.apache.lucene.search.FilterLeafCollector], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), length/-134980193=([java.lang.String], int), in/-1241249081=([org.apache.lucene.search.FilterLeafCollector], org.apache.lucene.search.LeafCollector), cast-from-var162-to-String=([org.apache.lucene.search.LeafCollector], java.lang.String)}
; {var3539=org.apache.lucene.search.FilterLeafCollector, var2028=r0, var745=java.lang.Object, var84=$r1, var504=r4, var324=$i0, var162=org.apache.lucene.search.LeafCollector, var3731=$r2, var47=$r3}
; {org.apache.lucene.search.FilterLeafCollector=var3539, r0=var2028, java.lang.Object=var745, $r1=var84, r4=var504, $i0=var324, org.apache.lucene.search.LeafCollector=var162, $r2=var3731, $r3=var47}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.lucene.search.FilterLeafCollector;	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r4 = virtualinvoke $r1.<java.lang.Class: java.lang.String getSimpleName()>();	$i0 = virtualinvoke r4.<java.lang.String: int length()>();	if $i0 != 0 goto $r2 = r0.<org.apache.lucene.search.FilterLeafCollector: org.apache.lucene.search.LeafCollector in>;	$r2 = r0.<org.apache.lucene.search.FilterLeafCollector: org.apache.lucene.search.LeafCollector in>;	$r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,org.apache.lucene.search.LeafCollector)>(r4, $r2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001(\u0001)");	return $r3
;block_num 2