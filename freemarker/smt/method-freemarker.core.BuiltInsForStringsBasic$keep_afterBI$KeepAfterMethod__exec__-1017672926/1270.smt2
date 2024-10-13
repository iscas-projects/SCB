(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1504 0)
(declare-sort var2990 0)
(declare-sort var1444 0)
(declare-sort var552 0)
(declare-sort var2002 0)
(declare-sort var3074 0)
(declare-sort var22 0)
(declare-sort var3238 0)
(declare-sort var393 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2990_size/-959786421 (var2990) Int)
(declare-fun this$0/628736067 (var1504) var1444)
(declare-fun checkMethodArgCount/509013054 (var552 Int Int Int) void)
(declare-fun cast-from-var1444-to-var552 (var1444) var552)
(declare-fun getStringMethodArg/-1432244773 (var552 var2990 Int) String)
(declare-fun var2002_parseFlagString/1923739702 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2002_getPattern/-2008327948 (String Int) var3074)
(declare-fun s/628736067 (var1504) String)
(declare-fun matcher/468719934 (var3074 String) var22)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var22) Bool)
(declare-const null-var1504 var1504)
(declare-const null-var2990 var2990)
(declare-const var393-EMPTY_STRING var3238)
(declare-const var25 var1504) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod 
(assert (not (= var25 null-var1504)))
(declare-const var927 var2990) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var927 null-var2990)))
(define-const var491 Int (var2990_size/-959786421 var927)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var1037 var1444 (this$0/628736067 var25)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var1444-to-var552 var1037) var491 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var1037!1 var1444)
(declare-const var491!1 Int)
(declare-const var465 Int)
(declare-const var2480 Int)
(define-const var3520 var1444 (this$0/628736067 var25)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0> 
(assert true)
(define-const var3537 String (getStringMethodArg/-1432244773 (cast-from-var1444-to-var552 var3520) var927 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l8 = 0L 
(assert (not (<= var491!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var766 var1444 (this$0/628736067 var25)) ; Statement: $r16 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0> 
(assert true)
(define-const var793 String (getStringMethodArg/-1432244773 (cast-from-var1444-to-var552 var766) var927 1)) ; Statement: $r17 = virtualinvoke $r16.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1) 
(define-const var1822 Int (var2002_parseFlagString/1923739702 var793)) ; Statement: $l8 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r17) 
 ; Statement: goto [?= $l1 = $l8 & 4294967296L] 
(assert true) ; Non Conditional
(define-const var1087 Int (bv2nat (bvand ((_ int2bv 64) var1822) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l8 & 4294967296L 
(define-const var317 Int (ite (> var1087 0) 1 (ite (< var1087 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l8 
(assert (not (= var317 0))) ; Cond: $b2 != 0 
(define-const var2744 Int (cast-from-Int-to-Int var1822)) ; Statement: $i3 = (int) $l8 
(define-const var3384 var3074 (var2002_getPattern/-2008327948 var3537 var2744)) ; Statement: r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3) 
(define-const var224 String (s/628736067 var25)) ; Statement: $r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: java.lang.String s> 
(assert true)
(define-const var26 var22 (matcher/468719934 var3384 (cast-from-String-to-String var224))) ; Statement: r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6) 
(assert true)
(define-const var1721 Bool (find/1809080823 var26)) ; Statement: $z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $i11 = (int) -1 
(assert (= (ite var1721 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2758 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
(define-const var810 Int var2758) ; Statement: i9 = $i11 
(assert true) ; Non Conditional
(define-const var3404 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: if i9 != $i13 goto $r19 = new freemarker.template.SimpleScalar 
(assert (not (not (= var810 var3404)))) ; Negate: Cond: i9 != $i13  
(define-const var693 var3238 var393-EMPTY_STRING) ; Statement: $r18 = <freemarker.template.TemplateScalarModel: freemarker.template.TemplateModel EMPTY_STRING> 
 ; Statement: goto [?= return $r18] 
(assert true) ; Non Conditional
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var2990_size/-959786421=([java.util.List], int), this$0/628736067=([freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod], freemarker.core.BuiltInsForStringsBasic$keep_afterBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var1444-to-var552=([freemarker.core.BuiltInsForStringsBasic$keep_afterBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var2002_parseFlagString/1923739702=([java.lang.String], long), cast-from-Int-to-Int=([long], int), var2002_getPattern/-2008327948=([java.lang.String, int], java.util.regex.Pattern), s/628736067=([freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean)}
; {var1504=freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod, var25=r1, var2990=java.util.List, var927=r0, var491=i0, var1444=freemarker.core.BuiltInsForStringsBasic$keep_afterBI, var1037=$r2, var552=freemarker.core.BuiltIn, var465=1, var2480=2, var3520=$r3, var3537=r4, var766=$r16, var793=$r17, var2002=freemarker.core.RegexpHelper, var1822=$l8, var1087=$l1, var317=$b2, var2744=$i3, var3074=java.util.regex.Pattern, var3384=r5, var224=$r6, var22=java.util.regex.Matcher, var26=r7, var1721=$z0, var2758=$i11, var810=i9, var3404=$i13, var3238=freemarker.template.TemplateModel, var393=freemarker.template.TemplateScalarModel, var693=$r18}
; {freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod=var1504, r1=var25, java.util.List=var2990, r0=var927, i0=var491, freemarker.core.BuiltInsForStringsBasic$keep_afterBI=var1444, $r2=var1037, freemarker.core.BuiltIn=var552, 1=var465, 2=var2480, $r3=var3520, r4=var3537, $r16=var766, $r17=var793, freemarker.core.RegexpHelper=var2002, $l8=var1822, $l1=var1087, $b2=var317, $i3=var2744, java.util.regex.Pattern=var3074, r5=var3384, $r6=var224, java.util.regex.Matcher=var22, r7=var26, $z0=var1721, $i11=var2758, i9=var810, $i13=var3404, freemarker.template.TemplateModel=var3238, freemarker.template.TemplateScalarModel=var393, $r18=var693}
;seq 
;cnt {}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l8 = 0L;	$r16 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0>;	$r17 = virtualinvoke $r16.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1);	$l8 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r17);	goto [?= $l1 = $l8 & 4294967296L];	$l1 = $l8 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l8;	$i3 = (int) $l8;	r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3);	$r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: java.lang.String s>;	r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6);	$z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $i11 = (int) -1;	$i11 = (int) -1;	i9 = $i11;	$i13 = (int) -1;	if i9 != $i13 goto $r19 = new freemarker.template.SimpleScalar;	$r18 = <freemarker.template.TemplateScalarModel: freemarker.template.TemplateModel EMPTY_STRING>;	goto [?= return $r18];	return $r18
;block_num 8