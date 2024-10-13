(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var249 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-396850716 (var249) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var249 var249)
(declare-const var1168 var249) ; Statement: r0 := @this: com.google.javascript.jscomp.disambiguate.DisambiguateProperties$PropertyReferenceIndexJson 
(assert (not (= var1168 null-var249)))
(declare-const var3898 var249) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.disambiguate.DisambiguateProperties$PropertyReferenceIndexJson 
(assert (not (= var3898 null-var249)))
(define-const var1094 String (name/-396850716 var1168)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.disambiguate.DisambiguateProperties$PropertyReferenceIndexJson: java.lang.String name> 
(define-const var2476 String (name/-396850716 var3898)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.disambiguate.DisambiguateProperties$PropertyReferenceIndexJson: java.lang.String name> 
(assert true)
(define-const var1167 Int (compareTo/1411385946 var1094 var2476)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var1094 var2476)) (this<=other (str.<= var1094 var2476)) (compareRes (compareTo/1411385946 var1094 var2476))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-396850716=([com.google.javascript.jscomp.disambiguate.DisambiguateProperties$PropertyReferenceIndexJson], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var249=com.google.javascript.jscomp.disambiguate.DisambiguateProperties$PropertyReferenceIndexJson, var1168=r0, var3898=r1, var1094=$r3, var2476=$r2, var1167=$i0}
; {com.google.javascript.jscomp.disambiguate.DisambiguateProperties$PropertyReferenceIndexJson=var249, r0=var1168, r1=var3898, $r3=var1094, $r2=var2476, $i0=var1167}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.disambiguate.DisambiguateProperties$PropertyReferenceIndexJson;	r1 := @parameter0: com.google.javascript.jscomp.disambiguate.DisambiguateProperties$PropertyReferenceIndexJson;	$r3 = r0.<com.google.javascript.jscomp.disambiguate.DisambiguateProperties$PropertyReferenceIndexJson: java.lang.String name>;	$r2 = r1.<com.google.javascript.jscomp.disambiguate.DisambiguateProperties$PropertyReferenceIndexJson: java.lang.String name>;	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1