(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2822 0)
(declare-sort var272 0)
(declare-sort var3224 0)
(declare-sort var3908 0)
(declare-sort var615 0)
(declare-sort var555 0)
(declare-sort var2677 0)
(declare-sort var3124 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var272_size/-959786421 (var272) Int)
(declare-fun this$0/467378960 (var2822) var3224)
(declare-fun checkMethodArgCount/509013054 (var3908 Int Int Int) void)
(declare-fun cast-from-var3224-to-var3908 (var3224) var3908)
(declare-fun getStringMethodArg/-1432244773 (var3908 var272 Int) String)
(declare-fun var615_parseFlagString/1923739702 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var615_getPattern/-2008327948 (String Int) var555)
(declare-fun s/467378960 (var2822) String)
(declare-fun matcher/468719934 (var555 String) var2677)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var2677) Bool)
(declare-fun start/-526965311 (var2677) Int)
(declare-fun var3124-init () var3124)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun <init>/378607920 (var3124 String) void)
(declare-const null-var2822 var2822)
(declare-const null-var272 var272)
(declare-const var2358 var2822) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod 
(assert (not (= var2358 null-var2822)))
(declare-const var3923 var272) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var3923 null-var272)))
(define-const var1316 Int (var272_size/-959786421 var3923)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var330 var3224 (this$0/467378960 var2358)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var3224-to-var3908 var330) var1316 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var330!1 var3224)
(declare-const var1316!1 Int)
(declare-const var3335 Int)
(declare-const var2544 Int)
(define-const var1848 var3224 (this$0/467378960 var2358)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var2632 String (getStringMethodArg/-1432244773 (cast-from-var3224-to-var3908 var1848) var3923 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l7 = 0L 
(assert (not (<= var1316!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var1885 var3224 (this$0/467378960 var2358)) ; Statement: $r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var3364 String (getStringMethodArg/-1432244773 (cast-from-var3224-to-var3908 var1885) var3923 1)) ; Statement: $r18 = virtualinvoke $r17.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1) 
(define-const var1071 Int (var615_parseFlagString/1923739702 var3364)) ; Statement: $l7 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r18) 
 ; Statement: goto [?= $l1 = $l7 & 4294967296L] 
(assert true) ; Non Conditional
(define-const var1464 Int (bv2nat (bvand ((_ int2bv 64) var1071) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l7 & 4294967296L 
(define-const var3209 Int (ite (> var1464 0) 1 (ite (< var1464 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l7 
(assert (not (= var3209 0))) ; Cond: $b2 != 0 
(define-const var1363 Int (cast-from-Int-to-Int var1071)) ; Statement: $i3 = (int) $l7 
(define-const var1512 var555 (var615_getPattern/-2008327948 var2632 var1363)) ; Statement: r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3) 
(define-const var2626 String (s/467378960 var2358)) ; Statement: $r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var482 var2677 (matcher/468719934 var1512 (cast-from-String-to-String var2626))) ; Statement: r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6) 
(assert true)
(define-const var1660 Bool (find/1809080823 var482)) ; Statement: $z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $i10 = (int) -1 
(assert (not (= (ite var1660 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var343 Int (start/-526965311 var482)) ; Statement: i8 = virtualinvoke r7.<java.util.regex.Matcher: int start()>() 
 ; Statement: goto [?= $i12 = (int) -1] 
(assert true) ; Non Conditional
(define-const var535 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar 
(assert (not (= var343 var535))) ; Cond: i8 != $i12 
(define-const var3375 var3124 var3124-init) ; Statement: $r21 = new freemarker.template.SimpleScalar 
(define-const var2802 var3124 var3375) ; Statement: $r19 = $r21 
(define-const var436 String (s/467378960 var2358)) ; Statement: $r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert (and true (and (>= 0 0) (>= (str.len var436) var343) (>= var343 0))))
(define-const var3883 String (substring/-1240304868 var436 0 var343)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i8) 
(assert true)
;(assert (<init>/378607920 var3375 var3883)) ; Statement: specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var3375!1 var3124)
(declare-const var3883!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var272_size/-959786421=([java.util.List], int), this$0/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_beforeBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var3224-to-var3908=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var615_parseFlagString/1923739702=([java.lang.String], long), cast-from-Int-to-Int=([long], int), var615_getPattern/-2008327948=([java.lang.String, int], java.util.regex.Pattern), s/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean), start/-526965311=([java.util.regex.Matcher], int), var3124-init=([], freemarker.template.SimpleScalar), substring/-1240304868=([java.lang.String, int, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var2822=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod, var2358=r1, var272=java.util.List, var3923=r0, var1316=i0, var3224=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI, var330=$r2, var3908=freemarker.core.BuiltIn, var3335=1, var2544=2, var1848=$r3, var2632=r4, var1885=$r17, var3364=$r18, var615=freemarker.core.RegexpHelper, var1071=$l7, var1464=$l1, var3209=$b2, var1363=$i3, var555=java.util.regex.Pattern, var1512=r5, var2626=$r6, var2677=java.util.regex.Matcher, var482=r7, var1660=$z0, var343=i8, var535=$i12, var3124=freemarker.template.SimpleScalar, var3375=$r21, var2802=$r19, var436=$r8, var3883=$r9}
; {freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod=var2822, r1=var2358, java.util.List=var272, r0=var3923, i0=var1316, freemarker.core.BuiltInsForStringsBasic$keep_beforeBI=var3224, $r2=var330, freemarker.core.BuiltIn=var3908, 1=var3335, 2=var2544, $r3=var1848, r4=var2632, $r17=var1885, $r18=var3364, freemarker.core.RegexpHelper=var615, $l7=var1071, $l1=var1464, $b2=var3209, $i3=var1363, java.util.regex.Pattern=var555, r5=var1512, $r6=var2626, java.util.regex.Matcher=var2677, r7=var482, $z0=var1660, i8=var343, $i12=var535, freemarker.template.SimpleScalar=var3124, $r21=var3375, $r19=var2802, $r8=var436, $r9=var3883}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l7 = 0L;	$r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	$r18 = virtualinvoke $r17.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1);	$l7 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r18);	goto [?= $l1 = $l7 & 4294967296L];	$l1 = $l7 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l7;	$i3 = (int) $l7;	r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3);	$r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6);	$z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $i10 = (int) -1;	i8 = virtualinvoke r7.<java.util.regex.Matcher: int start()>();	goto [?= $i12 = (int) -1];	$i12 = (int) -1;	if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar;	$r21 = new freemarker.template.SimpleScalar;	$r19 = $r21;	$r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i8);	specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r19
;block_num 8