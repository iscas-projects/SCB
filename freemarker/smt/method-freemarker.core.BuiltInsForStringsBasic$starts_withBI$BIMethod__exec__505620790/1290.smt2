(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var94 0)
(declare-sort var1425 0)
(declare-sort var3207 0)
(declare-sort var1564 0)
(declare-sort var1471 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/1277601111 (var94) var3207)
(declare-fun checkMethodArgCount/-2126484030 (var1564 var1425 Int) void)
(declare-fun cast-from-var3207-to-var1564 (var3207) var1564)
(declare-fun s/1277601111 (var94) String)
(declare-fun getStringMethodArg/-1432244773 (var1564 var1425 Int) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var94 var94)
(declare-const null-var1425 var1425)
(declare-const var1471-TRUE var1471)
(declare-const var2669 var94) ; Statement: r0 := @this: freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod 
(assert (not (= var2669 null-var94)))
(declare-const var1805 var1425) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var1805 null-var1425)))
(define-const var36 var3207 (this$0/1277601111 var2669)) ; Statement: $r2 = r0.<freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$starts_withBI this$0> 
(assert true)
;(assert (checkMethodArgCount/-2126484030 (cast-from-var3207-to-var1564 var36) var1805 1)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$starts_withBI: void checkMethodArgCount(java.util.List,int)>(r1, 1) 

(declare-const var36!1 var3207)
(declare-const var1805!1 var1425)
(declare-const var1100 Int)
(define-const var2625 String (s/1277601111 var2669)) ; Statement: $r4 = r0.<freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod: java.lang.String s> 
(define-const var1705 var3207 (this$0/1277601111 var2669)) ; Statement: $r3 = r0.<freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$starts_withBI this$0> 
(assert true)
(define-const var3100 String (getStringMethodArg/-1432244773 (cast-from-var3207-to-var1564 var1705) var1805!1 0)) ; Statement: $r5 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$starts_withBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0) 
(assert true)
(define-const var33 Bool (startsWith/-1785782452 var2625 var3100)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean startsWith(java.lang.String)>($r5) 
 ; Statement: if $z0 == 0 goto $r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE> 
(assert (not (= (ite var33 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2817 var1471 var1471-TRUE) ; Statement: $r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel TRUE> 
 ; Statement: goto [?= return $r6] 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/1277601111=([freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod], freemarker.core.BuiltInsForStringsBasic$starts_withBI), checkMethodArgCount/-2126484030=([freemarker.core.BuiltIn, java.util.List, int], void), cast-from-var3207-to-var1564=([freemarker.core.BuiltInsForStringsBasic$starts_withBI], freemarker.core.BuiltIn), s/1277601111=([freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod], java.lang.String), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var94=freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod, var2669=r0, var1425=java.util.List, var1805=r1, var3207=freemarker.core.BuiltInsForStringsBasic$starts_withBI, var36=$r2, var1564=freemarker.core.BuiltIn, var1100=1, var2625=$r4, var1705=$r3, var3100=$r5, var33=$z0, var1471=freemarker.template.TemplateBooleanModel, var2817=$r6}
; {freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod=var94, r0=var2669, java.util.List=var1425, r1=var1805, freemarker.core.BuiltInsForStringsBasic$starts_withBI=var3207, $r2=var36, freemarker.core.BuiltIn=var1564, 1=var1100, $r4=var2625, $r3=var1705, $r5=var3100, $z0=var33, freemarker.template.TemplateBooleanModel=var1471, $r6=var2817}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod;	r1 := @parameter0: java.util.List;	$r2 = r0.<freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$starts_withBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$starts_withBI: void checkMethodArgCount(java.util.List,int)>(r1, 1);	$r4 = r0.<freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod: java.lang.String s>;	$r3 = r0.<freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$starts_withBI this$0>;	$r5 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$starts_withBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0);	$z0 = virtualinvoke $r4.<java.lang.String: boolean startsWith(java.lang.String)>($r5);	if $z0 == 0 goto $r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE>;	$r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel TRUE>;	goto [?= return $r6];	return $r6
;block_num 3