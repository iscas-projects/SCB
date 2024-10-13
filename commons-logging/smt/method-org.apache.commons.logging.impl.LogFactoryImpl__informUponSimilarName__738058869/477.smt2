(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1468 0)
(declare-sort var1210 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun regionMatches/-1964120983 (String Bool Int String Int Int) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1468 var1468)
(declare-const null-String String)
(declare-const var1468-PKG_LEN Int)
(declare-const var2046 var1468) ; Statement: r3 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var2046 null-var1468)))
(declare-const var2103 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2103 null-String)))
(declare-const var2584 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2584 null-String)))
(declare-const var442 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var442 null-String)))
(assert true)
(define-const var3514 Bool (= var2584 var442)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $i0 = <org.apache.commons.logging.impl.LogFactoryImpl: int PKG_LEN> 
(assert (= (ite var3514 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1925 Int var1468-PKG_LEN) ; Statement: $i0 = <org.apache.commons.logging.impl.LogFactoryImpl: int PKG_LEN> 
(define-const var2204 Int (+ var1925 5)) ; Statement: $i1 = $i0 + 5 
(assert true)
(define-const var1117 Bool (regionMatches/-1964120983 var2584 (ite (= 1 1) true false) 0 var442 0 var2204)) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>(1, 0, r1, 0, $i1) 
 ; Statement: if $z1 == 0 goto return 
(assert (not (= (ite var1117 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (append/672562846 var2103 " Did you mean \u0027")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Did you mean \'") 
(declare-const var2103!1 String)
(assert (= var2103!1 (str.++ var2103 " Did you mean \u0027")))
(assert true)
;(assert (append/672562846 var2103!1 var442)) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2103!2 String)
(assert (= var2103!2 (str.++ var2103!1 var442)))
(assert true)
;(assert (append/672562846 var2103!2 "\u0027?")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'?") 
(declare-const var2103!3 String)
(assert (= var2103!3 (str.++ var2103!2 "\u0027?")))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {regionMatches/-1964120983=([java.lang.String, boolean, int, java.lang.String, int, int], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1468=org.apache.commons.logging.impl.LogFactoryImpl, var2046=r3, var2103=r2, var2584=r0, var1210=null_type, var442=r1, var3514=$z0, var1925=$i0, var2204=$i1, var1117=$z1}
; {org.apache.commons.logging.impl.LogFactoryImpl=var1468, r3=var2046, r2=var2103, r0=var2584, null_type=var1210, r1=var442, $z0=var3514, $i0=var1925, $i1=var2204, $z1=var1117}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3}
;stmts r3 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r2 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $i0 = <org.apache.commons.logging.impl.LogFactoryImpl: int PKG_LEN>;	$i0 = <org.apache.commons.logging.impl.LogFactoryImpl: int PKG_LEN>;	$i1 = $i0 + 5;	$z1 = virtualinvoke r0.<java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>(1, 0, r1, 0, $i1);	if $z1 == 0 goto return;	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Did you mean \'");	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'?");	return
;block_num 4