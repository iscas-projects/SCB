(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var585 0)
(declare-sort var525 0)
(declare-sort var121 0)
(declare-sort var3371 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$fieldInfo/-850421346 (var585) var121)
(declare-fun name/1093634646 (var121) String)
(declare-fun var3371-init () var3371)
(declare-fun <init>/1492202407 (var3371 var585 String) void)
(declare-const null-var585 var585)
(declare-const null-String String)
(declare-const var1823 var585) ; Statement: r1 := @this: org.apache.lucene.codecs.PointsWriter$1 
(assert (not (= var1823 null-var585)))
(declare-const var2451 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2451 null-String)))
(define-const var2452 var121 (val$fieldInfo/-850421346 var1823)) ; Statement: $r2 = r1.<org.apache.lucene.codecs.PointsWriter$1: org.apache.lucene.index.FieldInfo val$fieldInfo> 
(define-const var1875 String (name/1093634646 var2452)) ; Statement: $r3 = $r2.<org.apache.lucene.index.FieldInfo: java.lang.String name> 
(assert true)
(define-const var2755 Bool (= var2451 var1875)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 != 0 goto $r4 = new org.apache.lucene.codecs.PointsWriter$1$1 
(assert (not (= (ite var2755 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2851 var3371 var3371-init) ; Statement: $r4 = new org.apache.lucene.codecs.PointsWriter$1$1 
(assert true)
;(assert (<init>/1492202407 var2851 var1823 var2451)) ; Statement: specialinvoke $r4.<org.apache.lucene.codecs.PointsWriter$1$1: void <init>(org.apache.lucene.codecs.PointsWriter$1,java.lang.String)>(r1, r0) 

(declare-const var2851!1 var3371)
(declare-const var1823!1 var585)
(declare-const var2451!1 String)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {val$fieldInfo/-850421346=([org.apache.lucene.codecs.PointsWriter$1], org.apache.lucene.index.FieldInfo), name/1093634646=([org.apache.lucene.index.FieldInfo], java.lang.String), var3371-init=([], org.apache.lucene.codecs.PointsWriter$1$1), <init>/1492202407=([org.apache.lucene.codecs.PointsWriter$1$1, org.apache.lucene.codecs.PointsWriter$1, java.lang.String], void)}
; {var585=org.apache.lucene.codecs.PointsWriter$1, var1823=r1, var2451=r0, var525=null_type, var121=org.apache.lucene.index.FieldInfo, var2452=$r2, var1875=$r3, var2755=$z0, var3371=org.apache.lucene.codecs.PointsWriter$1$1, var2851=$r4}
; {org.apache.lucene.codecs.PointsWriter$1=var585, r1=var1823, r0=var2451, null_type=var525, org.apache.lucene.index.FieldInfo=var121, $r2=var2452, $r3=var1875, $z0=var2755, org.apache.lucene.codecs.PointsWriter$1$1=var3371, $r4=var2851}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.lucene.codecs.PointsWriter$1;	r0 := @parameter0: java.lang.String;	$r2 = r1.<org.apache.lucene.codecs.PointsWriter$1: org.apache.lucene.index.FieldInfo val$fieldInfo>;	$r3 = $r2.<org.apache.lucene.index.FieldInfo: java.lang.String name>;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 != 0 goto $r4 = new org.apache.lucene.codecs.PointsWriter$1$1;	$r4 = new org.apache.lucene.codecs.PointsWriter$1$1;	specialinvoke $r4.<org.apache.lucene.codecs.PointsWriter$1$1: void <init>(org.apache.lucene.codecs.PointsWriter$1,java.lang.String)>(r1, r0);	return $r4
;block_num 2