(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3266 0)
(declare-sort var841 0)
(declare-sort var1251 0)
(declare-sort var1479 0)
(declare-sort var3519 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/1277601111 (var3266) var1251)
(declare-fun checkMethodArgCount/-2126484030 (var1479 var841 Int) void)
(declare-fun cast-from-var1251-to-var1479 (var1251) var1479)
(declare-fun s/1277601111 (var3266) String)
(declare-fun getStringMethodArg/-1432244773 (var1479 var841 Int) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3266 var3266)
(declare-const null-var841 var841)
(declare-const var3519-FALSE var3519)
(declare-const var542 var3266) ; Statement: r0 := @this: freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod 
(assert (not (= var542 null-var3266)))
(declare-const var2323 var841) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var2323 null-var841)))
(define-const var3697 var1251 (this$0/1277601111 var542)) ; Statement: $r2 = r0.<freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$starts_withBI this$0> 
(assert true)
;(assert (checkMethodArgCount/-2126484030 (cast-from-var1251-to-var1479 var3697) var2323 1)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$starts_withBI: void checkMethodArgCount(java.util.List,int)>(r1, 1) 

(declare-const var3697!1 var1251)
(declare-const var2323!1 var841)
(declare-const var3197 Int)
(define-const var2176 String (s/1277601111 var542)) ; Statement: $r4 = r0.<freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod: java.lang.String s> 
(define-const var3931 var1251 (this$0/1277601111 var542)) ; Statement: $r3 = r0.<freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$starts_withBI this$0> 
(assert true)
(define-const var1827 String (getStringMethodArg/-1432244773 (cast-from-var1251-to-var1479 var3931) var2323!1 0)) ; Statement: $r5 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$starts_withBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0) 
(assert true)
(define-const var1640 Bool (startsWith/-1785782452 var2176 var1827)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean startsWith(java.lang.String)>($r5) 
 ; Statement: if $z0 == 0 goto $r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE> 
(assert (= (ite var1640 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2340 var3519 var3519-FALSE) ; Statement: $r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE> 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/1277601111=([freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod], freemarker.core.BuiltInsForStringsBasic$starts_withBI), checkMethodArgCount/-2126484030=([freemarker.core.BuiltIn, java.util.List, int], void), cast-from-var1251-to-var1479=([freemarker.core.BuiltInsForStringsBasic$starts_withBI], freemarker.core.BuiltIn), s/1277601111=([freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod], java.lang.String), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3266=freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod, var542=r0, var841=java.util.List, var2323=r1, var1251=freemarker.core.BuiltInsForStringsBasic$starts_withBI, var3697=$r2, var1479=freemarker.core.BuiltIn, var3197=1, var2176=$r4, var3931=$r3, var1827=$r5, var1640=$z0, var3519=freemarker.template.TemplateBooleanModel, var2340=$r6}
; {freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod=var3266, r0=var542, java.util.List=var841, r1=var2323, freemarker.core.BuiltInsForStringsBasic$starts_withBI=var1251, $r2=var3697, freemarker.core.BuiltIn=var1479, 1=var3197, $r4=var2176, $r3=var3931, $r5=var1827, $z0=var1640, freemarker.template.TemplateBooleanModel=var3519, $r6=var2340}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod;	r1 := @parameter0: java.util.List;	$r2 = r0.<freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$starts_withBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$starts_withBI: void checkMethodArgCount(java.util.List,int)>(r1, 1);	$r4 = r0.<freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod: java.lang.String s>;	$r3 = r0.<freemarker.core.BuiltInsForStringsBasic$starts_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$starts_withBI this$0>;	$r5 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$starts_withBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0);	$z0 = virtualinvoke $r4.<java.lang.String: boolean startsWith(java.lang.String)>($r5);	if $z0 == 0 goto $r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE>;	$r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE>;	return $r6
;block_num 3