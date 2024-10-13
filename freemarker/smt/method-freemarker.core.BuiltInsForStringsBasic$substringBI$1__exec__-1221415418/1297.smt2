(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3271 0)
(declare-sort var2864 0)
(declare-sort var2820 0)
(declare-sort var3782 0)
(declare-sort var3025 0)
(declare-sort var1819 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2864_size/-959786421 (var2864) Int)
(declare-fun this$0/1365806111 (var3271) var2820)
(declare-fun checkMethodArgCount/509013054 (var3782 Int Int Int) void)
(declare-fun cast-from-var2820-to-var3782 (var2820) var3782)
(declare-fun getNumberMethodArg/-163734965 (var3782 var2864 Int) var3025)
(declare-fun intValue/207705611 (var3025) Int)
(declare-fun val$s/1365806111 (var3271) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun newIndexLessThan0Exception/1332940341 (var3271 Int Int) var1819)
(declare-const null-var3271 var3271)
(declare-const null-var2864 var2864)
(declare-const var2147 var3271) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$substringBI$1 
(assert (not (= var2147 null-var3271)))
(declare-const var505 var2864) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var505 null-var2864)))
(define-const var1206 Int (var2864_size/-959786421 var505)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var2481 var2820 (this$0/1365806111 var2147)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$substringBI$1: freemarker.core.BuiltInsForStringsBasic$substringBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var2820-to-var3782 var2481) var1206 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$substringBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var2481!1 var2820)
(declare-const var1206!1 Int)
(declare-const var2044 Int)
(declare-const var3169 Int)
(define-const var1007 var2820 (this$0/1365806111 var2147)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$substringBI$1: freemarker.core.BuiltInsForStringsBasic$substringBI this$0> 
(assert true)
(define-const var2647 var3025 (getNumberMethodArg/-163734965 (cast-from-var2820-to-var3782 var1007) var505 0)) ; Statement: $r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$substringBI: java.lang.Number getNumberMethodArg(java.util.List,int)>(r0, 0) 
(assert true)
(define-const var3238 Int (intValue/207705611 var2647)) ; Statement: i1 = virtualinvoke $r4.<java.lang.Number: int intValue()>() 
(define-const var1963 String (val$s/1365806111 var2147)) ; Statement: $r5 = r1.<freemarker.core.BuiltInsForStringsBasic$substringBI$1: java.lang.String val$s> 
(assert true)
(define-const var563 Int (length/-134980193 var1963)) ; Statement: i2 = virtualinvoke $r5.<java.lang.String: int length()>() 
 ; Statement: if i1 >= 0 goto (branch) 
(assert (not (>= var3238 0))) ; Negate: Cond: i1 >= 0  
(assert true)
(define-const var576 var1819 (newIndexLessThan0Exception/1332940341 var2147 0 var3238)) ; Statement: $r27 = specialinvoke r1.<freemarker.core.BuiltInsForStringsBasic$substringBI$1: freemarker.template.TemplateModelException newIndexLessThan0Exception(int,int)>(0, i1) 
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {var2864_size/-959786421=([java.util.List], int), this$0/1365806111=([freemarker.core.BuiltInsForStringsBasic$substringBI$1], freemarker.core.BuiltInsForStringsBasic$substringBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var2820-to-var3782=([freemarker.core.BuiltInsForStringsBasic$substringBI], freemarker.core.BuiltIn), getNumberMethodArg/-163734965=([freemarker.core.BuiltIn, java.util.List, int], java.lang.Number), intValue/207705611=([java.lang.Number], int), val$s/1365806111=([freemarker.core.BuiltInsForStringsBasic$substringBI$1], java.lang.String), length/-134980193=([java.lang.String], int), newIndexLessThan0Exception/1332940341=([freemarker.core.BuiltInsForStringsBasic$substringBI$1, int, int], freemarker.template.TemplateModelException)}
; {var3271=freemarker.core.BuiltInsForStringsBasic$substringBI$1, var2147=r1, var2864=java.util.List, var505=r0, var1206=i0, var2820=freemarker.core.BuiltInsForStringsBasic$substringBI, var2481=$r2, var3782=freemarker.core.BuiltIn, var2044=1, var3169=2, var1007=$r3, var3025=java.lang.Number, var2647=$r4, var3238=i1, var1963=$r5, var563=i2, var1819=freemarker.template.TemplateModelException, var576=$r27}
; {freemarker.core.BuiltInsForStringsBasic$substringBI$1=var3271, r1=var2147, java.util.List=var2864, r0=var505, i0=var1206, freemarker.core.BuiltInsForStringsBasic$substringBI=var2820, $r2=var2481, freemarker.core.BuiltIn=var3782, 1=var2044, 2=var3169, $r3=var1007, java.lang.Number=var3025, $r4=var2647, i1=var3238, $r5=var1963, i2=var563, freemarker.template.TemplateModelException=var1819, $r27=var576}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$substringBI$1;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$substringBI$1: freemarker.core.BuiltInsForStringsBasic$substringBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$substringBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$substringBI$1: freemarker.core.BuiltInsForStringsBasic$substringBI this$0>;	$r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$substringBI: java.lang.Number getNumberMethodArg(java.util.List,int)>(r0, 0);	i1 = virtualinvoke $r4.<java.lang.Number: int intValue()>();	$r5 = r1.<freemarker.core.BuiltInsForStringsBasic$substringBI$1: java.lang.String val$s>;	i2 = virtualinvoke $r5.<java.lang.String: int length()>();	if i1 >= 0 goto (branch);	$r27 = specialinvoke r1.<freemarker.core.BuiltInsForStringsBasic$substringBI$1: freemarker.template.TemplateModelException newIndexLessThan0Exception(int,int)>(0, i1);	throw $r27
;block_num 2