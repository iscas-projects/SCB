(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2185 0)
(declare-sort var257 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var2185 var2185)
(declare-const null-String String)
(declare-const var425 var2185) ; Statement: r5 := @this: freemarker.template.Configuration 
(assert (not (= var425 null-var2185)))
(declare-const var2389 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2389 null-String)))
(define-const var1846 String "encoding") ; Statement: $r1 = "encoding" 
(assert true)
(define-const var637 Bool (= var1846 var2389)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto return "default_encoding" 
(assert (not (not (= (ite var637 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2554 String "charset") ; Statement: $r2 = "charset" 
(assert true)
(define-const var3386 Bool (= var2554 var2389)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 != 0 goto return "default_encoding" 
(assert (not (not (= (ite var3386 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3440 String "default_charset") ; Statement: $r3 = "default_charset" 
(assert true)
(define-const var3739 Bool (= var3440 var2389)) ; Statement: $z2 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z2 == 0 goto $r4 = "defaultCharset" 
(assert (not (= (ite var3739 1 0) 0))) ; Negate: Cond: $z2 == 0  
 ; Statement: return "default_encoding" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2185=freemarker.template.Configuration, var425=r5, var2389=r0, var257=null_type, var1846=$r1, var637=$z0, var2554=$r2, var3386=$z1, var3440=$r3, var3739=$z2}
; {freemarker.template.Configuration=var2185, r5=var425, r0=var2389, null_type=var257, $r1=var1846, $z0=var637, $r2=var2554, $z1=var3386, $r3=var3440, $z2=var3739}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 3}
;stmts r5 := @this: freemarker.template.Configuration;	r0 := @parameter0: java.lang.String;	$r1 = "encoding";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto return "default_encoding";	$r2 = "charset";	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 != 0 goto return "default_encoding";	$r3 = "default_charset";	$z2 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z2 == 0 goto $r4 = "defaultCharset";	return "default_encoding"
;block_num 4