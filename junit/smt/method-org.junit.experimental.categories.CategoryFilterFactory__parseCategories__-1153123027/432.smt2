(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var656 0)
(declare-sort var471 0)
(declare-sort var261 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var261-init () var261)
(declare-fun <init>/-325640736 (var261) void)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var656 var656)
(declare-const null-String String)
(declare-const var1496 var656) ; Statement: r4 := @this: org.junit.experimental.categories.CategoryFilterFactory 
(assert (not (= var1496 null-var656)))
(declare-const var526 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var526 null-String)))
(define-const var1201 var261 var261-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1201)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var1201!1 var261)
(assert true)
(define-const var440 (Array Int String) (split/-636890950 var526 ",")) ; Statement: r2 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var526 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var3198 Int (getLength-Arr-String-1 var440)) ; Statement: i0 = lengthof r2 
(define-const var456 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return $r0 
(assert (>= var456 var3198)) ; Cond: i1 >= i0 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var261-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var656=org.junit.experimental.categories.CategoryFilterFactory, var1496=r4, var526=r1, var471=null_type, var261=java.util.ArrayList, var1201=$r0, var440=r2, var3198=i0, var456=i1}
; {org.junit.experimental.categories.CategoryFilterFactory=var656, r4=var1496, r1=var526, null_type=var471, java.util.ArrayList=var261, $r0=var1201, r2=var440, i0=var3198, i1=var456}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r4 := @this: org.junit.experimental.categories.CategoryFilterFactory;	r1 := @parameter0: java.lang.String;	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	r2 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	i0 = lengthof r2;	i1 = 0;	if i1 >= i0 goto return $r0;	return $r0
;block_num 3