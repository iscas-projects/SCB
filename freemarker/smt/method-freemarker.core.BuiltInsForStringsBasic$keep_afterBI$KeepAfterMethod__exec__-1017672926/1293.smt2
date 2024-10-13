(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3974 0)
(declare-sort var3954 0)
(declare-sort var958 0)
(declare-sort var1592 0)
(declare-sort var1422 0)
(declare-sort var1187 0)
(declare-sort var3733 0)
(declare-sort var380 0)
(declare-sort var653 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3954_size/-959786421 (var3954) Int)
(declare-fun this$0/628736067 (var3974) var958)
(declare-fun checkMethodArgCount/509013054 (var1592 Int Int Int) void)
(declare-fun cast-from-var958-to-var1592 (var958) var1592)
(declare-fun getStringMethodArg/-1432244773 (var1592 var3954 Int) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1187_getPattern/-2008327948 (String Int) var1422)
(declare-fun s/628736067 (var3974) String)
(declare-fun matcher/468719934 (var1422 String) var3733)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var3733) Bool)
(declare-fun end/8760360 (var3733) Int)
(declare-const null-var3974 var3974)
(declare-const null-var3954 var3954)
(declare-const var653-EMPTY_STRING var380)
(declare-const var1411 var3974) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod 
(assert (not (= var1411 null-var3974)))
(declare-const var2095 var3954) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var2095 null-var3954)))
(define-const var445 Int (var3954_size/-959786421 var2095)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var2776 var958 (this$0/628736067 var1411)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var958-to-var1592 var2776) var445 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var2776!1 var958)
(declare-const var445!1 Int)
(declare-const var1605 Int)
(declare-const var1598 Int)
(define-const var2645 var958 (this$0/628736067 var1411)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0> 
(assert true)
(define-const var1348 String (getStringMethodArg/-1432244773 (cast-from-var958-to-var1592 var2645) var2095 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l8 = 0L 
(assert (<= var445!1 1)) ; Cond: i0 <= 1 
(define-const var2143 Int 0) ; Statement: $l8 = 0L 
(assert true) ; Non Conditional
(define-const var711 Int (bv2nat (bvand ((_ int2bv 64) var2143) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l8 & 4294967296L 
(define-const var3405 Int (ite (> var711 0) 1 (ite (< var711 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l8 
(assert (not (= var3405 0))) ; Cond: $b2 != 0 
(define-const var949 Int (cast-from-Int-to-Int var2143)) ; Statement: $i3 = (int) $l8 
(define-const var3714 var1422 (var1187_getPattern/-2008327948 var1348 var949)) ; Statement: r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3) 
(define-const var2257 String (s/628736067 var1411)) ; Statement: $r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: java.lang.String s> 
(assert true)
(define-const var891 var3733 (matcher/468719934 var3714 (cast-from-String-to-String var2257))) ; Statement: r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6) 
(assert true)
(define-const var698 Bool (find/1809080823 var891)) ; Statement: $z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $i11 = (int) -1 
(assert (not (= (ite var698 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2888 Int (end/8760360 var891)) ; Statement: i9 = virtualinvoke r7.<java.util.regex.Matcher: int end()>() 
 ; Statement: goto [?= $i13 = (int) -1] 
(assert true) ; Non Conditional
(define-const var2819 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: if i9 != $i13 goto $r19 = new freemarker.template.SimpleScalar 
(assert (not (not (= var2888 var2819)))) ; Negate: Cond: i9 != $i13  
(define-const var3461 var380 var653-EMPTY_STRING) ; Statement: $r18 = <freemarker.template.TemplateScalarModel: freemarker.template.TemplateModel EMPTY_STRING> 
 ; Statement: goto [?= return $r18] 
(assert true) ; Non Conditional
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var3954_size/-959786421=([java.util.List], int), this$0/628736067=([freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod], freemarker.core.BuiltInsForStringsBasic$keep_afterBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var958-to-var1592=([freemarker.core.BuiltInsForStringsBasic$keep_afterBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), cast-from-Int-to-Int=([long], int), var1187_getPattern/-2008327948=([java.lang.String, int], java.util.regex.Pattern), s/628736067=([freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean), end/8760360=([java.util.regex.Matcher], int)}
; {var3974=freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod, var1411=r1, var3954=java.util.List, var2095=r0, var445=i0, var958=freemarker.core.BuiltInsForStringsBasic$keep_afterBI, var2776=$r2, var1592=freemarker.core.BuiltIn, var1605=1, var1598=2, var2645=$r3, var1348=r4, var2143=$l8, var711=$l1, var3405=$b2, var949=$i3, var1422=java.util.regex.Pattern, var1187=freemarker.core.RegexpHelper, var3714=r5, var2257=$r6, var3733=java.util.regex.Matcher, var891=r7, var698=$z0, var2888=i9, var2819=$i13, var380=freemarker.template.TemplateModel, var653=freemarker.template.TemplateScalarModel, var3461=$r18}
; {freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod=var3974, r1=var1411, java.util.List=var3954, r0=var2095, i0=var445, freemarker.core.BuiltInsForStringsBasic$keep_afterBI=var958, $r2=var2776, freemarker.core.BuiltIn=var1592, 1=var1605, 2=var1598, $r3=var2645, r4=var1348, $l8=var2143, $l1=var711, $b2=var3405, $i3=var949, java.util.regex.Pattern=var1422, freemarker.core.RegexpHelper=var1187, r5=var3714, $r6=var2257, java.util.regex.Matcher=var3733, r7=var891, $z0=var698, i9=var2888, $i13=var2819, freemarker.template.TemplateModel=var380, freemarker.template.TemplateScalarModel=var653, $r18=var3461}
;seq 
;cnt {}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l8 = 0L;	$l8 = 0L;	$l1 = $l8 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l8;	$i3 = (int) $l8;	r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3);	$r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: java.lang.String s>;	r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6);	$z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $i11 = (int) -1;	i9 = virtualinvoke r7.<java.util.regex.Matcher: int end()>();	goto [?= $i13 = (int) -1];	$i13 = (int) -1;	if i9 != $i13 goto $r19 = new freemarker.template.SimpleScalar;	$r18 = <freemarker.template.TemplateScalarModel: freemarker.template.TemplateModel EMPTY_STRING>;	goto [?= return $r18];	return $r18
;block_num 8