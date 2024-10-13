(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2287 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun formatWithoutDoc/-1823172368 (var2287) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var2287 var2287)
(declare-const var2234 var2287) ; Statement: r0 := @this: com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement 
(assert (not (= var2234 null-var2287)))
(declare-const var1247 var2287) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement 
(assert (not (= var1247 null-var2287)))
(assert true)
(define-const var125 String (formatWithoutDoc/-1823172368 var2234)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: java.lang.String formatWithoutDoc()>() 
(assert true)
(define-const var651 String (formatWithoutDoc/-1823172368 var1247)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: java.lang.String formatWithoutDoc()>() 
(assert true)
(define-const var2419 Int (compareTo/1411385946 var125 var651)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var125 var651)) (this<=other (str.<= var125 var651)) (compareRes (compareTo/1411385946 var125 var651))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {formatWithoutDoc/-1823172368=([com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var2287=com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement, var2234=r0, var1247=r1, var125=$r3, var651=$r2, var2419=$i0}
; {com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement=var2287, r0=var2234, r1=var1247, $r3=var125, $r2=var651, $i0=var2419}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement;	r1 := @parameter0: com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: java.lang.String formatWithoutDoc()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: java.lang.String formatWithoutDoc()>();	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1