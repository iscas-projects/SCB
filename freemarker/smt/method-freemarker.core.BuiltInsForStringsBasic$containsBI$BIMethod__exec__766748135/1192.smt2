(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2312 0)
(declare-sort var3382 0)
(declare-sort var343 0)
(declare-sort var3014 0)
(declare-sort var3043 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-1068647424 (var2312) var343)
(declare-fun checkMethodArgCount/-2126484030 (var3014 var3382 Int) void)
(declare-fun cast-from-var343-to-var3014 (var343) var3014)
(declare-fun s/-1068647424 (var2312) String)
(declare-fun getStringMethodArg/-1432244773 (var3014 var3382 Int) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2312 var2312)
(declare-const null-var3382 var3382)
(declare-const var3043-TRUE var3043)
(declare-const var2808 var2312) ; Statement: r0 := @this: freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod 
(assert (not (= var2808 null-var2312)))
(declare-const var3399 var3382) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var3399 null-var3382)))
(define-const var41 var343 (this$0/-1068647424 var2808)) ; Statement: $r2 = r0.<freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$containsBI this$0> 
(assert true)
;(assert (checkMethodArgCount/-2126484030 (cast-from-var343-to-var3014 var41) var3399 1)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$containsBI: void checkMethodArgCount(java.util.List,int)>(r1, 1) 

(declare-const var41!1 var343)
(declare-const var3399!1 var3382)
(declare-const var3195 Int)
(define-const var1913 String (s/-1068647424 var2808)) ; Statement: $r4 = r0.<freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod: java.lang.String s> 
(define-const var3552 var343 (this$0/-1068647424 var2808)) ; Statement: $r3 = r0.<freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$containsBI this$0> 
(assert true)
(define-const var1159 String (getStringMethodArg/-1432244773 (cast-from-var343-to-var3014 var3552) var3399!1 0)) ; Statement: $r5 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$containsBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0) 
(assert true)
(define-const var3145 Int (indexOf/-1209756239 var1913 var1159)) ; Statement: $i0 = virtualinvoke $r4.<java.lang.String: int indexOf(java.lang.String)>($r5) 
(define-const var2945 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 == $i2 goto $r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE> 
(assert (not (= var3145 var2945))) ; Negate: Cond: $i0 == $i2  
(define-const var301 var3043 var3043-TRUE) ; Statement: $r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel TRUE> 
 ; Statement: goto [?= return $r6] 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-1068647424=([freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod], freemarker.core.BuiltInsForStringsBasic$containsBI), checkMethodArgCount/-2126484030=([freemarker.core.BuiltIn, java.util.List, int], void), cast-from-var343-to-var3014=([freemarker.core.BuiltInsForStringsBasic$containsBI], freemarker.core.BuiltIn), s/-1068647424=([freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod], java.lang.String), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var2312=freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod, var2808=r0, var3382=java.util.List, var3399=r1, var343=freemarker.core.BuiltInsForStringsBasic$containsBI, var41=$r2, var3014=freemarker.core.BuiltIn, var3195=1, var1913=$r4, var3552=$r3, var1159=$r5, var3145=$i0, var2945=$i2, var3043=freemarker.template.TemplateBooleanModel, var301=$r6}
; {freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod=var2312, r0=var2808, java.util.List=var3382, r1=var3399, freemarker.core.BuiltInsForStringsBasic$containsBI=var343, $r2=var41, freemarker.core.BuiltIn=var3014, 1=var3195, $r4=var1913, $r3=var3552, $r5=var1159, $i0=var3145, $i2=var2945, freemarker.template.TemplateBooleanModel=var3043, $r6=var301}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r0 := @this: freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod;	r1 := @parameter0: java.util.List;	$r2 = r0.<freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$containsBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$containsBI: void checkMethodArgCount(java.util.List,int)>(r1, 1);	$r4 = r0.<freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod: java.lang.String s>;	$r3 = r0.<freemarker.core.BuiltInsForStringsBasic$containsBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$containsBI this$0>;	$r5 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$containsBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0);	$i0 = virtualinvoke $r4.<java.lang.String: int indexOf(java.lang.String)>($r5);	$i2 = (int) -1;	if $i0 == $i2 goto $r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE>;	$r6 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel TRUE>;	goto [?= return $r6];	return $r6
;block_num 3