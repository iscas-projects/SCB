(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2130 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-470314271 (var2130) String)
(declare-const null-var2130 var2130)
(declare-const var1064 var2130) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType 
(assert (not (= var1064 null-var2130)))
(declare-const var933 var2130) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType 
(assert (not (= var933 null-var2130)))
(define-const var2054 String (type/-470314271 var933)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String type> 
(assert true)
(define-const var2057 Bool (= var2054 "*")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("*") 
 ; Statement: if $z0 != 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String subtype> 
(assert (not (not (= (ite var2057 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var661 String (type/-470314271 var933)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String type> 
(define-const var2515 String (type/-470314271 var1064)) ; Statement: $r10 = r3.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String type> 
(assert true)
(define-const var166 Bool (= var661 var2515)) ; Statement: $z4 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>($r10) 
 ; Statement: if $z4 == 0 goto $z5 = 0 
(assert (= (ite var166 1 0) 0)) ; Cond: $z4 == 0 
(define-const var2986 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z5 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-470314271=([com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType], java.lang.String)}
; {var2130=com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType, var1064=r3, var933=r0, var2054=$r1, var2057=$z0, var661=$r11, var2515=$r10, var166=$z4, var2986=$z5}
; {com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType=var2130, r3=var1064, r0=var933, $r1=var2054, $z0=var2057, $r11=var661, $r10=var2515, $z4=var166, $z5=var2986}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String type>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("*");	if $z0 != 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String subtype>;	$r11 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String type>;	$r10 = r3.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String type>;	$z4 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>($r10);	if $z4 == 0 goto $z5 = 0;	$z5 = 0;	return $z5
;block_num 4