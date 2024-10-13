(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3647 0)
(declare-sort var435 0)
(declare-sort var3755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun var3755-init () var3755)
(declare-fun <init>/-325640736 (var3755) void)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var3647 var3647)
(declare-const null-String String)
(declare-const var263 var3647) ; Statement: r6 := @this: jdk.jfr.internal.MetadataHandler 
(assert (not (= var263 null-var3647)))
(declare-const var628 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var628 null-String)))
(assert true)
(define-const var1135 (Array Int String) (split/-636890950 var628 ",")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var628 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var3312 var3755 var3755-init) ; Statement: $r13 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3312)) ; Statement: specialinvoke $r13.<java.util.ArrayList: void <init>()>() 

(declare-const var3312!1 var3755)
(define-const var3397 Int (getLength-Arr-String-1 var1135)) ; Statement: i0 = lengthof r1 
(define-const var1923 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto return $r13 
(assert (>= var1923 var3397)) ; Cond: i4 >= i0 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), var3755-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var3647=jdk.jfr.internal.MetadataHandler, var263=r6, var628=r0, var435=null_type, var1135=r1, var3755=java.util.ArrayList, var3312=$r13, var3397=i0, var1923=i4}
; {jdk.jfr.internal.MetadataHandler=var3647, r6=var263, r0=var628, null_type=var435, r1=var1135, java.util.ArrayList=var3755, $r13=var3312, i0=var3397, i4=var1923}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r6 := @this: jdk.jfr.internal.MetadataHandler;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	$r13 = new java.util.ArrayList;	specialinvoke $r13.<java.util.ArrayList: void <init>()>();	i0 = lengthof r1;	i4 = 0;	if i4 >= i0 goto return $r13;	return $r13
;block_num 3