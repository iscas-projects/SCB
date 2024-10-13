(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1335 0)
(declare-sort var2656 0)
(declare-sort var613 0)
(declare-sort var468 0)
(declare-sort var3849 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/1842912605 (var1335) var613)
(declare-fun checkMethodArgCount/-2126484030 (var468 var2656 Int) void)
(declare-fun cast-from-var613-to-var468 (var613) var468)
(declare-fun getStringMethodArg/-1432244773 (var468 var2656 Int) String)
(declare-fun var3849-init () var3849)
(declare-fun s/1842912605 (var1335) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun <init>/378607920 (var3849 String) void)
(declare-const null-var1335 var1335)
(declare-const null-var2656 var2656)
(declare-const var3348 var1335) ; Statement: r0 := @this: freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod 
(assert (not (= var3348 null-var1335)))
(declare-const var1907 var2656) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var1907 null-var2656)))
(define-const var3670 var613 (this$0/1842912605 var3348)) ; Statement: $r2 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$remove_beginningBI this$0> 
(assert true)
;(assert (checkMethodArgCount/-2126484030 (cast-from-var613-to-var468 var3670) var1907 1)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI: void checkMethodArgCount(java.util.List,int)>(r1, 1) 

(declare-const var3670!1 var613)
(declare-const var1907!1 var2656)
(declare-const var3162 Int)
(define-const var525 var613 (this$0/1842912605 var3348)) ; Statement: $r3 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$remove_beginningBI this$0> 
(assert true)
(define-const var1175 String (getStringMethodArg/-1432244773 (cast-from-var613-to-var468 var525) var1907!1 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0) 
(define-const var3823 var3849 var3849-init) ; Statement: $r5 = new freemarker.template.SimpleScalar 
(define-const var2980 String (s/1842912605 var3348)) ; Statement: $r6 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod: java.lang.String s> 
(assert true)
(define-const var3917 Bool (startsWith/-1785782452 var2980 var1175)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z0 == 0 goto $r8 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod: java.lang.String s> 
(assert (= (ite var3917 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3437 String (s/1842912605 var3348)) ; Statement: $r8 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod: java.lang.String s> 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/378607920 var3823 var3437)) ; Statement: specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r8) 

(declare-const var3823!1 var3849)
(declare-const var3437!1 String)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/1842912605=([freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod], freemarker.core.BuiltInsForStringsBasic$remove_beginningBI), checkMethodArgCount/-2126484030=([freemarker.core.BuiltIn, java.util.List, int], void), cast-from-var613-to-var468=([freemarker.core.BuiltInsForStringsBasic$remove_beginningBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var3849-init=([], freemarker.template.SimpleScalar), s/1842912605=([freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var1335=freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod, var3348=r0, var2656=java.util.List, var1907=r1, var613=freemarker.core.BuiltInsForStringsBasic$remove_beginningBI, var3670=$r2, var468=freemarker.core.BuiltIn, var3162=1, var525=$r3, var1175=r4, var3849=freemarker.template.SimpleScalar, var3823=$r5, var2980=$r6, var3917=$z0, var3437=$r8}
; {freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod=var1335, r0=var3348, java.util.List=var2656, r1=var1907, freemarker.core.BuiltInsForStringsBasic$remove_beginningBI=var613, $r2=var3670, freemarker.core.BuiltIn=var468, 1=var3162, $r3=var525, r4=var1175, freemarker.template.SimpleScalar=var3849, $r5=var3823, $r6=var2980, $z0=var3917, $r8=var3437}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod;	r1 := @parameter0: java.util.List;	$r2 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$remove_beginningBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI: void checkMethodArgCount(java.util.List,int)>(r1, 1);	$r3 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$remove_beginningBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0);	$r5 = new freemarker.template.SimpleScalar;	$r6 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod: java.lang.String s>;	$z0 = virtualinvoke $r6.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z0 == 0 goto $r8 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod: java.lang.String s>;	$r8 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod: java.lang.String s>;	specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r8);	return $r5
;block_num 3