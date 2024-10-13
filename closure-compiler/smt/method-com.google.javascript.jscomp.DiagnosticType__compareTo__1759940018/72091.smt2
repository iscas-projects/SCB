(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2992 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun key/221390942 (var2992) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var2992 var2992)
(declare-const var3709 var2992) ; Statement: r0 := @this: com.google.javascript.jscomp.DiagnosticType 
(assert (not (= var3709 null-var2992)))
(declare-const var2329 var2992) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.DiagnosticType 
(assert (not (= var2329 null-var2992)))
(define-const var1614 String (key/221390942 var3709)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key> 
(define-const var2312 String (key/221390942 var2329)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key> 
(assert true)
(define-const var168 Int (compareTo/1411385946 var1614 var2312)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var1614 var2312)) (this<=other (str.<= var1614 var2312)) (compareRes (compareTo/1411385946 var1614 var2312))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {key/221390942=([com.google.javascript.jscomp.DiagnosticType], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var2992=com.google.javascript.jscomp.DiagnosticType, var3709=r0, var2329=r1, var1614=$r3, var2312=$r2, var168=$i0}
; {com.google.javascript.jscomp.DiagnosticType=var2992, r0=var3709, r1=var2329, $r3=var1614, $r2=var2312, $i0=var168}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.DiagnosticType;	r1 := @parameter0: com.google.javascript.jscomp.DiagnosticType;	$r3 = r0.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key>;	$r2 = r1.<com.google.javascript.jscomp.DiagnosticType: java.lang.String key>;	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1