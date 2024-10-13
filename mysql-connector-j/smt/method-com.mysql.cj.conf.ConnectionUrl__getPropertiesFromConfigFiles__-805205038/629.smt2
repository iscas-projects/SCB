(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var254 0)
(declare-sort var1971 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1971-init () var1971)
(declare-fun <init>/964458484 (var1971) void)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-String String)
(declare-const var1610 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1610 null-String)))
(define-const var261 var1971 var1971-init) ; Statement: $r0 = new java.util.Properties 
(assert true)
;(assert (<init>/964458484 var261)) ; Statement: specialinvoke $r0.<java.util.Properties: void <init>()>() 

(declare-const var261!1 var1971)
(assert true)
(define-const var1175 (Array Int String) (split/-636890950 var1610 ",")) ; Statement: r2 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1610 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var1395 Int (getLength-Arr-String-1 var1175)) ; Statement: i0 = lengthof r2 
(define-const var3901 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return $r0 
(assert (>= var3901 var1395)) ; Cond: i1 >= i0 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1971-init=([], java.util.Properties), <init>/964458484=([java.util.Properties], void), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var1610=r1, var254=null_type, var1971=java.util.Properties, var261=$r0, var1175=r2, var1395=i0, var3901=i1}
; {r1=var1610, null_type=var254, java.util.Properties=var1971, $r0=var261, r2=var1175, i0=var1395, i1=var3901}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.util.Properties;	specialinvoke $r0.<java.util.Properties: void <init>()>();	r2 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	i0 = lengthof r2;	i1 = 0;	if i1 >= i0 goto return $r0;	return $r0
;block_num 3