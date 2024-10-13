(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2758 0)
(declare-sort var514 0)
(declare-sort var1876 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2758-init () var2758)
(declare-fun <init>/671347770 (var2758 Int) void)
(declare-fun var1876_newDataOutput/1820577695 (var2758) var514)
(declare-const null-Int Int)
(declare-const var2729 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2729 null-Int)))
 ; Statement: if i0 >= 0 goto $r0 = new java.io.ByteArrayOutputStream 
(assert (>= var2729 0)) ; Cond: i0 >= 0 
(define-const var1528 var2758 var2758-init) ; Statement: $r0 = new java.io.ByteArrayOutputStream 
(assert true)
;(assert (<init>/671347770 var1528 var2729)) ; Statement: specialinvoke $r0.<java.io.ByteArrayOutputStream: void <init>(int)>(i0) 

(declare-const var1528!1 var2758)
(declare-const var2729!1 Int)
(define-const var2985 var514 (var1876_newDataOutput/1820577695 var1528!1)) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.ByteStreams: com.google.javascript.jscomp.jarjar.com.google.common.io.ByteArrayDataOutput newDataOutput(java.io.ByteArrayOutputStream)>($r0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2758-init=([], java.io.ByteArrayOutputStream), <init>/671347770=([java.io.ByteArrayOutputStream, int], void), var1876_newDataOutput/1820577695=([java.io.ByteArrayOutputStream], com.google.javascript.jscomp.jarjar.com.google.common.io.ByteArrayDataOutput)}
; {var2729=i0, var2758=java.io.ByteArrayOutputStream, var1528=$r0, var514=com.google.javascript.jscomp.jarjar.com.google.common.io.ByteArrayDataOutput, var1876=com.google.javascript.jscomp.jarjar.com.google.common.io.ByteStreams, var2985=$r1}
; {i0=var2729, java.io.ByteArrayOutputStream=var2758, $r0=var1528, com.google.javascript.jscomp.jarjar.com.google.common.io.ByteArrayDataOutput=var514, com.google.javascript.jscomp.jarjar.com.google.common.io.ByteStreams=var1876, $r1=var2985}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	if i0 >= 0 goto $r0 = new java.io.ByteArrayOutputStream;	$r0 = new java.io.ByteArrayOutputStream;	specialinvoke $r0.<java.io.ByteArrayOutputStream: void <init>(int)>(i0);	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.ByteStreams: com.google.javascript.jscomp.jarjar.com.google.common.io.ByteArrayDataOutput newDataOutput(java.io.ByteArrayOutputStream)>($r0);	return $r1
;block_num 2