(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1907 0)
(declare-sort var1557 0)
(declare-sort var1471 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentFilePart/1654875500 (var1907) var1557)
(declare-fun var1557_access$800/1750618330 (var1557) String)
(declare-const null-var1907 var1907)
(declare-const null-String String)
(declare-const var594 var1907) ; Statement: r0 := @this: org.apache.commons.io.input.ReversedLinesFileReader 
(assert (not (= var594 null-var1907)))
(define-const var3750 var1557 (currentFilePart/1654875500 var594)) ; Statement: $r1 = r0.<org.apache.commons.io.input.ReversedLinesFileReader: org.apache.commons.io.input.ReversedLinesFileReader$FilePart currentFilePart> 
(define-const var3269 String (var1557_access$800/1750618330 var3750)) ; Statement: r7 = staticinvoke <org.apache.commons.io.input.ReversedLinesFileReader$FilePart: java.lang.String access$800(org.apache.commons.io.input.ReversedLinesFileReader$FilePart)>($r1) 
(assert true) ; Non Conditional
 ; Statement: if r7 != null goto $r2 = "" 
(assert (not (= var3269 null-String))) ; Cond: r7 != null 
(define-const var3551 String "") ; Statement: $r2 = "" 
(assert true)
(define-const var931 Bool (= var3551 var3269)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z0 == 0 goto return r7 
(assert (= (ite var931 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {currentFilePart/1654875500=([org.apache.commons.io.input.ReversedLinesFileReader], org.apache.commons.io.input.ReversedLinesFileReader$FilePart), var1557_access$800/1750618330=([org.apache.commons.io.input.ReversedLinesFileReader$FilePart], java.lang.String)}
; {var1907=org.apache.commons.io.input.ReversedLinesFileReader, var594=r0, var1557=org.apache.commons.io.input.ReversedLinesFileReader$FilePart, var3750=$r1, var3269=r7, var1471=null_type, var3551=$r2, var931=$z0}
; {org.apache.commons.io.input.ReversedLinesFileReader=var1907, r0=var594, org.apache.commons.io.input.ReversedLinesFileReader$FilePart=var1557, $r1=var3750, r7=var3269, null_type=var1471, $r2=var3551, $z0=var931}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.io.input.ReversedLinesFileReader;	$r1 = r0.<org.apache.commons.io.input.ReversedLinesFileReader: org.apache.commons.io.input.ReversedLinesFileReader$FilePart currentFilePart>;	r7 = staticinvoke <org.apache.commons.io.input.ReversedLinesFileReader$FilePart: java.lang.String access$800(org.apache.commons.io.input.ReversedLinesFileReader$FilePart)>($r1);	if r7 != null goto $r2 = "";	$r2 = "";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r7);	if $z0 == 0 goto return r7;	return r7
;block_num 4