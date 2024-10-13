(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3057 0)
(declare-sort var603 0)
(declare-sort var758 0)
(declare-sort var3586 0)
(declare-sort var1196 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun field/1510472889 (var3057) String)
(declare-fun name/1093634646 (var603) String)
(declare-fun dvGeneration/1510472889 (var3057) Int)
(declare-fun getDocValuesGen/1912520405 (var603) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3586-init () var3586)
(declare-fun cast-from-Int-to-String (Int) String)
(declare-fun <init>/582965326 (var3586 var1196) void)
(declare-fun cast-from-String-to-var1196 (String) var1196)
(declare-const null-var3057 var3057)
(declare-const null-var603 var603)
(declare-const null-var758 var758)
(declare-const var3057-$assertionsDisabled Bool)
(declare-const var3429 var3057) ; Statement: r0 := @this: org.apache.lucene.index.PendingSoftDeletes 
(assert (not (= var3429 null-var3057)))
(declare-const var1135 var603) ; Statement: r1 := @parameter0: org.apache.lucene.index.FieldInfo 
(assert (not (= var1135 null-var603)))
(declare-const var1541 var758) ; Statement: r7 := @parameter1: org.apache.lucene.index.DocValuesFieldUpdates$Iterator 
(assert (not (= var1541 null-var758)))
(define-const var1441 String (field/1510472889 var3429)) ; Statement: $r3 = r0.<org.apache.lucene.index.PendingSoftDeletes: java.lang.String field> 
(define-const var771 String (name/1093634646 var1135)) ; Statement: $r2 = r1.<org.apache.lucene.index.FieldInfo: java.lang.String name> 
(assert true)
(define-const var2255 Bool (= var1441 var771)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $z4 = <org.apache.lucene.index.PendingSoftDeletes: boolean $assertionsDisabled> 
(assert (= (ite var2255 1 0) 0)) ; Cond: $z0 == 0 
(define-const var657 Bool var3057-$assertionsDisabled) ; Statement: $z4 = <org.apache.lucene.index.PendingSoftDeletes: boolean $assertionsDisabled> 
 ; Statement: if $z4 != 0 goto $z1 = <org.apache.lucene.index.PendingSoftDeletes: boolean $assertionsDisabled> 
(assert (not (not (= (ite var657 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var3087 Int (dvGeneration/1510472889 var3429)) ; Statement: $l3 = r0.<org.apache.lucene.index.PendingSoftDeletes: long dvGeneration> 
(assert true)
(define-const var2485 Int (getDocValuesGen/1912520405 var1135)) ; Statement: $l4 = virtualinvoke r1.<org.apache.lucene.index.FieldInfo: long getDocValuesGen()>() 
(define-const var1471 Int (ite (> var3087 var2485) 1 (ite (< var3087 var2485) (- 1) 0))) ; Statement: $b5 = $l3 cmp $l4 
(define-const var2965 Int (cast-from-Int-to-Int var1471)) ; Statement: $i14 = (int) $b5 
 ; Statement: if $i14 < 0 goto $z1 = <org.apache.lucene.index.PendingSoftDeletes: boolean $assertionsDisabled> 
(assert (not (< var2965 0))) ; Negate: Cond: $i14 < 0  
(define-const var2552 var3586 var3586-init) ; Statement: $r13 = new java.lang.AssertionError 
(define-const var1062 Int (dvGeneration/1510472889 var3429)) ; Statement: $l6 = r0.<org.apache.lucene.index.PendingSoftDeletes: long dvGeneration> 
(assert true)
(define-const var3978 Int (getDocValuesGen/1912520405 var1135)) ; Statement: $l7 = virtualinvoke r1.<org.apache.lucene.index.FieldInfo: long getDocValuesGen()>() 
(define-const var1452 String (str.++ "we have seen this generation update already: \u0001 vs. \u0001" (cast-from-Int-to-String var1062) (cast-from-Int-to-String var3978))) ; Statement: $r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (long,long)>($l6, $l7) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("we have seen this generation update already: \u0001 vs. \u0001") 
(assert true)
;(assert (<init>/582965326 var2552 (cast-from-String-to-var1196 var1452))) ; Statement: specialinvoke $r13.<java.lang.AssertionError: void <init>(java.lang.Object)>($r6) 

(declare-const var2552!1 var3586)
(declare-const var1452!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {field/1510472889=([org.apache.lucene.index.PendingSoftDeletes], java.lang.String), name/1093634646=([org.apache.lucene.index.FieldInfo], java.lang.String), dvGeneration/1510472889=([org.apache.lucene.index.PendingSoftDeletes], long), getDocValuesGen/1912520405=([org.apache.lucene.index.FieldInfo], long), cast-from-Int-to-Int=([byte], int), var3586-init=([], java.lang.AssertionError), cast-from-Int-to-String=([long], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var1196=([java.lang.String], java.lang.Object)}
; {var3057=org.apache.lucene.index.PendingSoftDeletes, var3429=r0, var603=org.apache.lucene.index.FieldInfo, var1135=r1, var758=org.apache.lucene.index.DocValuesFieldUpdates$Iterator, var1541=r7, var1441=$r3, var771=$r2, var2255=$z0, var657=$z4, var3087=$l3, var2485=$l4, var1471=$b5, var2965=$i14, var3586=java.lang.AssertionError, var2552=$r13, var1062=$l6, var3978=$l7, var1452=$r6, var1196=java.lang.Object}
; {org.apache.lucene.index.PendingSoftDeletes=var3057, r0=var3429, org.apache.lucene.index.FieldInfo=var603, r1=var1135, org.apache.lucene.index.DocValuesFieldUpdates$Iterator=var758, r7=var1541, $r3=var1441, $r2=var771, $z0=var2255, $z4=var657, $l3=var3087, $l4=var2485, $b5=var1471, $i14=var2965, java.lang.AssertionError=var3586, $r13=var2552, $l6=var1062, $l7=var3978, $r6=var1452, java.lang.Object=var1196}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.lucene.index.PendingSoftDeletes;	r1 := @parameter0: org.apache.lucene.index.FieldInfo;	r7 := @parameter1: org.apache.lucene.index.DocValuesFieldUpdates$Iterator;	$r3 = r0.<org.apache.lucene.index.PendingSoftDeletes: java.lang.String field>;	$r2 = r1.<org.apache.lucene.index.FieldInfo: java.lang.String name>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $z4 = <org.apache.lucene.index.PendingSoftDeletes: boolean $assertionsDisabled>;	$z4 = <org.apache.lucene.index.PendingSoftDeletes: boolean $assertionsDisabled>;	if $z4 != 0 goto $z1 = <org.apache.lucene.index.PendingSoftDeletes: boolean $assertionsDisabled>;	$l3 = r0.<org.apache.lucene.index.PendingSoftDeletes: long dvGeneration>;	$l4 = virtualinvoke r1.<org.apache.lucene.index.FieldInfo: long getDocValuesGen()>();	$b5 = $l3 cmp $l4;	$i14 = (int) $b5;	if $i14 < 0 goto $z1 = <org.apache.lucene.index.PendingSoftDeletes: boolean $assertionsDisabled>;	$r13 = new java.lang.AssertionError;	$l6 = r0.<org.apache.lucene.index.PendingSoftDeletes: long dvGeneration>;	$l7 = virtualinvoke r1.<org.apache.lucene.index.FieldInfo: long getDocValuesGen()>();	$r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (long,long)>($l6, $l7) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("we have seen this generation update already: \u0001 vs. \u0001");	specialinvoke $r13.<java.lang.AssertionError: void <init>(java.lang.Object)>($r6);	throw $r13
;block_num 4