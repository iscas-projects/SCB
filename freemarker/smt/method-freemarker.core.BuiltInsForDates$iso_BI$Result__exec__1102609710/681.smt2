(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1955 0)
(declare-sort var3787 0)
(declare-sort var1330 0)
(declare-sort var2715 0)
(declare-sort var1290 0)
(declare-sort var915 0)
(declare-sort var2266 0)
(declare-sort var1263 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-556050097 (var1955) var1330)
(declare-fun checkMethodArgCount/-2126484030 (var2715 var3787 Int) void)
(declare-fun cast-from-var1330-to-var2715 (var1330) var2715)
(declare-fun var3787_get/-1216255739 (var3787 Int) var1290)
(declare-fun cast-from-var1290-to-var915 (var1290) var915)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun key/-489369572 (var2715) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1263_newMethodArgUnexpectedTypeException/-864775813 (String Int String var915) var2266)
(declare-const null-var1955 var1955)
(declare-const null-var3787 var3787)
(declare-const var2544 var1955) ; Statement: r0 := @this: freemarker.core.BuiltInsForDates$iso_BI$Result 
(assert (not (= var2544 null-var1955)))
(declare-const var1385 var3787) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var1385 null-var3787)))
(define-const var1931 var1330 (this$0/-556050097 var2544)) ; Statement: $r2 = r0.<freemarker.core.BuiltInsForDates$iso_BI$Result: freemarker.core.BuiltInsForDates$iso_BI this$0> 
(assert true)
;(assert (checkMethodArgCount/-2126484030 (cast-from-var1330-to-var2715 var1931) var1385 1)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForDates$iso_BI: void checkMethodArgCount(java.util.List,int)>(r1, 1) 

(declare-const var1931!1 var1330)
(declare-const var1385!1 var3787)
(declare-const var3159 Int)
(define-const var2107 var1290 (var3787_get/-1216255739 var1385!1 0)) ; Statement: $r3 = interfaceinvoke r1.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var3796 var915 (cast-from-var1290-to-var915 var2107)) ; Statement: r4 = (freemarker.template.TemplateModel) $r3 
(define-const var536 Bool true) ; Statement: $z0 = r4 instanceof freemarker.template.AdapterTemplateModel 
 ; Statement: if $z0 == 0 goto $z1 = r4 instanceof freemarker.template.TemplateScalarModel 
(assert (= (ite var536 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3335 Bool true) ; Statement: $z1 = r4 instanceof freemarker.template.TemplateScalarModel 
 ; Statement: if $z1 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (= (ite var3335 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1533 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1533)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1533!1 String)
(assert (= var1533!1 ""))
(assert true)
(define-const var2795 String (append/672562846 var1533!1 "?")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?") 
(declare-const var1533!2 String)
(assert (= var1533!2 (str.++ var1533!1 "?")))
(define-const var486 var1330 (this$0/-556050097 var2544)) ; Statement: $r6 = r0.<freemarker.core.BuiltInsForDates$iso_BI$Result: freemarker.core.BuiltInsForDates$iso_BI this$0> 
(define-const var824 String (key/-489369572 (cast-from-var1330-to-var2715 var486))) ; Statement: $r7 = $r6.<freemarker.core.BuiltInsForDates$iso_BI: java.lang.String key> 
(assert true)
(define-const var1196 String (append/672562846 var2795 var824)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2795!1 String)
(assert (= var2795!1 (str.++ var2795 var824)))
(assert true)
(define-const var1266 String (toString/-2075883882 var1196)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3570 var2266 (var1263_newMethodArgUnexpectedTypeException/-864775813 var1266 0 "string or java.util.TimeZone" var3796)) ; Statement: $r11 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newMethodArgUnexpectedTypeException(java.lang.String,int,java.lang.String,freemarker.template.TemplateModel)>($r10, 0, "string or java.util.TimeZone", r4) 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-556050097=([freemarker.core.BuiltInsForDates$iso_BI$Result], freemarker.core.BuiltInsForDates$iso_BI), checkMethodArgCount/-2126484030=([freemarker.core.BuiltIn, java.util.List, int], void), cast-from-var1330-to-var2715=([freemarker.core.BuiltInsForDates$iso_BI], freemarker.core.BuiltIn), var3787_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var1290-to-var915=([java.lang.Object], freemarker.template.TemplateModel), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1263_newMethodArgUnexpectedTypeException/-864775813=([java.lang.String, int, java.lang.String, freemarker.template.TemplateModel], freemarker.template.TemplateModelException)}
; {var1955=freemarker.core.BuiltInsForDates$iso_BI$Result, var2544=r0, var3787=java.util.List, var1385=r1, var1330=freemarker.core.BuiltInsForDates$iso_BI, var1931=$r2, var2715=freemarker.core.BuiltIn, var3159=1, var1290=java.lang.Object, var2107=$r3, var915=freemarker.template.TemplateModel, var3796=r4, var536=$z0, var3335=$z1, var1533=$r5, var2795=$r8, var486=$r6, var824=$r7, var1196=$r9, var1266=$r10, var2266=freemarker.template.TemplateModelException, var1263=freemarker.core._MessageUtil, var3570=$r11}
; {freemarker.core.BuiltInsForDates$iso_BI$Result=var1955, r0=var2544, java.util.List=var3787, r1=var1385, freemarker.core.BuiltInsForDates$iso_BI=var1330, $r2=var1931, freemarker.core.BuiltIn=var2715, 1=var3159, java.lang.Object=var1290, $r3=var2107, freemarker.template.TemplateModel=var915, r4=var3796, $z0=var536, $z1=var3335, $r5=var1533, $r8=var2795, $r6=var486, $r7=var824, $r9=var1196, $r10=var1266, freemarker.template.TemplateModelException=var2266, freemarker.core._MessageUtil=var1263, $r11=var3570}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.BuiltInsForDates$iso_BI$Result;	r1 := @parameter0: java.util.List;	$r2 = r0.<freemarker.core.BuiltInsForDates$iso_BI$Result: freemarker.core.BuiltInsForDates$iso_BI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForDates$iso_BI: void checkMethodArgCount(java.util.List,int)>(r1, 1);	$r3 = interfaceinvoke r1.<java.util.List: java.lang.Object get(int)>(0);	r4 = (freemarker.template.TemplateModel) $r3;	$z0 = r4 instanceof freemarker.template.AdapterTemplateModel;	if $z0 == 0 goto $z1 = r4 instanceof freemarker.template.TemplateScalarModel;	$z1 = r4 instanceof freemarker.template.TemplateScalarModel;	if $z1 == 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?");	$r6 = r0.<freemarker.core.BuiltInsForDates$iso_BI$Result: freemarker.core.BuiltInsForDates$iso_BI this$0>;	$r7 = $r6.<freemarker.core.BuiltInsForDates$iso_BI: java.lang.String key>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newMethodArgUnexpectedTypeException(java.lang.String,int,java.lang.String,freemarker.template.TemplateModel)>($r10, 0, "string or java.util.TimeZone", r4);	throw $r11
;block_num 3