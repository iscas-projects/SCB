(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-String String)
(declare-const var1258 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1258 null-String)))
(define-const var435 String (String_toString/-1426662429 var1258)) ; Statement: $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true)
(define-const var1945 String (trim/-847153721 var435)) ; Statement: r2 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>() 
(define-const var1108 String "null") ; Statement: $r3 = "null" 
(assert true)
(define-const var2098 Bool (= var1108 var1945)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var2098 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3302 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String)}
; {var1258=r0, var435=$r1, var1945=r2, var1108=$r3, var2098=$z0, var3302=$z2}
; {r0=var1258, $r1=var435, r2=var1945, $r3=var1108, $z0=var2098, $z2=var3302}
;seq <java.lang.CharSequence: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	$r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	r2 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>();	$r3 = "null";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3