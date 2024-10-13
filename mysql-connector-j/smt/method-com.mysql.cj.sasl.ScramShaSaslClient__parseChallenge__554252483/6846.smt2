(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2626 0)
(declare-sort var1229 0)
(declare-sort var3385 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3385-init () var3385)
(declare-fun <init>/-201242697 (var3385) void)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var2626 var2626)
(declare-const null-String String)
(declare-const var624 var2626) ; Statement: r7 := @this: com.mysql.cj.sasl.ScramShaSaslClient 
(assert (not (= var624 null-var2626)))
(declare-const var299 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var299 null-String)))
(define-const var1542 var3385 var3385-init) ; Statement: $r0 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1542)) ; Statement: specialinvoke $r0.<java.util.HashMap: void <init>()>() 

(declare-const var1542!1 var3385)
(assert true)
(define-const var1509 (Array Int String) (split/-636890950 var299 ",")) ; Statement: r2 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var299 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var689 Int (getLength-Arr-String-1 var1509)) ; Statement: i0 = lengthof r2 
(define-const var812 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return $r0 
(assert (>= var812 var689)) ; Cond: i1 >= i0 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3385-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var2626=com.mysql.cj.sasl.ScramShaSaslClient, var624=r7, var299=r1, var1229=null_type, var3385=java.util.HashMap, var1542=$r0, var1509=r2, var689=i0, var812=i1}
; {com.mysql.cj.sasl.ScramShaSaslClient=var2626, r7=var624, r1=var299, null_type=var1229, java.util.HashMap=var3385, $r0=var1542, r2=var1509, i0=var689, i1=var812}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r7 := @this: com.mysql.cj.sasl.ScramShaSaslClient;	r1 := @parameter0: java.lang.String;	$r0 = new java.util.HashMap;	specialinvoke $r0.<java.util.HashMap: void <init>()>();	r2 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	i0 = lengthof r2;	i1 = 0;	if i1 >= i0 goto return $r0;	return $r0
;block_num 3