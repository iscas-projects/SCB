(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2419 0)
(declare-sort var2986 0)
(declare-sort var2930 0)
(declare-sort var2180 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$fieldInfo/-850421346 (var2419) var2930)
(declare-fun name/1093634646 (var2930) String)
(declare-fun var2180-init () var2180)
(declare-fun <init>/875830710 (var2180 String) void)
(declare-const null-var2419 var2419)
(declare-const null-String String)
(declare-const var2829 var2419) ; Statement: r1 := @this: org.apache.lucene.codecs.PointsWriter$1 
(assert (not (= var2829 null-var2419)))
(declare-const var947 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var947 null-String)))
(define-const var166 var2930 (val$fieldInfo/-850421346 var2829)) ; Statement: $r2 = r1.<org.apache.lucene.codecs.PointsWriter$1: org.apache.lucene.index.FieldInfo val$fieldInfo> 
(define-const var2328 String (name/1093634646 var166)) ; Statement: $r3 = $r2.<org.apache.lucene.index.FieldInfo: java.lang.String name> 
(assert true)
(define-const var202 Bool (= var947 var2328)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 != 0 goto $r4 = new org.apache.lucene.codecs.PointsWriter$1$1 
(assert (not (not (= (ite var202 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3237 var2180 var2180-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var3237 "field name must match the field being merged")) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("field name must match the field being merged") 

(declare-const var3237!1 var2180)
(declare-const var2261 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {val$fieldInfo/-850421346=([org.apache.lucene.codecs.PointsWriter$1], org.apache.lucene.index.FieldInfo), name/1093634646=([org.apache.lucene.index.FieldInfo], java.lang.String), var2180-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2419=org.apache.lucene.codecs.PointsWriter$1, var2829=r1, var947=r0, var2986=null_type, var2930=org.apache.lucene.index.FieldInfo, var166=$r2, var2328=$r3, var202=$z0, var2180=java.lang.IllegalArgumentException, var3237=$r5, var2261="field name must match the field being merged"}
; {org.apache.lucene.codecs.PointsWriter$1=var2419, r1=var2829, r0=var947, null_type=var2986, org.apache.lucene.index.FieldInfo=var2930, $r2=var166, $r3=var2328, $z0=var202, java.lang.IllegalArgumentException=var2180, $r5=var3237, "field name must match the field being merged"=var2261}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.lucene.codecs.PointsWriter$1;	r0 := @parameter0: java.lang.String;	$r2 = r1.<org.apache.lucene.codecs.PointsWriter$1: org.apache.lucene.index.FieldInfo val$fieldInfo>;	$r3 = $r2.<org.apache.lucene.index.FieldInfo: java.lang.String name>;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 != 0 goto $r4 = new org.apache.lucene.codecs.PointsWriter$1$1;	$r5 = new java.lang.IllegalArgumentException;	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("field name must match the field being merged");	throw $r5
;block_num 2