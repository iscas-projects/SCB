(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1539 0)
(declare-sort var1637 0)
(declare-sort var3343 0)
(declare-sort var2496 0)
(declare-sort var2044 0)
(declare-sort var665 0)
(declare-sort var1290 0)
(declare-sort var3968 0)
(declare-sort var3136 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1637_size/-959786421 (var1637) Int)
(declare-fun this$0/628736067 (var1539) var3343)
(declare-fun checkMethodArgCount/509013054 (var2496 Int Int Int) void)
(declare-fun cast-from-var3343-to-var2496 (var3343) var2496)
(declare-fun getStringMethodArg/-1432244773 (var2496 var1637 Int) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var665_getPattern/-2008327948 (String Int) var2044)
(declare-fun s/628736067 (var1539) String)
(declare-fun matcher/468719934 (var2044 String) var1290)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var1290) Bool)
(declare-const null-var1539 var1539)
(declare-const null-var1637 var1637)
(declare-const var3136-EMPTY_STRING var3968)
(declare-const var1354 var1539) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod 
(assert (not (= var1354 null-var1539)))
(declare-const var2613 var1637) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var2613 null-var1637)))
(define-const var332 Int (var1637_size/-959786421 var2613)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var1730 var3343 (this$0/628736067 var1354)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var3343-to-var2496 var1730) var332 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var1730!1 var3343)
(declare-const var332!1 Int)
(declare-const var3797 Int)
(declare-const var1740 Int)
(define-const var34 var3343 (this$0/628736067 var1354)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0> 
(assert true)
(define-const var1844 String (getStringMethodArg/-1432244773 (cast-from-var3343-to-var2496 var34) var2613 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l8 = 0L 
(assert (<= var332!1 1)) ; Cond: i0 <= 1 
(define-const var2666 Int 0) ; Statement: $l8 = 0L 
(assert true) ; Non Conditional
(define-const var2846 Int (bv2nat (bvand ((_ int2bv 64) var2666) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l8 & 4294967296L 
(define-const var973 Int (ite (> var2846 0) 1 (ite (< var2846 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l8 
(assert (not (= var973 0))) ; Cond: $b2 != 0 
(define-const var1213 Int (cast-from-Int-to-Int var2666)) ; Statement: $i3 = (int) $l8 
(define-const var1523 var2044 (var665_getPattern/-2008327948 var1844 var1213)) ; Statement: r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3) 
(define-const var292 String (s/628736067 var1354)) ; Statement: $r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: java.lang.String s> 
(assert true)
(define-const var2349 var1290 (matcher/468719934 var1523 (cast-from-String-to-String var292))) ; Statement: r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6) 
(assert true)
(define-const var645 Bool (find/1809080823 var2349)) ; Statement: $z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $i11 = (int) -1 
(assert (= (ite var645 1 0) 0)) ; Cond: $z0 == 0 
(define-const var814 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
(define-const var3974 Int var814) ; Statement: i9 = $i11 
(assert true) ; Non Conditional
(define-const var2357 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: if i9 != $i13 goto $r19 = new freemarker.template.SimpleScalar 
(assert (not (not (= var3974 var2357)))) ; Negate: Cond: i9 != $i13  
(define-const var3748 var3968 var3136-EMPTY_STRING) ; Statement: $r18 = <freemarker.template.TemplateScalarModel: freemarker.template.TemplateModel EMPTY_STRING> 
 ; Statement: goto [?= return $r18] 
(assert true) ; Non Conditional
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var1637_size/-959786421=([java.util.List], int), this$0/628736067=([freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod], freemarker.core.BuiltInsForStringsBasic$keep_afterBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var3343-to-var2496=([freemarker.core.BuiltInsForStringsBasic$keep_afterBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), cast-from-Int-to-Int=([long], int), var665_getPattern/-2008327948=([java.lang.String, int], java.util.regex.Pattern), s/628736067=([freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean)}
; {var1539=freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod, var1354=r1, var1637=java.util.List, var2613=r0, var332=i0, var3343=freemarker.core.BuiltInsForStringsBasic$keep_afterBI, var1730=$r2, var2496=freemarker.core.BuiltIn, var3797=1, var1740=2, var34=$r3, var1844=r4, var2666=$l8, var2846=$l1, var973=$b2, var1213=$i3, var2044=java.util.regex.Pattern, var665=freemarker.core.RegexpHelper, var1523=r5, var292=$r6, var1290=java.util.regex.Matcher, var2349=r7, var645=$z0, var814=$i11, var3974=i9, var2357=$i13, var3968=freemarker.template.TemplateModel, var3136=freemarker.template.TemplateScalarModel, var3748=$r18}
; {freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod=var1539, r1=var1354, java.util.List=var1637, r0=var2613, i0=var332, freemarker.core.BuiltInsForStringsBasic$keep_afterBI=var3343, $r2=var1730, freemarker.core.BuiltIn=var2496, 1=var3797, 2=var1740, $r3=var34, r4=var1844, $l8=var2666, $l1=var2846, $b2=var973, $i3=var1213, java.util.regex.Pattern=var2044, freemarker.core.RegexpHelper=var665, r5=var1523, $r6=var292, java.util.regex.Matcher=var1290, r7=var2349, $z0=var645, $i11=var814, i9=var3974, $i13=var2357, freemarker.template.TemplateModel=var3968, freemarker.template.TemplateScalarModel=var3136, $r18=var3748}
;seq 
;cnt {}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l8 = 0L;	$l8 = 0L;	$l1 = $l8 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l8;	$i3 = (int) $l8;	r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3);	$r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: java.lang.String s>;	r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6);	$z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $i11 = (int) -1;	$i11 = (int) -1;	i9 = $i11;	$i13 = (int) -1;	if i9 != $i13 goto $r19 = new freemarker.template.SimpleScalar;	$r18 = <freemarker.template.TemplateScalarModel: freemarker.template.TemplateModel EMPTY_STRING>;	goto [?= return $r18];	return $r18
;block_num 8