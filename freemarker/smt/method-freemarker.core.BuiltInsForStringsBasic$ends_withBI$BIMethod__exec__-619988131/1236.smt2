(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2497 0)
(declare-sort var2501 0)
(declare-sort var195 0)
(declare-sort var2320 0)
(declare-sort var3249 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/618859390 (var2497) var195)
(declare-fun checkMethodArgCount/-2126484030 (var2320 var2501 Int) void)
(declare-fun cast-from-var195-to-var2320 (var195) var2320)
(declare-fun s/618859390 (var2497) String)
(declare-fun getStringMethodArg/-1432244773 (var2320 var2501 Int) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var2497 var2497)
(declare-const null-var2501 var2501)
(declare-const var3249-FALSE var3249)
(declare-const var229 var2497) ; Statement: r0 := @this: freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod 
(assert (not (= var229 null-var2497)))
(declare-const var1361 var2501) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var1361 null-var2501)))
(define-const var2807 var195 (this$0/618859390 var229)) ; Statement: $r2 = r0.<freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ends_withBI this$0> 
(assert true)
;(assert (checkMethodArgCount/-2126484030 (cast-from-var195-to-var2320 var2807) var1361 1)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$ends_withBI: void checkMethodArgCount(java.util.List,int)>(r1, 1) 

(declare-const var2807!1 var195)
(declare-const var1361!1 var2501)
(declare-const var3176 Int)
(define-const var2105 String (s/618859390 var229)) ; Statement: $r4 = r0.<freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod: java.lang.String s> 
(define-const var3747 var195 (this$0/618859390 var229)) ; Statement: $r3 = r0.<freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ends_withBI this$0> 
(assert true)
(define-const var3404 String (getStringMethodArg/-1432244773 (cast-from-var195-to-var2320 var3747) var1361!1 0)) ; Statement: $r5 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$ends_withBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0) 
(assert true)
(define-const var152 Bool (endsWith/985337093 var2105 var3404)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean endsWith(java.lang.String)>($r5) 
 ; Statement: if $z0 == 0 goto $r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE> 
(assert (= (ite var152 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1917 var3249 var3249-FALSE) ; Statement: $r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE> 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/618859390=([freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod], freemarker.core.BuiltInsForStringsBasic$ends_withBI), checkMethodArgCount/-2126484030=([freemarker.core.BuiltIn, java.util.List, int], void), cast-from-var195-to-var2320=([freemarker.core.BuiltInsForStringsBasic$ends_withBI], freemarker.core.BuiltIn), s/618859390=([freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod], java.lang.String), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var2497=freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod, var229=r0, var2501=java.util.List, var1361=r1, var195=freemarker.core.BuiltInsForStringsBasic$ends_withBI, var2807=$r2, var2320=freemarker.core.BuiltIn, var3176=1, var2105=$r4, var3747=$r3, var3404=$r5, var152=$z0, var3249=freemarker.template.TemplateBooleanModel, var1917=$r6}
; {freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod=var2497, r0=var229, java.util.List=var2501, r1=var1361, freemarker.core.BuiltInsForStringsBasic$ends_withBI=var195, $r2=var2807, freemarker.core.BuiltIn=var2320, 1=var3176, $r4=var2105, $r3=var3747, $r5=var3404, $z0=var152, freemarker.template.TemplateBooleanModel=var3249, $r6=var1917}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod;	r1 := @parameter0: java.util.List;	$r2 = r0.<freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ends_withBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$ends_withBI: void checkMethodArgCount(java.util.List,int)>(r1, 1);	$r4 = r0.<freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod: java.lang.String s>;	$r3 = r0.<freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ends_withBI this$0>;	$r5 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$ends_withBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0);	$z0 = virtualinvoke $r4.<java.lang.String: boolean endsWith(java.lang.String)>($r5);	if $z0 == 0 goto $r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE>;	$r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE>;	return $r6
;block_num 3