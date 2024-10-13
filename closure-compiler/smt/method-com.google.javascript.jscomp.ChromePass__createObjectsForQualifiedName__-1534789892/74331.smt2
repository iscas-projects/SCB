(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2865 0)
(declare-sort var17 0)
(declare-sort var2269 0)
(declare-sort var3777 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2269-init () var2269)
(declare-fun <init>/-325640736 (var2269) void)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun createObjectIfNew/170288458 (var2865 var3777 String Bool) void)
(declare-fun cast-from-var2269-to-var3777 (var2269) var3777)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var2865 var2865)
(declare-const null-String String)
(declare-const var15 var2865) ; Statement: r3 := @this: com.google.javascript.jscomp.ChromePass 
(assert (not (= var15 null-var2865)))
(declare-const var983 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var983 null-String)))
(define-const var761 var2269 var2269-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var761)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var761!1 var2269)
(assert true)
(define-const var3388 (Array Int String) (split/-636890950 var983 "\u005c.")) ; Statement: r2 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\.") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var983 "\u005c.") i) (re.++ (re.* re.all) (str.to_re ".") (re.* re.all))))))
(define-const var1922 String (select var3388 0)) ; Statement: $r4 = r2[0] 
(assert true)
;(assert (createObjectIfNew/170288458 var15 (cast-from-var2269-to-var3777 var761!1) var1922 (ite (= 1 1) true false))) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.ChromePass: void createObjectIfNew(java.util.List,java.lang.String,boolean)>($r0, $r4, 1) 

(declare-const var15!1 var2865)
(declare-const var761!2 var2269)
(declare-const var1922!1 String)
(declare-const var3241 Int)
(define-const var3891 Int (getLength-Arr-String-1 var3388)) ; Statement: $i0 = lengthof r2 
 ; Statement: if $i0 < 2 goto return $r0 
(assert (< var3891 2)) ; Cond: $i0 < 2 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2269-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), createObjectIfNew/170288458=([com.google.javascript.jscomp.ChromePass, java.util.List, java.lang.String, boolean], void), cast-from-var2269-to-var3777=([java.util.ArrayList], java.util.List), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var2865=com.google.javascript.jscomp.ChromePass, var15=r3, var983=r1, var17=null_type, var2269=java.util.ArrayList, var761=$r0, var3388=r2, var1922=$r4, var3777=java.util.List, var3241=1, var3891=$i0}
; {com.google.javascript.jscomp.ChromePass=var2865, r3=var15, r1=var983, null_type=var17, java.util.ArrayList=var2269, $r0=var761, r2=var3388, $r4=var1922, java.util.List=var3777, 1=var3241, $i0=var3891}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.ChromePass;	r1 := @parameter0: java.lang.String;	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	r2 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\.");	$r4 = r2[0];	virtualinvoke r3.<com.google.javascript.jscomp.ChromePass: void createObjectIfNew(java.util.List,java.lang.String,boolean)>($r0, $r4, 1);	$i0 = lengthof r2;	if $i0 < 2 goto return $r0;	return $r0
;block_num 2