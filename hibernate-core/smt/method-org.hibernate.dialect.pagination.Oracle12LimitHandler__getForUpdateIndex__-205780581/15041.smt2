(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2181 0)
(declare-sort var3485 0)
(declare-sort var283 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var283) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2181 var2181)
(declare-const null-String String)
(declare-const var283-ROOT var283)
(declare-const var3070 var2181) ; Statement: r3 := @this: org.hibernate.dialect.pagination.Oracle12LimitHandler 
(assert (not (= var3070 null-var2181)))
(declare-const var1832 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1832 null-String)))
(define-const var3078 var283 var283-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var755 String (toLowerCase/1946809429 var1832 var3078)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true)
(define-const var2578 Int (lastIndexOf/-618837785 var755 "for update")) ; Statement: i0 = virtualinvoke $r2.<java.lang.String: int lastIndexOf(java.lang.String)>("for update") 
(assert true)
(define-const var1060 Int (lastIndexOf/-618837785 var1832 "\u0027")) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>("\'") 
(define-const var1674 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 <= $i3 goto return i0 
(assert (<= var2578 var1674)) ; Cond: i0 <= $i3 
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var2181=org.hibernate.dialect.pagination.Oracle12LimitHandler, var3070=r3, var1832=r0, var3485=null_type, var283=java.util.Locale, var3078=$r1, var755=$r2, var2578=i0, var1060=i1, var1674=$i3}
; {org.hibernate.dialect.pagination.Oracle12LimitHandler=var2181, r3=var3070, r0=var1832, null_type=var3485, java.util.Locale=var283, $r1=var3078, $r2=var755, i0=var2578, i1=var1060, $i3=var1674}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: int lastIndexOf(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 2}
;stmts r3 := @this: org.hibernate.dialect.pagination.Oracle12LimitHandler;	r0 := @parameter0: java.lang.String;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	i0 = virtualinvoke $r2.<java.lang.String: int lastIndexOf(java.lang.String)>("for update");	i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>("\'");	$i3 = (int) -1;	if i0 <= $i3 goto return i0;	return i0
;block_num 2