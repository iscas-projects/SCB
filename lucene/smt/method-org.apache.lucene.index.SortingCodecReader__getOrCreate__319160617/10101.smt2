(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1362 0)
(declare-sort var1086 0)
(declare-sort var3486 0)
(declare-sort var279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cachedField/-1402395001 (var1362) String)
(declare-fun cachedObject/-1402395001 (var1362) var279)
(declare-const null-var1362 var1362)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3486 var3486)
(declare-const var1362-$assertionsDisabled Bool)
(declare-const var427 var1362) ; Statement: r1 := @this: org.apache.lucene.index.SortingCodecReader 
(assert (not (= var427 null-var1362)))
(declare-const var2283 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2283 null-String)))
(declare-const var2468 Bool) ; Statement: z2 := @parameter1: boolean 
(assert (not (= var2468 null-Bool)))
(declare-const var2533 var3486) ; Statement: r6 := @parameter2: org.apache.lucene.util.IOSupplier 
(assert (not (= var2533 null-var3486)))
(define-const var835 String (cachedField/-1402395001 var427)) ; Statement: $r2 = r1.<org.apache.lucene.index.SortingCodecReader: java.lang.String cachedField> 
(assert true)
(define-const var3633 Bool (= var2283 var835)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $z5 = 0 
(assert (= (ite var3633 1 0) 0)) ; Cond: $z0 == 0 
(define-const var26 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z5 != 0 goto $z6 = <org.apache.lucene.index.SortingCodecReader: boolean $assertionsDisabled> 
(assert (not (= (ite var26 1 0) 0))) ; Cond: $z5 != 0 
(define-const var3537 Bool var1362-$assertionsDisabled) ; Statement: $z6 = <org.apache.lucene.index.SortingCodecReader: boolean $assertionsDisabled> 
 ; Statement: if $z6 != 0 goto $r3 = r1.<org.apache.lucene.index.SortingCodecReader: java.lang.Object cachedObject> 
(assert (not (= (ite var3537 1 0) 0))) ; Cond: $z6 != 0 
(define-const var1216 var279 (cachedObject/-1402395001 var427)) ; Statement: $r3 = r1.<org.apache.lucene.index.SortingCodecReader: java.lang.Object cachedObject> 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {cachedField/-1402395001=([org.apache.lucene.index.SortingCodecReader], java.lang.String), cachedObject/-1402395001=([org.apache.lucene.index.SortingCodecReader], java.lang.Object)}
; {var1362=org.apache.lucene.index.SortingCodecReader, var427=r1, var2283=r0, var1086=null_type, var2468=z2, var3486=org.apache.lucene.util.IOSupplier, var2533=r6, var835=$r2, var3633=$z0, var26=$z5, var3537=$z6, var279=java.lang.Object, var1216=$r3}
; {org.apache.lucene.index.SortingCodecReader=var1362, r1=var427, r0=var2283, null_type=var1086, z2=var2468, org.apache.lucene.util.IOSupplier=var3486, r6=var2533, $r2=var835, $z0=var3633, $z5=var26, $z6=var3537, java.lang.Object=var279, $r3=var1216}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.lucene.index.SortingCodecReader;	r0 := @parameter0: java.lang.String;	z2 := @parameter1: boolean;	r6 := @parameter2: org.apache.lucene.util.IOSupplier;	$r2 = r1.<org.apache.lucene.index.SortingCodecReader: java.lang.String cachedField>;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $z5 = 0;	$z5 = 0;	if $z5 != 0 goto $z6 = <org.apache.lucene.index.SortingCodecReader: boolean $assertionsDisabled>;	$z6 = <org.apache.lucene.index.SortingCodecReader: boolean $assertionsDisabled>;	if $z6 != 0 goto $r3 = r1.<org.apache.lucene.index.SortingCodecReader: java.lang.Object cachedObject>;	$r3 = r1.<org.apache.lucene.index.SortingCodecReader: java.lang.Object cachedObject>;	return $r3
;block_num 5