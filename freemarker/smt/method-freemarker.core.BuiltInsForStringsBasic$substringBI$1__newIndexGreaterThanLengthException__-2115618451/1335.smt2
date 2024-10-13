(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1515 0)
(declare-sort var734 0)
(declare-sort var3029 0)
(declare-sort var2155 0)
(declare-sort var1449 0)
(declare-sort var662 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun this$0/1365806111 (var1515) var734)
(declare-fun key/-489369572 (var3029) String)
(declare-fun cast-from-var734-to-var3029 (var734) var3029)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-var2155-init () (Array Int var2155))
(declare-fun cast-from-String-to-var2155 (String) var2155)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2155 (Int) var2155)
(declare-fun var662_newMethodArgInvalidValueException/695841541 (String Int (Array Int var2155)) var1449)
(declare-const null-var1515 var1515)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2155__ (Array Int var2155))
(declare-const var2017 var1515) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$substringBI$1 
(assert (not (= var2017 null-var1515)))
(declare-const var1017 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1017 null-Int)))
(declare-const var347 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var347 null-Int)))
(declare-const var3785 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3785 null-Int)))
(define-const var80 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var80)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var80!1 String)
(assert (= var80!1 ""))
(assert true)
(define-const var3851 String (append/672562846 var80!1 "?")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?") 
(declare-const var80!2 String)
(assert (= var80!2 (str.++ var80!1 "?")))
(define-const var3817 var734 (this$0/1365806111 var2017)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$substringBI$1: freemarker.core.BuiltInsForStringsBasic$substringBI this$0> 
(define-const var191 String (key/-489369572 (cast-from-var734-to-var3029 var3817))) ; Statement: $r3 = $r2.<freemarker.core.BuiltInsForStringsBasic$substringBI: java.lang.String key> 
(assert true)
(define-const var2360 String (append/672562846 var3851 var191)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3851!1 String)
(assert (= var3851!1 (str.++ var3851 var191)))
(assert true)
(define-const var1628 String (toString/-2075883882 var2360)) ; Statement: $r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var896 (Array Int var2155) arr-var2155-init) ; Statement: $r6 = newarray (java.lang.Object)[5] 
(declare-const var896!1 (Array Int var2155))
(assert (not (= var896!1 null-__Array__Int__var2155__)))
(assert (= (select var896!1 0) (cast-from-String-to-var2155 "The index mustn\u0027t be greater than the length of the string, "))) ; Statement: $r6[0] = "The index mustn\'t be greater than the length of the string, " 
(define-const var3221 Int (Int_valueOf/-1371140006 var3785)) ; Statement: $r7 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
(declare-const var896!2 (Array Int var2155))
(assert (not (= var896!2 null-__Array__Int__var2155__)))
(assert (= (select var896!2 1) (cast-from-Int-to-var2155 var3221))) ; Statement: $r6[1] = $r7 
(declare-const var896!3 (Array Int var2155))
(assert (not (= var896!3 null-__Array__Int__var2155__)))
(assert (= (select var896!3 2) (cast-from-String-to-var2155 ", but it was "))) ; Statement: $r6[2] = ", but it was " 
(define-const var3818 Int (Int_valueOf/-1371140006 var347)) ; Statement: $r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i2) 
(declare-const var896!4 (Array Int var2155))
(assert (not (= var896!4 null-__Array__Int__var2155__)))
(assert (= (select var896!4 3) (cast-from-Int-to-var2155 var3818))) ; Statement: $r6[3] = $r8 
(declare-const var896!5 (Array Int var2155))
(assert (not (= var896!5 null-__Array__Int__var2155__)))
(assert (= (select var896!5 4) (cast-from-String-to-var2155 "."))) ; Statement: $r6[4] = "." 
(define-const var3494 var1449 (var662_newMethodArgInvalidValueException/695841541 var1628 var1017 var896!5)) ; Statement: $r10 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newMethodArgInvalidValueException(java.lang.String,int,java.lang.Object[])>($r9, i0, $r6) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), this$0/1365806111=([freemarker.core.BuiltInsForStringsBasic$substringBI$1], freemarker.core.BuiltInsForStringsBasic$substringBI), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), cast-from-var734-to-var3029=([freemarker.core.BuiltInsForStringsBasic$substringBI], freemarker.core.BuiltIn), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-var2155-init=([], java.lang.Object[]), cast-from-String-to-var2155=([java.lang.String], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2155=([java.lang.Integer], java.lang.Object), var662_newMethodArgInvalidValueException/695841541=([java.lang.String, int, java.lang.Object[]], freemarker.template.TemplateModelException)}
; {var1515=freemarker.core.BuiltInsForStringsBasic$substringBI$1, var2017=r1, var1017=i0, var347=i2, var3785=i1, var80=$r0, var3851=$r4, var734=freemarker.core.BuiltInsForStringsBasic$substringBI, var3817=$r2, var3029=freemarker.core.BuiltIn, var191=$r3, var2360=$r5, var1628=$r9, var2155=java.lang.Object, var896=$r6, var3221=$r7, var3818=$r8, var1449=freemarker.template.TemplateModelException, var662=freemarker.core._MessageUtil, var3494=$r10}
; {freemarker.core.BuiltInsForStringsBasic$substringBI$1=var1515, r1=var2017, i0=var1017, i2=var347, i1=var3785, $r0=var80, $r4=var3851, freemarker.core.BuiltInsForStringsBasic$substringBI=var734, $r2=var3817, freemarker.core.BuiltIn=var3029, $r3=var191, $r5=var2360, $r9=var1628, java.lang.Object=var2155, $r6=var896, $r7=var3221, $r8=var3818, freemarker.template.TemplateModelException=var1449, freemarker.core._MessageUtil=var662, $r10=var3494}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$substringBI$1;	i0 := @parameter0: int;	i2 := @parameter1: int;	i1 := @parameter2: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?");	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$substringBI$1: freemarker.core.BuiltInsForStringsBasic$substringBI this$0>;	$r3 = $r2.<freemarker.core.BuiltInsForStringsBasic$substringBI: java.lang.String key>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = newarray (java.lang.Object)[5];	$r6[0] = "The index mustn\'t be greater than the length of the string, ";	$r7 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	$r6[1] = $r7;	$r6[2] = ", but it was ";	$r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i2);	$r6[3] = $r8;	$r6[4] = ".";	$r10 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newMethodArgInvalidValueException(java.lang.String,int,java.lang.Object[])>($r9, i0, $r6);	return $r10
;block_num 1