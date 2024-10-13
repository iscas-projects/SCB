(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3447 0)
(declare-sort var2404 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun preCache/2027219637 (var3447) (Array Int String))
(declare-const null-var3447 var3447)
(declare-const null-String String)
(declare-const var1012 var3447) ; Statement: r0 := @this: jdk.jfr.internal.StringPool$SimpleStringIdPool 
(assert (not (= var1012 null-var3447)))
(declare-const var2116 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2116 null-String)))
(define-const var835 (Array Int String) (preCache/2027219637 var1012)) ; Statement: $r1 = r0.<jdk.jfr.internal.StringPool$SimpleStringIdPool: java.lang.String[] preCache> 
(define-const var2734 String (select var835 0)) ; Statement: $r3 = $r1[0] 
(assert true)
(define-const var3778 Bool (= var2734 var2116)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto $r4 = r0.<jdk.jfr.internal.StringPool$SimpleStringIdPool: java.lang.String[] preCache> 
(assert (not (= (ite var3778 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {preCache/2027219637=([jdk.jfr.internal.StringPool$SimpleStringIdPool], java.lang.String[])}
; {var3447=jdk.jfr.internal.StringPool$SimpleStringIdPool, var1012=r0, var2116=r2, var2404=null_type, var835=$r1, var2734=$r3, var3778=$z0}
; {jdk.jfr.internal.StringPool$SimpleStringIdPool=var3447, r0=var1012, r2=var2116, null_type=var2404, $r1=var835, $r3=var2734, $z0=var3778}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.jfr.internal.StringPool$SimpleStringIdPool;	r2 := @parameter0: java.lang.String;	$r1 = r0.<jdk.jfr.internal.StringPool$SimpleStringIdPool: java.lang.String[] preCache>;	$r3 = $r1[0];	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto $r4 = r0.<jdk.jfr.internal.StringPool$SimpleStringIdPool: java.lang.String[] preCache>;	return 1
;block_num 2