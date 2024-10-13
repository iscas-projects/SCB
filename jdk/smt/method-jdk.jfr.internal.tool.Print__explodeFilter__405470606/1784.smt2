(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1561 0)
(declare-sort var208 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var208-init () var208)
(declare-fun <init>/-325640736 (var208) void)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-String String)
(declare-const var3227 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3227 null-String)))
(define-const var1758 var208 var208-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1758)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var1758!1 var208)
(assert true)
(define-const var2157 (Array Int String) (split/-636890950 var3227 ",")) ; Statement: r2 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3227 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var359 Int (getLength-Arr-String-1 var2157)) ; Statement: i0 = lengthof r2 
(define-const var1918 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return $r0 
(assert (>= var1918 var359)) ; Cond: i1 >= i0 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var208-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var3227=r1, var1561=null_type, var208=java.util.ArrayList, var1758=$r0, var2157=r2, var359=i0, var1918=i1}
; {r1=var3227, null_type=var1561, java.util.ArrayList=var208, $r0=var1758, r2=var2157, i0=var359, i1=var1918}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	r2 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	i0 = lengthof r2;	i1 = 0;	if i1 >= i0 goto return $r0;	return $r0
;block_num 3