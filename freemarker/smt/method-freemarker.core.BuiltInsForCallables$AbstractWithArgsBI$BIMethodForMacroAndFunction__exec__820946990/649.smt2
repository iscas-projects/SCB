(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3417 0)
(declare-sort var3853 0)
(declare-sort var1427 0)
(declare-sort var3312 0)
(declare-sort var1838 0)
(declare-sort var2693 0)
(declare-sort var2240 0)
(declare-sort var563 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/278879559 (var3417) var1427)
(declare-fun var3853_size/-959786421 (var3853) Int)
(declare-fun checkMethodArgCount/98110395 (var3312 Int Int) void)
(declare-fun cast-from-var1427-to-var3312 (var1427) var3312)
(declare-fun var3853_get/-1216255739 (var3853 Int) var1838)
(declare-fun cast-from-var1838-to-var2693 (var1838) var2693)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun key/-489369572 (var3312) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var563_newMethodArgMustBeExtendedHashOrSequnceException/1390775195 (String Int var2693) var2240)
(declare-const null-var3417 var3417)
(declare-const null-var3853 var3853)
(declare-const var1517 var3417) ; Statement: r0 := @this: freemarker.core.BuiltInsForCallables$AbstractWithArgsBI$BIMethodForMacroAndFunction 
(assert (not (= var1517 null-var3417)))
(declare-const var1736 var3853) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var1736 null-var3853)))
(define-const var611 var1427 (this$0/278879559 var1517)) ; Statement: $r2 = r0.<freemarker.core.BuiltInsForCallables$AbstractWithArgsBI$BIMethodForMacroAndFunction: freemarker.core.BuiltInsForCallables$AbstractWithArgsBI this$0> 
(define-const var2952 Int (var3853_size/-959786421 var1736)) ; Statement: $i0 = interfaceinvoke r1.<java.util.List: int size()>() 
(assert true)
;(assert (checkMethodArgCount/98110395 (cast-from-var1427-to-var3312 var611) var2952 1)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForCallables$AbstractWithArgsBI: void checkMethodArgCount(int,int)>($i0, 1) 

(declare-const var611!1 var1427)
(declare-const var2952!1 Int)
(declare-const var2121 Int)
(define-const var1614 var1838 (var3853_get/-1216255739 var1736 0)) ; Statement: $r3 = interfaceinvoke r1.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var2963 var2693 (cast-from-var1838-to-var2693 var1614)) ; Statement: r4 = (freemarker.template.TemplateModel) $r3 
(define-const var1165 Bool true) ; Statement: $z0 = r4 instanceof freemarker.template.TemplateSequenceModel 
 ; Statement: if $z0 == 0 goto $z1 = r4 instanceof freemarker.template.TemplateHashModelEx 
(assert (= (ite var1165 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1941 Bool true) ; Statement: $z1 = r4 instanceof freemarker.template.TemplateHashModelEx 
 ; Statement: if $z1 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (= (ite var1941 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2594 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2594)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2594!1 String)
(assert (= var2594!1 ""))
(assert true)
(define-const var571 String (append/672562846 var2594!1 "?")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?") 
(declare-const var2594!2 String)
(assert (= var2594!2 (str.++ var2594!1 "?")))
(define-const var2063 var1427 (this$0/278879559 var1517)) ; Statement: $r6 = r0.<freemarker.core.BuiltInsForCallables$AbstractWithArgsBI$BIMethodForMacroAndFunction: freemarker.core.BuiltInsForCallables$AbstractWithArgsBI this$0> 
(define-const var2892 String (key/-489369572 (cast-from-var1427-to-var3312 var2063))) ; Statement: $r7 = $r6.<freemarker.core.BuiltInsForCallables$AbstractWithArgsBI: java.lang.String key> 
(assert true)
(define-const var578 String (append/672562846 var571 var2892)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var571!1 String)
(assert (= var571!1 (str.++ var571 var2892)))
(assert true)
(define-const var750 String (toString/-2075883882 var578)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var301 var2240 (var563_newMethodArgMustBeExtendedHashOrSequnceException/1390775195 var750 0 var2963)) ; Statement: $r11 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newMethodArgMustBeExtendedHashOrSequnceException(java.lang.String,int,freemarker.template.TemplateModel)>($r10, 0, r4) 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/278879559=([freemarker.core.BuiltInsForCallables$AbstractWithArgsBI$BIMethodForMacroAndFunction], freemarker.core.BuiltInsForCallables$AbstractWithArgsBI), var3853_size/-959786421=([java.util.List], int), checkMethodArgCount/98110395=([freemarker.core.BuiltIn, int, int], void), cast-from-var1427-to-var3312=([freemarker.core.BuiltInsForCallables$AbstractWithArgsBI], freemarker.core.BuiltIn), var3853_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var1838-to-var2693=([java.lang.Object], freemarker.template.TemplateModel), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var563_newMethodArgMustBeExtendedHashOrSequnceException/1390775195=([java.lang.String, int, freemarker.template.TemplateModel], freemarker.template.TemplateModelException)}
; {var3417=freemarker.core.BuiltInsForCallables$AbstractWithArgsBI$BIMethodForMacroAndFunction, var1517=r0, var3853=java.util.List, var1736=r1, var1427=freemarker.core.BuiltInsForCallables$AbstractWithArgsBI, var611=$r2, var2952=$i0, var3312=freemarker.core.BuiltIn, var2121=1, var1838=java.lang.Object, var1614=$r3, var2693=freemarker.template.TemplateModel, var2963=r4, var1165=$z0, var1941=$z1, var2594=$r5, var571=$r8, var2063=$r6, var2892=$r7, var578=$r9, var750=$r10, var2240=freemarker.template.TemplateModelException, var563=freemarker.core._MessageUtil, var301=$r11}
; {freemarker.core.BuiltInsForCallables$AbstractWithArgsBI$BIMethodForMacroAndFunction=var3417, r0=var1517, java.util.List=var3853, r1=var1736, freemarker.core.BuiltInsForCallables$AbstractWithArgsBI=var1427, $r2=var611, $i0=var2952, freemarker.core.BuiltIn=var3312, 1=var2121, java.lang.Object=var1838, $r3=var1614, freemarker.template.TemplateModel=var2693, r4=var2963, $z0=var1165, $z1=var1941, $r5=var2594, $r8=var571, $r6=var2063, $r7=var2892, $r9=var578, $r10=var750, freemarker.template.TemplateModelException=var2240, freemarker.core._MessageUtil=var563, $r11=var301}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.BuiltInsForCallables$AbstractWithArgsBI$BIMethodForMacroAndFunction;	r1 := @parameter0: java.util.List;	$r2 = r0.<freemarker.core.BuiltInsForCallables$AbstractWithArgsBI$BIMethodForMacroAndFunction: freemarker.core.BuiltInsForCallables$AbstractWithArgsBI this$0>;	$i0 = interfaceinvoke r1.<java.util.List: int size()>();	virtualinvoke $r2.<freemarker.core.BuiltInsForCallables$AbstractWithArgsBI: void checkMethodArgCount(int,int)>($i0, 1);	$r3 = interfaceinvoke r1.<java.util.List: java.lang.Object get(int)>(0);	r4 = (freemarker.template.TemplateModel) $r3;	$z0 = r4 instanceof freemarker.template.TemplateSequenceModel;	if $z0 == 0 goto $z1 = r4 instanceof freemarker.template.TemplateHashModelEx;	$z1 = r4 instanceof freemarker.template.TemplateHashModelEx;	if $z1 == 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?");	$r6 = r0.<freemarker.core.BuiltInsForCallables$AbstractWithArgsBI$BIMethodForMacroAndFunction: freemarker.core.BuiltInsForCallables$AbstractWithArgsBI this$0>;	$r7 = $r6.<freemarker.core.BuiltInsForCallables$AbstractWithArgsBI: java.lang.String key>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newMethodArgMustBeExtendedHashOrSequnceException(java.lang.String,int,freemarker.template.TemplateModel)>($r10, 0, r4);	throw $r11
;block_num 3