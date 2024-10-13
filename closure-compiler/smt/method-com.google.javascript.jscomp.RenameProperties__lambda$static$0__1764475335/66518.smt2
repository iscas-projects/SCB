(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2326 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun numOccurrences/-176331477 (var2326) Int)
(declare-fun oldName/-176331477 (var2326) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var2326 var2326)
(declare-const var153 var2326) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.RenameProperties$Property 
(assert (not (= var153 null-var2326)))
(declare-const var199 var2326) ; Statement: r1 := @parameter1: com.google.javascript.jscomp.RenameProperties$Property 
(assert (not (= var199 null-var2326)))
(define-const var709 Int (numOccurrences/-176331477 var153)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.RenameProperties$Property: int numOccurrences> 
(define-const var236 Int (numOccurrences/-176331477 var199)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.RenameProperties$Property: int numOccurrences> 
 ; Statement: if $i1 == $i0 goto $r3 = r0.<com.google.javascript.jscomp.RenameProperties$Property: java.lang.String oldName> 
(assert (= var709 var236)) ; Cond: $i1 == $i0 
(define-const var1774 String (oldName/-176331477 var153)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.RenameProperties$Property: java.lang.String oldName> 
(define-const var2246 String (oldName/-176331477 var199)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.RenameProperties$Property: java.lang.String oldName> 
(assert true)
(define-const var3783 Int (compareTo/1411385946 var1774 var2246)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var1774 var2246)) (this<=other (str.<= var1774 var2246)) (compareRes (compareTo/1411385946 var1774 var2246))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {numOccurrences/-176331477=([com.google.javascript.jscomp.RenameProperties$Property], int), oldName/-176331477=([com.google.javascript.jscomp.RenameProperties$Property], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var2326=com.google.javascript.jscomp.RenameProperties$Property, var153=r0, var199=r1, var709=$i1, var236=$i0, var1774=$r3, var2246=$r2, var3783=$i2}
; {com.google.javascript.jscomp.RenameProperties$Property=var2326, r0=var153, r1=var199, $i1=var709, $i0=var236, $r3=var1774, $r2=var2246, $i2=var3783}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.RenameProperties$Property;	r1 := @parameter1: com.google.javascript.jscomp.RenameProperties$Property;	$i1 = r0.<com.google.javascript.jscomp.RenameProperties$Property: int numOccurrences>;	$i0 = r1.<com.google.javascript.jscomp.RenameProperties$Property: int numOccurrences>;	if $i1 == $i0 goto $r3 = r0.<com.google.javascript.jscomp.RenameProperties$Property: java.lang.String oldName>;	$r3 = r0.<com.google.javascript.jscomp.RenameProperties$Property: java.lang.String oldName>;	$r2 = r1.<com.google.javascript.jscomp.RenameProperties$Property: java.lang.String oldName>;	$i2 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i2
;block_num 2