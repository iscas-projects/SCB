(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3399 0)
(declare-sort var346 0)
(declare-sort var1703 0)
(declare-sort var2263 0)
(declare-sort var2387 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-1068647424 (var3399) var1703)
(declare-fun checkMethodArgCount/-2126484030 (var2263 var346 Int) void)
(declare-fun cast-from-var1703-to-var2263 (var1703) var2263)
(declare-fun s/-1068647424 (var3399) String)
(declare-fun getStringMethodArg/-1432244773 (var2263 var346 Int) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3399 var3399)
(declare-const null-var346 var346)
(declare-const var2387-FALSE var2387)
(declare-const var486 var3399) ; Statement: r0 := @this: freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod 
(assert (not (= var486 null-var3399)))
(declare-const var3686 var346) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var3686 null-var346)))
(define-const var2605 var1703 (this$0/-1068647424 var486)) ; Statement: $r2 = r0.<freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$containsBI this$0> 
(assert true)
;(assert (checkMethodArgCount/-2126484030 (cast-from-var1703-to-var2263 var2605) var3686 1)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$containsBI: void checkMethodArgCount(java.util.List,int)>(r1, 1) 

(declare-const var2605!1 var1703)
(declare-const var3686!1 var346)
(declare-const var3021 Int)
(define-const var1163 String (s/-1068647424 var486)) ; Statement: $r4 = r0.<freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod: java.lang.String s> 
(define-const var1146 var1703 (this$0/-1068647424 var486)) ; Statement: $r3 = r0.<freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$containsBI this$0> 
(assert true)
(define-const var3411 String (getStringMethodArg/-1432244773 (cast-from-var1703-to-var2263 var1146) var3686!1 0)) ; Statement: $r5 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$containsBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0) 
(assert true)
(define-const var2881 Int (indexOf/-1209756239 var1163 var3411)) ; Statement: $i0 = virtualinvoke $r4.<java.lang.String: int indexOf(java.lang.String)>($r5) 
(define-const var1632 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 == $i2 goto $r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE> 
(assert (= var2881 var1632)) ; Cond: $i0 == $i2 
(define-const var3320 var2387 var2387-FALSE) ; Statement: $r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE> 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-1068647424=([freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod], freemarker.core.BuiltInsForStringsBasic$containsBI), checkMethodArgCount/-2126484030=([freemarker.core.BuiltIn, java.util.List, int], void), cast-from-var1703-to-var2263=([freemarker.core.BuiltInsForStringsBasic$containsBI], freemarker.core.BuiltIn), s/-1068647424=([freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod], java.lang.String), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var3399=freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod, var486=r0, var346=java.util.List, var3686=r1, var1703=freemarker.core.BuiltInsForStringsBasic$containsBI, var2605=$r2, var2263=freemarker.core.BuiltIn, var3021=1, var1163=$r4, var1146=$r3, var3411=$r5, var2881=$i0, var1632=$i2, var2387=freemarker.template.TemplateBooleanModel, var3320=$r6}
; {freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod=var3399, r0=var486, java.util.List=var346, r1=var3686, freemarker.core.BuiltInsForStringsBasic$containsBI=var1703, $r2=var2605, freemarker.core.BuiltIn=var2263, 1=var3021, $r4=var1163, $r3=var1146, $r5=var3411, $i0=var2881, $i2=var1632, freemarker.template.TemplateBooleanModel=var2387, $r6=var3320}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r0 := @this: freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod;	r1 := @parameter0: java.util.List;	$r2 = r0.<freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$containsBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$containsBI: void checkMethodArgCount(java.util.List,int)>(r1, 1);	$r4 = r0.<freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod: java.lang.String s>;	$r3 = r0.<freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$containsBI this$0>;	$r5 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$containsBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0);	$i0 = virtualinvoke $r4.<java.lang.String: int indexOf(java.lang.String)>($r5);	$i2 = (int) -1;	if $i0 == $i2 goto $r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE>;	$r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE>;	return $r6
;block_num 3