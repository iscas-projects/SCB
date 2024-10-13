(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var890 0)
(declare-sort var1310 0)
(declare-sort var3537 0)
(declare-sort var1044 0)
(declare-sort var947 0)
(declare-sort var3634 0)
(declare-sort var3695 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun var3537-init () var3537)
(declare-fun <init>/-325640736 (var3537) void)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1044-init () var1044)
(declare-fun <init>/1754656984 (var1044 Int String) void)
(declare-fun cast-from-var1044-to-var947 (var1044) var947)
(declare-fun defineTemplate/-470534363 (var890 String var947 var3695 String var947) var3634)
(declare-fun cast-from-var3537-to-var3695 (var3537) var3695)
(declare-const null-var890 var890)
(declare-const null-String String)
(declare-const null-NullType var1310)
(declare-const null-var947 var947)
(declare-const var775 var890) ; Statement: r2 := @this: org.stringtemplate.v4.STGroup 
(assert (not (= var775 null-var890)))
(declare-const var3009 String) ; Statement: r12 := @parameter0: java.lang.String 
(assert (not (= var3009 null-String)))
(declare-const var2724 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2724 null-String)))
(declare-const var1606 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var1606 null-String)))
(assert (and true (and (> (str.len var3009) 0) (<= 0 0))))
(define-const var2728 Int (charAt/698050440 var3009 0)) ; Statement: $c0 = virtualinvoke r12.<java.lang.String: char charAt(int)>(0) 
(define-const var2136 Int (cast-from-Int-to-Int var2728)) ; Statement: $i3 = (int) $c0 
 ; Statement: if $i3 == 47 goto $r11 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (= var2136 47)) ; Cond: $i3 == 47 
(assert true)
(define-const var3540 (Array Int String) (split/-636890950 var2724 ",")) ; Statement: $r11 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var2724 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var2426 var3537 var3537-init) ; Statement: $r14 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2426)) ; Statement: specialinvoke $r14.<java.util.ArrayList: void <init>()>() 

(declare-const var2426!1 var3537)
(define-const var141 Int (getLength-Arr-String-1 var3540)) ; Statement: $i1 = lengthof $r11 
(define-const var2360 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= $i1 goto $r16 = new org.antlr.runtime.CommonToken 
(assert (>= var2360 var141)) ; Cond: i2 >= $i1 
(define-const var2849 var1044 var1044-init) ; Statement: $r16 = new org.antlr.runtime.CommonToken 
(assert true)
;(assert (<init>/1754656984 var2849 9 var3009)) ; Statement: specialinvoke $r16.<org.antlr.runtime.CommonToken: void <init>(int,java.lang.String)>(9, r12) 

(declare-const var2849!1 var1044)
(declare-const var2844 Int)
(declare-const var3009!1 String)
(define-const var674 var947 (cast-from-var1044-to-var947 var2849!1)) ; Statement: $r17 = (org.antlr.runtime.Token) $r16 
(assert true)
(define-const var2077 var3634 (defineTemplate/-470534363 var775 var3009!1 var674 (cast-from-var3537-to-var3695 var2426!1) var1606 null-var947)) ; Statement: $r5 = virtualinvoke r2.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.compiler.CompiledST defineTemplate(java.lang.String,org.antlr.runtime.Token,java.util.List,java.lang.String,org.antlr.runtime.Token)>(r12, $r17, $r14, r4, null) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), var3537-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), getLength-Arr-String-1=([java.lang.String[]], int), var1044-init=([], org.antlr.runtime.CommonToken), <init>/1754656984=([org.antlr.runtime.CommonToken, int, java.lang.String], void), cast-from-var1044-to-var947=([org.antlr.runtime.CommonToken], org.antlr.runtime.Token), defineTemplate/-470534363=([org.stringtemplate.v4.STGroup, java.lang.String, org.antlr.runtime.Token, java.util.List, java.lang.String, org.antlr.runtime.Token], org.stringtemplate.v4.compiler.CompiledST), cast-from-var3537-to-var3695=([java.util.ArrayList], java.util.List)}
; {var890=org.stringtemplate.v4.STGroup, var775=r2, var3009=r12, var1310=null_type, var2724=r0, var1606=r4, var2728=$c0, var2136=$i3, var3540=$r11, var3537=java.util.ArrayList, var2426=$r14, var141=$i1, var2360=i2, var1044=org.antlr.runtime.CommonToken, var2849=$r16, var2844=9, var947=org.antlr.runtime.Token, var674=$r17, var3634=org.stringtemplate.v4.compiler.CompiledST, var3695=java.util.List, var2077=$r5}
; {org.stringtemplate.v4.STGroup=var890, r2=var775, r12=var3009, null_type=var1310, r0=var2724, r4=var1606, $c0=var2728, $i3=var2136, $r11=var3540, java.util.ArrayList=var3537, $r14=var2426, $i1=var141, i2=var2360, org.antlr.runtime.CommonToken=var1044, $r16=var2849, 9=var2844, org.antlr.runtime.Token=var947, $r17=var674, org.stringtemplate.v4.compiler.CompiledST=var3634, java.util.List=var3695, $r5=var2077}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r2 := @this: org.stringtemplate.v4.STGroup;	r12 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	$c0 = virtualinvoke r12.<java.lang.String: char charAt(int)>(0);	$i3 = (int) $c0;	if $i3 == 47 goto $r11 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	$r11 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	$r14 = new java.util.ArrayList;	specialinvoke $r14.<java.util.ArrayList: void <init>()>();	$i1 = lengthof $r11;	i2 = 0;	if i2 >= $i1 goto $r16 = new org.antlr.runtime.CommonToken;	$r16 = new org.antlr.runtime.CommonToken;	specialinvoke $r16.<org.antlr.runtime.CommonToken: void <init>(int,java.lang.String)>(9, r12);	$r17 = (org.antlr.runtime.Token) $r16;	$r5 = virtualinvoke r2.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.compiler.CompiledST defineTemplate(java.lang.String,org.antlr.runtime.Token,java.util.List,java.lang.String,org.antlr.runtime.Token)>(r12, $r17, $r14, r4, null);	return $r5
;block_num 4