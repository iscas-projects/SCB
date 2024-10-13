(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1796 0)
(declare-sort var618 0)
(declare-sort var259 0)
(declare-sort var167 0)
(declare-sort var2481 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-2539199 (var1796) var259)
(declare-fun fieldInfo/978767219 (var259) var167)
(declare-fun name/1093634646 (var167) String)
(declare-fun var2481-init () var2481)
(declare-fun <init>/-484767084 (var2481 var1796) void)
(declare-const null-var1796 var1796)
(declare-const null-String String)
(declare-const var1064 var1796) ; Statement: r1 := @this: org.apache.lucene.index.PointValuesWriter$2 
(assert (not (= var1064 null-var1796)))
(declare-const var3173 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3173 null-String)))
(define-const var2940 var259 (this$0/-2539199 var1064)) ; Statement: $r2 = r1.<org.apache.lucene.index.PointValuesWriter$2: org.apache.lucene.index.PointValuesWriter this$0> 
(define-const var1385 var167 (fieldInfo/978767219 var2940)) ; Statement: $r3 = $r2.<org.apache.lucene.index.PointValuesWriter: org.apache.lucene.index.FieldInfo fieldInfo> 
(define-const var1321 String (name/1093634646 var1385)) ; Statement: $r4 = $r3.<org.apache.lucene.index.FieldInfo: java.lang.String name> 
(assert true)
(define-const var722 Bool (= var3173 var1321)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 != 0 goto $r5 = new org.apache.lucene.index.PointValuesWriter$2$1 
(assert (not (= (ite var722 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3045 var2481 var2481-init) ; Statement: $r5 = new org.apache.lucene.index.PointValuesWriter$2$1 
(assert true)
;(assert (<init>/-484767084 var3045 var1064)) ; Statement: specialinvoke $r5.<org.apache.lucene.index.PointValuesWriter$2$1: void <init>(org.apache.lucene.index.PointValuesWriter$2)>(r1) 

(declare-const var3045!1 var2481)
(declare-const var1064!1 var1796)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-2539199=([org.apache.lucene.index.PointValuesWriter$2], org.apache.lucene.index.PointValuesWriter), fieldInfo/978767219=([org.apache.lucene.index.PointValuesWriter], org.apache.lucene.index.FieldInfo), name/1093634646=([org.apache.lucene.index.FieldInfo], java.lang.String), var2481-init=([], org.apache.lucene.index.PointValuesWriter$2$1), <init>/-484767084=([org.apache.lucene.index.PointValuesWriter$2$1, org.apache.lucene.index.PointValuesWriter$2], void)}
; {var1796=org.apache.lucene.index.PointValuesWriter$2, var1064=r1, var3173=r0, var618=null_type, var259=org.apache.lucene.index.PointValuesWriter, var2940=$r2, var167=org.apache.lucene.index.FieldInfo, var1385=$r3, var1321=$r4, var722=$z0, var2481=org.apache.lucene.index.PointValuesWriter$2$1, var3045=$r5}
; {org.apache.lucene.index.PointValuesWriter$2=var1796, r1=var1064, r0=var3173, null_type=var618, org.apache.lucene.index.PointValuesWriter=var259, $r2=var2940, org.apache.lucene.index.FieldInfo=var167, $r3=var1385, $r4=var1321, $z0=var722, org.apache.lucene.index.PointValuesWriter$2$1=var2481, $r5=var3045}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.lucene.index.PointValuesWriter$2;	r0 := @parameter0: java.lang.String;	$r2 = r1.<org.apache.lucene.index.PointValuesWriter$2: org.apache.lucene.index.PointValuesWriter this$0>;	$r3 = $r2.<org.apache.lucene.index.PointValuesWriter: org.apache.lucene.index.FieldInfo fieldInfo>;	$r4 = $r3.<org.apache.lucene.index.FieldInfo: java.lang.String name>;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 != 0 goto $r5 = new org.apache.lucene.index.PointValuesWriter$2$1;	$r5 = new org.apache.lucene.index.PointValuesWriter$2$1;	specialinvoke $r5.<org.apache.lucene.index.PointValuesWriter$2$1: void <init>(org.apache.lucene.index.PointValuesWriter$2)>(r1);	return $r5
;block_num 2