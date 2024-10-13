(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1305 0)
(declare-sort var784 0)
(declare-sort var3377 0)
(declare-sort var95 0)
(declare-sort var3792 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/1448437193 (var1305) var3377)
(declare-fun checkMethodArgCount/-2126484030 (var95 var784 Int) void)
(declare-fun cast-from-var3377-to-var95 (var3377) var95)
(declare-fun getStringMethodArg/-1432244773 (var95 var784 Int) String)
(declare-fun var3792-init () var3792)
(declare-fun s/1448437193 (var1305) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun <init>/378607920 (var3792 String) void)
(declare-const null-var1305 var1305)
(declare-const null-var784 var784)
(declare-const var1001 var1305) ; Statement: r0 := @this: freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod 
(assert (not (= var1001 null-var1305)))
(declare-const var2856 var784) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var2856 null-var784)))
(define-const var769 var3377 (this$0/1448437193 var1001)) ; Statement: $r2 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$remove_endingBI this$0> 
(assert true)
;(assert (checkMethodArgCount/-2126484030 (cast-from-var3377-to-var95 var769) var2856 1)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI: void checkMethodArgCount(java.util.List,int)>(r1, 1) 

(declare-const var769!1 var3377)
(declare-const var2856!1 var784)
(declare-const var3826 Int)
(define-const var124 var3377 (this$0/1448437193 var1001)) ; Statement: $r3 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$remove_endingBI this$0> 
(assert true)
(define-const var3441 String (getStringMethodArg/-1432244773 (cast-from-var3377-to-var95 var124) var2856!1 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0) 
(define-const var181 var3792 var3792-init) ; Statement: $r5 = new freemarker.template.SimpleScalar 
(define-const var1134 String (s/1448437193 var1001)) ; Statement: $r6 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod: java.lang.String s> 
(assert true)
(define-const var3951 Bool (endsWith/985337093 var1134 var3441)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean endsWith(java.lang.String)>(r4) 
 ; Statement: if $z0 == 0 goto $r9 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod: java.lang.String s> 
(assert (= (ite var3951 1 0) 0)) ; Cond: $z0 == 0 
(define-const var151 String (s/1448437193 var1001)) ; Statement: $r9 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod: java.lang.String s> 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/378607920 var181 var151)) ; Statement: specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var181!1 var3792)
(declare-const var151!1 String)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/1448437193=([freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod], freemarker.core.BuiltInsForStringsBasic$remove_endingBI), checkMethodArgCount/-2126484030=([freemarker.core.BuiltIn, java.util.List, int], void), cast-from-var3377-to-var95=([freemarker.core.BuiltInsForStringsBasic$remove_endingBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var3792-init=([], freemarker.template.SimpleScalar), s/1448437193=([freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var1305=freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod, var1001=r0, var784=java.util.List, var2856=r1, var3377=freemarker.core.BuiltInsForStringsBasic$remove_endingBI, var769=$r2, var95=freemarker.core.BuiltIn, var3826=1, var124=$r3, var3441=r4, var3792=freemarker.template.SimpleScalar, var181=$r5, var1134=$r6, var3951=$z0, var151=$r9}
; {freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod=var1305, r0=var1001, java.util.List=var784, r1=var2856, freemarker.core.BuiltInsForStringsBasic$remove_endingBI=var3377, $r2=var769, freemarker.core.BuiltIn=var95, 1=var3826, $r3=var124, r4=var3441, freemarker.template.SimpleScalar=var3792, $r5=var181, $r6=var1134, $z0=var3951, $r9=var151}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod;	r1 := @parameter0: java.util.List;	$r2 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$remove_endingBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI: void checkMethodArgCount(java.util.List,int)>(r1, 1);	$r3 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$remove_endingBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0);	$r5 = new freemarker.template.SimpleScalar;	$r6 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod: java.lang.String s>;	$z0 = virtualinvoke $r6.<java.lang.String: boolean endsWith(java.lang.String)>(r4);	if $z0 == 0 goto $r9 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod: java.lang.String s>;	$r9 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_endingBI$BIMethod: java.lang.String s>;	specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r5
;block_num 3