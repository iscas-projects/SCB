(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3831 0)
(declare-sort var3066 0)
(declare-sort var1031 0)
(declare-sort var638 0)
(declare-sort var1641 0)
(declare-sort var1492 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun this$0/1365806111 (var3831) var3066)
(declare-fun key/-489369572 (var1031) String)
(declare-fun cast-from-var3066-to-var1031 (var3066) var1031)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-var638-init () (Array Int var638))
(declare-fun cast-from-String-to-var638 (String) var638)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var638 (Int) var638)
(declare-fun var1492_newMethodArgInvalidValueException/695841541 (String Int (Array Int var638)) var1641)
(declare-const null-var3831 var3831)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var638__ (Array Int var638))
(declare-const var3104 var3831) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$substringBI$1 
(assert (not (= var3104 null-var3831)))
(declare-const var1957 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1957 null-Int)))
(declare-const var2818 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2818 null-Int)))
(define-const var2926 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2926)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2926!1 String)
(assert (= var2926!1 ""))
(assert true)
(define-const var3131 String (append/672562846 var2926!1 "?")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?") 
(declare-const var2926!2 String)
(assert (= var2926!2 (str.++ var2926!1 "?")))
(define-const var2137 var3066 (this$0/1365806111 var3104)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$substringBI$1: freemarker.core.BuiltInsForStringsBasic$substringBI this$0> 
(define-const var2717 String (key/-489369572 (cast-from-var3066-to-var1031 var2137))) ; Statement: $r3 = $r2.<freemarker.core.BuiltInsForStringsBasic$substringBI: java.lang.String key> 
(assert true)
(define-const var1429 String (append/672562846 var3131 var2717)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3131!1 String)
(assert (= var3131!1 (str.++ var3131 var2717)))
(assert true)
(define-const var3376 String (toString/-2075883882 var1429)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1465 (Array Int var638) arr-var638-init) ; Statement: $r6 = newarray (java.lang.Object)[3] 
(declare-const var1465!1 (Array Int var638))
(assert (not (= var1465!1 null-__Array__Int__var638__)))
(assert (= (select var1465!1 0) (cast-from-String-to-var638 "The index must be at least 0, but was "))) ; Statement: $r6[0] = "The index must be at least 0, but was " 
(define-const var2635 Int (Int_valueOf/-1371140006 var2818)) ; Statement: $r7 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
(declare-const var1465!2 (Array Int var638))
(assert (not (= var1465!2 null-__Array__Int__var638__)))
(assert (= (select var1465!2 1) (cast-from-Int-to-var638 var2635))) ; Statement: $r6[1] = $r7 
(declare-const var1465!3 (Array Int var638))
(assert (not (= var1465!3 null-__Array__Int__var638__)))
(assert (= (select var1465!3 2) (cast-from-String-to-var638 "."))) ; Statement: $r6[2] = "." 
(define-const var103 var1641 (var1492_newMethodArgInvalidValueException/695841541 var3376 var1957 var1465!3)) ; Statement: $r9 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newMethodArgInvalidValueException(java.lang.String,int,java.lang.Object[])>($r8, i0, $r6) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), this$0/1365806111=([freemarker.core.BuiltInsForStringsBasic$substringBI$1], freemarker.core.BuiltInsForStringsBasic$substringBI), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), cast-from-var3066-to-var1031=([freemarker.core.BuiltInsForStringsBasic$substringBI], freemarker.core.BuiltIn), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-var638-init=([], java.lang.Object[]), cast-from-String-to-var638=([java.lang.String], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var638=([java.lang.Integer], java.lang.Object), var1492_newMethodArgInvalidValueException/695841541=([java.lang.String, int, java.lang.Object[]], freemarker.template.TemplateModelException)}
; {var3831=freemarker.core.BuiltInsForStringsBasic$substringBI$1, var3104=r1, var1957=i0, var2818=i1, var2926=$r0, var3131=$r4, var3066=freemarker.core.BuiltInsForStringsBasic$substringBI, var2137=$r2, var1031=freemarker.core.BuiltIn, var2717=$r3, var1429=$r5, var3376=$r8, var638=java.lang.Object, var1465=$r6, var2635=$r7, var1641=freemarker.template.TemplateModelException, var1492=freemarker.core._MessageUtil, var103=$r9}
; {freemarker.core.BuiltInsForStringsBasic$substringBI$1=var3831, r1=var3104, i0=var1957, i1=var2818, $r0=var2926, $r4=var3131, freemarker.core.BuiltInsForStringsBasic$substringBI=var3066, $r2=var2137, freemarker.core.BuiltIn=var1031, $r3=var2717, $r5=var1429, $r8=var3376, java.lang.Object=var638, $r6=var1465, $r7=var2635, freemarker.template.TemplateModelException=var1641, freemarker.core._MessageUtil=var1492, $r9=var103}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$substringBI$1;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?");	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$substringBI$1: freemarker.core.BuiltInsForStringsBasic$substringBI this$0>;	$r3 = $r2.<freemarker.core.BuiltInsForStringsBasic$substringBI: java.lang.String key>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = newarray (java.lang.Object)[3];	$r6[0] = "The index must be at least 0, but was ";	$r7 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	$r6[1] = $r7;	$r6[2] = ".";	$r9 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newMethodArgInvalidValueException(java.lang.String,int,java.lang.Object[])>($r8, i0, $r6);	return $r9
;block_num 1