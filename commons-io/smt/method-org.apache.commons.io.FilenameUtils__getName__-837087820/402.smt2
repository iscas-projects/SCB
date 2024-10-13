(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2653 0)
(declare-sort var2073 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2073_requireNonNullChars/-689899833 (String) String)
(declare-fun var2073_indexOfLastSeparator/-1337468509 (String) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-String String)
(declare-const var3292 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3292 null-String)))
 ; Statement: if r0 != null goto $r1 = staticinvoke <org.apache.commons.io.FilenameUtils: java.lang.String requireNonNullChars(java.lang.String)>(r0) 
(assert (not (= var3292 null-String))) ; Cond: r0 != null 
(define-const var148 String (var2073_requireNonNullChars/-689899833 var3292)) ; Statement: $r1 = staticinvoke <org.apache.commons.io.FilenameUtils: java.lang.String requireNonNullChars(java.lang.String)>(r0) 
(define-const var596 Int (var2073_indexOfLastSeparator/-1337468509 var3292)) ; Statement: $i0 = staticinvoke <org.apache.commons.io.FilenameUtils: int indexOfLastSeparator(java.lang.String)>(r0) 
(define-const var445 Int (+ var596 1)) ; Statement: $i1 = $i0 + 1 
(assert (and true (and (>= var445 0) (>= (str.len var148) var445))))
(define-const var3645 String (substring/850833817 var148 var445)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int)>($i1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2073_requireNonNullChars/-689899833=([java.lang.String], java.lang.String), var2073_indexOfLastSeparator/-1337468509=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var3292=r0, var2653=null_type, var2073=org.apache.commons.io.FilenameUtils, var148=$r1, var596=$i0, var445=$i1, var3645=$r2}
; {r0=var3292, null_type=var2653, org.apache.commons.io.FilenameUtils=var2073, $r1=var148, $i0=var596, $i1=var445, $r2=var3645}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto $r1 = staticinvoke <org.apache.commons.io.FilenameUtils: java.lang.String requireNonNullChars(java.lang.String)>(r0);	$r1 = staticinvoke <org.apache.commons.io.FilenameUtils: java.lang.String requireNonNullChars(java.lang.String)>(r0);	$i0 = staticinvoke <org.apache.commons.io.FilenameUtils: int indexOfLastSeparator(java.lang.String)>(r0);	$i1 = $i0 + 1;	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int)>($i1);	return $r2
;block_num 2