(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3671 0)
(declare-sort var3772 0)
(declare-sort var2293 0)
(declare-sort var948 0)
(declare-sort var2209 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/618859390 (var3671) var2293)
(declare-fun checkMethodArgCount/-2126484030 (var948 var3772 Int) void)
(declare-fun cast-from-var2293-to-var948 (var2293) var948)
(declare-fun s/618859390 (var3671) String)
(declare-fun getStringMethodArg/-1432244773 (var948 var3772 Int) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var3671 var3671)
(declare-const null-var3772 var3772)
(declare-const var2209-TRUE var2209)
(declare-const var2756 var3671) ; Statement: r0 := @this: freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod 
(assert (not (= var2756 null-var3671)))
(declare-const var378 var3772) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var378 null-var3772)))
(define-const var2817 var2293 (this$0/618859390 var2756)) ; Statement: $r2 = r0.<freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ends_withBI this$0> 
(assert true)
;(assert (checkMethodArgCount/-2126484030 (cast-from-var2293-to-var948 var2817) var378 1)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$ends_withBI: void checkMethodArgCount(java.util.List,int)>(r1, 1) 

(declare-const var2817!1 var2293)
(declare-const var378!1 var3772)
(declare-const var2832 Int)
(define-const var2694 String (s/618859390 var2756)) ; Statement: $r4 = r0.<freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod: java.lang.String s> 
(define-const var2842 var2293 (this$0/618859390 var2756)) ; Statement: $r3 = r0.<freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ends_withBI this$0> 
(assert true)
(define-const var584 String (getStringMethodArg/-1432244773 (cast-from-var2293-to-var948 var2842) var378!1 0)) ; Statement: $r5 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$ends_withBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0) 
(assert true)
(define-const var2101 Bool (endsWith/985337093 var2694 var584)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean endsWith(java.lang.String)>($r5) 
 ; Statement: if $z0 == 0 goto $r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE> 
(assert (not (= (ite var2101 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1759 var2209 var2209-TRUE) ; Statement: $r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel TRUE> 
 ; Statement: goto [?= return $r6] 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/618859390=([freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod], freemarker.core.BuiltInsForStringsBasic$ends_withBI), checkMethodArgCount/-2126484030=([freemarker.core.BuiltIn, java.util.List, int], void), cast-from-var2293-to-var948=([freemarker.core.BuiltInsForStringsBasic$ends_withBI], freemarker.core.BuiltIn), s/618859390=([freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod], java.lang.String), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var3671=freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod, var2756=r0, var3772=java.util.List, var378=r1, var2293=freemarker.core.BuiltInsForStringsBasic$ends_withBI, var2817=$r2, var948=freemarker.core.BuiltIn, var2832=1, var2694=$r4, var2842=$r3, var584=$r5, var2101=$z0, var2209=freemarker.template.TemplateBooleanModel, var1759=$r6}
; {freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod=var3671, r0=var2756, java.util.List=var3772, r1=var378, freemarker.core.BuiltInsForStringsBasic$ends_withBI=var2293, $r2=var2817, freemarker.core.BuiltIn=var948, 1=var2832, $r4=var2694, $r3=var2842, $r5=var584, $z0=var2101, freemarker.template.TemplateBooleanModel=var2209, $r6=var1759}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod;	r1 := @parameter0: java.util.List;	$r2 = r0.<freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ends_withBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$ends_withBI: void checkMethodArgCount(java.util.List,int)>(r1, 1);	$r4 = r0.<freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod: java.lang.String s>;	$r3 = r0.<freemarker.core.BuiltInsForStringsBasic$ends_withBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$ends_withBI this$0>;	$r5 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$ends_withBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0);	$z0 = virtualinvoke $r4.<java.lang.String: boolean endsWith(java.lang.String)>($r5);	if $z0 == 0 goto $r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE>;	$r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel TRUE>;	goto [?= return $r6];	return $r6
;block_num 3