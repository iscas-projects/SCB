(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3157 0)
(declare-sort var53 0)
(declare-sort var408 0)
(declare-sort var1473 0)
(declare-sort var2858 0)
(declare-sort var723 0)
(declare-sort var857 0)
(declare-sort var685 0)
(declare-sort var943 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var53_size/-959786421 (var53) Int)
(declare-fun this$0/1263517016 (var3157) var408)
(declare-fun checkMethodArgCount/509013054 (var1473 Int Int Int) void)
(declare-fun cast-from-var408-to-var1473 (var408) var1473)
(declare-fun getNumberMethodArg/-163734965 (var1473 var53 Int) var2858)
(declare-fun intValue/207705611 (var2858) Int)
(declare-fun getStringMethodArg/-1432244773 (var1473 var53 Int) String)
(declare-fun var723-init () var723)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var685-init () var685)
(declare-fun arr-var943-init () (Array Int var943))
(declare-fun cast-from-String-to-var943 (String) var943)
(declare-fun key/-489369572 (var1473) String)
(declare-fun <init>/1710452854 (var685 (Array Int var943)) void)
(declare-const null-var3157 var3157)
(declare-const null-var53 var53)
(declare-const null-var857 var857)
(declare-const null-__Array__Int__var943__ (Array Int var943))
(declare-const var739 var3157) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod 
(assert (not (= var739 null-var3157)))
(declare-const var229 var53) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var229 null-var53)))
(define-const var2565 Int (var53_size/-959786421 var229)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var2527 var408 (this$0/1263517016 var739)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var408-to-var1473 var2527) var2565 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$padBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var2527!1 var408)
(declare-const var2565!1 Int)
(declare-const var3216 Int)
(declare-const var1130 Int)
(define-const var9 var408 (this$0/1263517016 var739)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0> 
(assert true)
(define-const var2787 var2858 (getNumberMethodArg/-163734965 (cast-from-var408-to-var1473 var9) var229 0)) ; Statement: $r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$padBI: java.lang.Number getNumberMethodArg(java.util.List,int)>(r0, 0) 
(assert true)
(define-const var2353 Int (intValue/207705611 var2787)) ; Statement: i1 = virtualinvoke $r4.<java.lang.Number: int intValue()>() 
 ; Statement: if i0 <= 1 goto $r5 = new freemarker.template.SimpleScalar 
(assert (not (<= var2565!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var2983 var408 (this$0/1263517016 var739)) ; Statement: $r9 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0> 
(assert true)
(define-const var1862 String (getStringMethodArg/-1432244773 (cast-from-var408-to-var1473 var2983) var229 1)) ; Statement: r10 = virtualinvoke $r9.<freemarker.core.BuiltInsForStringsBasic$padBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1) 
(define-const var3555 var723 var723-init) ; Statement: $r11 = new freemarker.template.SimpleScalar 
(define-const var1996 var408 (this$0/1263517016 var739)) ; Statement: $r12 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1543 var857) ; Statement: $r15 := @caughtexception 
(assert (not (= var1543 null-var857)))
(assert true)
(define-const var1256 Int (length/-134980193 var1862)) ; Statement: $i2 = virtualinvoke r10.<java.lang.String: int length()>() 
 ; Statement: if $i2 != 0 goto $r16 = new freemarker.core._TemplateModelException 
(assert (not (not (= var1256 0)))) ; Negate: Cond: $i2 != 0  
(define-const var253 var685 var685-init) ; Statement: $r20 = new freemarker.core._TemplateModelException 
(define-const var1252 (Array Int var943) arr-var943-init) ; Statement: $r21 = newarray (java.lang.Object)[3] 
(declare-const var1252!1 (Array Int var943))
(assert (not (= var1252!1 null-__Array__Int__var943__)))
(assert (= (select var1252!1 0) (cast-from-String-to-var943 "?"))) ; Statement: $r21[0] = "?" 
(define-const var2857 var408 (this$0/1263517016 var739)) ; Statement: $r22 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0> 
(define-const var3288 String (key/-489369572 (cast-from-var408-to-var1473 var2857))) ; Statement: $r23 = $r22.<freemarker.core.BuiltInsForStringsBasic$padBI: java.lang.String key> 
(declare-const var1252!2 (Array Int var943))
(assert (not (= var1252!2 null-__Array__Int__var943__)))
(assert (= (select var1252!2 1) (cast-from-String-to-var943 var3288))) ; Statement: $r21[1] = $r23 
(declare-const var1252!3 (Array Int var943))
(assert (not (= var1252!3 null-__Array__Int__var943__)))
(assert (= (select var1252!3 2) (cast-from-String-to-var943 "(...) argument #2 can\u0027t be a 0-length string."))) ; Statement: $r21[2] = "(...) argument #2 can\'t be a 0-length string." 
(assert true)
;(assert (<init>/1710452854 var253 var1252!3)) ; Statement: specialinvoke $r20.<freemarker.core._TemplateModelException: void <init>(java.lang.Object[])>($r21) 

(declare-const var253!1 var685)
(declare-const var1252!4 (Array Int var943))
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var53_size/-959786421=([java.util.List], int), this$0/1263517016=([freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod], freemarker.core.BuiltInsForStringsBasic$padBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var408-to-var1473=([freemarker.core.BuiltInsForStringsBasic$padBI], freemarker.core.BuiltIn), getNumberMethodArg/-163734965=([freemarker.core.BuiltIn, java.util.List, int], java.lang.Number), intValue/207705611=([java.lang.Number], int), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var723-init=([], freemarker.template.SimpleScalar), length/-134980193=([java.lang.String], int), var685-init=([], freemarker.core._TemplateModelException), arr-var943-init=([], java.lang.Object[]), cast-from-String-to-var943=([java.lang.String], java.lang.Object), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), <init>/1710452854=([freemarker.core._TemplateModelException, java.lang.Object[]], void)}
; {var3157=freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod, var739=r1, var53=java.util.List, var229=r0, var2565=i0, var408=freemarker.core.BuiltInsForStringsBasic$padBI, var2527=$r2, var1473=freemarker.core.BuiltIn, var3216=1, var1130=2, var9=$r3, var2858=java.lang.Number, var2787=$r4, var2353=i1, var2983=$r9, var1862=r10, var723=freemarker.template.SimpleScalar, var3555=$r11, var1996=$r12, var857=java.lang.IllegalArgumentException, var1543=$r15, var1256=$i2, var685=freemarker.core._TemplateModelException, var253=$r20, var943=java.lang.Object, var1252=$r21, var2857=$r22, var3288=$r23}
; {freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod=var3157, r1=var739, java.util.List=var53, r0=var229, i0=var2565, freemarker.core.BuiltInsForStringsBasic$padBI=var408, $r2=var2527, freemarker.core.BuiltIn=var1473, 1=var3216, 2=var1130, $r3=var9, java.lang.Number=var2858, $r4=var2787, i1=var2353, $r9=var2983, r10=var1862, freemarker.template.SimpleScalar=var723, $r11=var3555, $r12=var1996, java.lang.IllegalArgumentException=var857, $r15=var1543, $i2=var1256, freemarker.core._TemplateModelException=var685, $r20=var253, java.lang.Object=var943, $r21=var1252, $r22=var2857, $r23=var3288}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$padBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0>;	$r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$padBI: java.lang.Number getNumberMethodArg(java.util.List,int)>(r0, 0);	i1 = virtualinvoke $r4.<java.lang.Number: int intValue()>();	if i0 <= 1 goto $r5 = new freemarker.template.SimpleScalar;	$r9 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0>;	r10 = virtualinvoke $r9.<freemarker.core.BuiltInsForStringsBasic$padBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1);	$r11 = new freemarker.template.SimpleScalar;	$r12 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0>;	$r15 := @caughtexception;	$i2 = virtualinvoke r10.<java.lang.String: int length()>();	if $i2 != 0 goto $r16 = new freemarker.core._TemplateModelException;	$r20 = new freemarker.core._TemplateModelException;	$r21 = newarray (java.lang.Object)[3];	$r21[0] = "?";	$r22 = r1.<freemarker.core.BuiltInsForStringsBasic$padBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$padBI this$0>;	$r23 = $r22.<freemarker.core.BuiltInsForStringsBasic$padBI: java.lang.String key>;	$r21[1] = $r23;	$r21[2] = "(...) argument #2 can\'t be a 0-length string.";	specialinvoke $r20.<freemarker.core._TemplateModelException: void <init>(java.lang.Object[])>($r21);	throw $r20
;block_num 4