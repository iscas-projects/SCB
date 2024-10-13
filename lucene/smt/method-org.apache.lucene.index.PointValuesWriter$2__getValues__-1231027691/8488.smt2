(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2955 0)
(declare-sort var12 0)
(declare-sort var2535 0)
(declare-sort var3386 0)
(declare-sort var2107 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-2539199 (var2955) var2535)
(declare-fun fieldInfo/978767219 (var2535) var3386)
(declare-fun name/1093634646 (var3386) String)
(declare-fun var2107-init () var2107)
(declare-fun <init>/875830710 (var2107 String) void)
(declare-const null-var2955 var2955)
(declare-const null-String String)
(declare-const var950 var2955) ; Statement: r1 := @this: org.apache.lucene.index.PointValuesWriter$2 
(assert (not (= var950 null-var2955)))
(declare-const var1239 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1239 null-String)))
(define-const var1874 var2535 (this$0/-2539199 var950)) ; Statement: $r2 = r1.<org.apache.lucene.index.PointValuesWriter$2: org.apache.lucene.index.PointValuesWriter this$0> 
(define-const var3722 var3386 (fieldInfo/978767219 var1874)) ; Statement: $r3 = $r2.<org.apache.lucene.index.PointValuesWriter: org.apache.lucene.index.FieldInfo fieldInfo> 
(define-const var1080 String (name/1093634646 var3722)) ; Statement: $r4 = $r3.<org.apache.lucene.index.FieldInfo: java.lang.String name> 
(assert true)
(define-const var1003 Bool (= var1239 var1080)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 != 0 goto $r5 = new org.apache.lucene.index.PointValuesWriter$2$1 
(assert (not (not (= (ite var1003 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2787 var2107 var2107-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2787 "fieldName must be the same")) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("fieldName must be the same") 

(declare-const var2787!1 var2107)
(declare-const var1651 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-2539199=([org.apache.lucene.index.PointValuesWriter$2], org.apache.lucene.index.PointValuesWriter), fieldInfo/978767219=([org.apache.lucene.index.PointValuesWriter], org.apache.lucene.index.FieldInfo), name/1093634646=([org.apache.lucene.index.FieldInfo], java.lang.String), var2107-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2955=org.apache.lucene.index.PointValuesWriter$2, var950=r1, var1239=r0, var12=null_type, var2535=org.apache.lucene.index.PointValuesWriter, var1874=$r2, var3386=org.apache.lucene.index.FieldInfo, var3722=$r3, var1080=$r4, var1003=$z0, var2107=java.lang.IllegalArgumentException, var2787=$r6, var1651="fieldName must be the same"}
; {org.apache.lucene.index.PointValuesWriter$2=var2955, r1=var950, r0=var1239, null_type=var12, org.apache.lucene.index.PointValuesWriter=var2535, $r2=var1874, org.apache.lucene.index.FieldInfo=var3386, $r3=var3722, $r4=var1080, $z0=var1003, java.lang.IllegalArgumentException=var2107, $r6=var2787, "fieldName must be the same"=var1651}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.lucene.index.PointValuesWriter$2;	r0 := @parameter0: java.lang.String;	$r2 = r1.<org.apache.lucene.index.PointValuesWriter$2: org.apache.lucene.index.PointValuesWriter this$0>;	$r3 = $r2.<org.apache.lucene.index.PointValuesWriter: org.apache.lucene.index.FieldInfo fieldInfo>;	$r4 = $r3.<org.apache.lucene.index.FieldInfo: java.lang.String name>;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 != 0 goto $r5 = new org.apache.lucene.index.PointValuesWriter$2$1;	$r6 = new java.lang.IllegalArgumentException;	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("fieldName must be the same");	throw $r6
;block_num 2