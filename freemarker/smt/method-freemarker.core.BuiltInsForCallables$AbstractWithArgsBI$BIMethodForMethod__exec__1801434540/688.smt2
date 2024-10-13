(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1169 0)
(declare-sort var3243 0)
(declare-sort var3421 0)
(declare-sort var300 0)
(declare-sort var2375 0)
(declare-sort var3316 0)
(declare-sort var2209 0)
(declare-sort var2455 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/1031404485 (var1169) var3421)
(declare-fun var3243_size/-959786421 (var3243) Int)
(declare-fun checkMethodArgCount/98110395 (var300 Int Int) void)
(declare-fun cast-from-var3421-to-var300 (var3421) var300)
(declare-fun var3243_get/-1216255739 (var3243 Int) var2375)
(declare-fun cast-from-var2375-to-var3316 (var2375) var3316)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun key/-489369572 (var300) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2455_newMethodArgMustBeExtendedHashOrSequnceException/1390775195 (String Int var3316) var2209)
(declare-const null-var1169 var1169)
(declare-const null-var3243 var3243)
(declare-const var2741 var1169) ; Statement: r0 := @this: freemarker.core.BuiltInsForCallables$AbstractWithArgsBI$BIMethodForMethod 
(assert (not (= var2741 null-var1169)))
(declare-const var1897 var3243) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var1897 null-var3243)))
(define-const var518 var3421 (this$0/1031404485 var2741)) ; Statement: $r2 = r0.<freemarker.core.BuiltInsForCallables$AbstractWithArgsBI$BIMethodForMethod: freemarker.core.BuiltInsForCallables$AbstractWithArgsBI this$0> 
(define-const var3684 Int (var3243_size/-959786421 var1897)) ; Statement: $i0 = interfaceinvoke r1.<java.util.List: int size()>() 
(assert true)
;(assert (checkMethodArgCount/98110395 (cast-from-var3421-to-var300 var518) var3684 1)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForCallables$AbstractWithArgsBI: void checkMethodArgCount(int,int)>($i0, 1) 

(declare-const var518!1 var3421)
(declare-const var3684!1 Int)
(declare-const var3695 Int)
(define-const var853 var2375 (var3243_get/-1216255739 var1897 0)) ; Statement: $r3 = interfaceinvoke r1.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var3786 var3316 (cast-from-var2375-to-var3316 var853)) ; Statement: r4 = (freemarker.template.TemplateModel) $r3 
(define-const var1322 Bool true) ; Statement: $z0 = r4 instanceof freemarker.template.TemplateSequenceModel 
 ; Statement: if $z0 == 0 goto $z1 = r4 instanceof freemarker.template.TemplateHashModelEx 
(assert (= (ite var1322 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3145 Bool true) ; Statement: $z1 = r4 instanceof freemarker.template.TemplateHashModelEx 
 ; Statement: if $z1 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (= (ite var3145 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1833 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1833)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1833!1 String)
(assert (= var1833!1 ""))
(assert true)
(define-const var3569 String (append/672562846 var1833!1 "?")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?") 
(declare-const var1833!2 String)
(assert (= var1833!2 (str.++ var1833!1 "?")))
(define-const var3265 var3421 (this$0/1031404485 var2741)) ; Statement: $r6 = r0.<freemarker.core.BuiltInsForCallables$AbstractWithArgsBI$BIMethodForMethod: freemarker.core.BuiltInsForCallables$AbstractWithArgsBI this$0> 
(define-const var1537 String (key/-489369572 (cast-from-var3421-to-var300 var3265))) ; Statement: $r7 = $r6.<freemarker.core.BuiltInsForCallables$AbstractWithArgsBI: java.lang.String key> 
(assert true)
(define-const var1506 String (append/672562846 var3569 var1537)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3569!1 String)
(assert (= var3569!1 (str.++ var3569 var1537)))
(assert true)
(define-const var1848 String (toString/-2075883882 var1506)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var740 var2209 (var2455_newMethodArgMustBeExtendedHashOrSequnceException/1390775195 var1848 0 var3786)) ; Statement: $r11 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newMethodArgMustBeExtendedHashOrSequnceException(java.lang.String,int,freemarker.template.TemplateModel)>($r10, 0, r4) 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/1031404485=([freemarker.core.BuiltInsForCallables$AbstractWithArgsBI$BIMethodForMethod], freemarker.core.BuiltInsForCallables$AbstractWithArgsBI), var3243_size/-959786421=([java.util.List], int), checkMethodArgCount/98110395=([freemarker.core.BuiltIn, int, int], void), cast-from-var3421-to-var300=([freemarker.core.BuiltInsForCallables$AbstractWithArgsBI], freemarker.core.BuiltIn), var3243_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var2375-to-var3316=([java.lang.Object], freemarker.template.TemplateModel), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2455_newMethodArgMustBeExtendedHashOrSequnceException/1390775195=([java.lang.String, int, freemarker.template.TemplateModel], freemarker.template.TemplateModelException)}
; {var1169=freemarker.core.BuiltInsForCallables$AbstractWithArgsBI$BIMethodForMethod, var2741=r0, var3243=java.util.List, var1897=r1, var3421=freemarker.core.BuiltInsForCallables$AbstractWithArgsBI, var518=$r2, var3684=$i0, var300=freemarker.core.BuiltIn, var3695=1, var2375=java.lang.Object, var853=$r3, var3316=freemarker.template.TemplateModel, var3786=r4, var1322=$z0, var3145=$z1, var1833=$r5, var3569=$r8, var3265=$r6, var1537=$r7, var1506=$r9, var1848=$r10, var2209=freemarker.template.TemplateModelException, var2455=freemarker.core._MessageUtil, var740=$r11}
; {freemarker.core.BuiltInsForCallables$AbstractWithArgsBI$BIMethodForMethod=var1169, r0=var2741, java.util.List=var3243, r1=var1897, freemarker.core.BuiltInsForCallables$AbstractWithArgsBI=var3421, $r2=var518, $i0=var3684, freemarker.core.BuiltIn=var300, 1=var3695, java.lang.Object=var2375, $r3=var853, freemarker.template.TemplateModel=var3316, r4=var3786, $z0=var1322, $z1=var3145, $r5=var1833, $r8=var3569, $r6=var3265, $r7=var1537, $r9=var1506, $r10=var1848, freemarker.template.TemplateModelException=var2209, freemarker.core._MessageUtil=var2455, $r11=var740}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.BuiltInsForCallables$AbstractWithArgsBI$BIMethodForMethod;	r1 := @parameter0: java.util.List;	$r2 = r0.<freemarker.core.BuiltInsForCallables$AbstractWithArgsBI$BIMethodForMethod: freemarker.core.BuiltInsForCallables$AbstractWithArgsBI this$0>;	$i0 = interfaceinvoke r1.<java.util.List: int size()>();	virtualinvoke $r2.<freemarker.core.BuiltInsForCallables$AbstractWithArgsBI: void checkMethodArgCount(int,int)>($i0, 1);	$r3 = interfaceinvoke r1.<java.util.List: java.lang.Object get(int)>(0);	r4 = (freemarker.template.TemplateModel) $r3;	$z0 = r4 instanceof freemarker.template.TemplateSequenceModel;	if $z0 == 0 goto $z1 = r4 instanceof freemarker.template.TemplateHashModelEx;	$z1 = r4 instanceof freemarker.template.TemplateHashModelEx;	if $z1 == 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?");	$r6 = r0.<freemarker.core.BuiltInsForCallables$AbstractWithArgsBI$BIMethodForMethod: freemarker.core.BuiltInsForCallables$AbstractWithArgsBI this$0>;	$r7 = $r6.<freemarker.core.BuiltInsForCallables$AbstractWithArgsBI: java.lang.String key>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newMethodArgMustBeExtendedHashOrSequnceException(java.lang.String,int,freemarker.template.TemplateModel)>($r10, 0, r4);	throw $r11
;block_num 3