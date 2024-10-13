(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2047 0)
(declare-sort var1930 0)
(declare-sort var2367 0)
(declare-sort var1524 0)
(declare-sort var2306 0)
(declare-sort var95 0)
(declare-sort var1828 0)
(declare-sort var762 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1930_size/-959786421 (var1930) Int)
(declare-fun this$0/467378960 (var2047) var2367)
(declare-fun checkMethodArgCount/509013054 (var1524 Int Int Int) void)
(declare-fun cast-from-var2367-to-var1524 (var2367) var1524)
(declare-fun getStringMethodArg/-1432244773 (var1524 var1930 Int) String)
(declare-fun var2306_parseFlagString/1923739702 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2306_getPattern/-2008327948 (String Int) var95)
(declare-fun s/467378960 (var2047) String)
(declare-fun matcher/468719934 (var95 String) var1828)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var1828) Bool)
(declare-fun var762-init () var762)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun <init>/378607920 (var762 String) void)
(declare-const null-var2047 var2047)
(declare-const null-var1930 var1930)
(declare-const var341 var2047) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod 
(assert (not (= var341 null-var2047)))
(declare-const var3218 var1930) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var3218 null-var1930)))
(define-const var3017 Int (var1930_size/-959786421 var3218)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var3334 var2367 (this$0/467378960 var341)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var2367-to-var1524 var3334) var3017 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var3334!1 var2367)
(declare-const var3017!1 Int)
(declare-const var3624 Int)
(declare-const var2929 Int)
(define-const var1345 var2367 (this$0/467378960 var341)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var734 String (getStringMethodArg/-1432244773 (cast-from-var2367-to-var1524 var1345) var3218 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l7 = 0L 
(assert (not (<= var3017!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var2251 var2367 (this$0/467378960 var341)) ; Statement: $r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var3461 String (getStringMethodArg/-1432244773 (cast-from-var2367-to-var1524 var2251) var3218 1)) ; Statement: $r18 = virtualinvoke $r17.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1) 
(define-const var3530 Int (var2306_parseFlagString/1923739702 var3461)) ; Statement: $l7 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r18) 
 ; Statement: goto [?= $l1 = $l7 & 4294967296L] 
(assert true) ; Non Conditional
(define-const var1045 Int (bv2nat (bvand ((_ int2bv 64) var3530) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l7 & 4294967296L 
(define-const var1904 Int (ite (> var1045 0) 1 (ite (< var1045 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l7 
(assert (not (= var1904 0))) ; Cond: $b2 != 0 
(define-const var67 Int (cast-from-Int-to-Int var3530)) ; Statement: $i3 = (int) $l7 
(define-const var1349 var95 (var2306_getPattern/-2008327948 var734 var67)) ; Statement: r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3) 
(define-const var2524 String (s/467378960 var341)) ; Statement: $r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var3426 var1828 (matcher/468719934 var1349 (cast-from-String-to-String var2524))) ; Statement: r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6) 
(assert true)
(define-const var1718 Bool (find/1809080823 var3426)) ; Statement: $z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $i10 = (int) -1 
(assert (= (ite var1718 1 0) 0)) ; Cond: $z0 == 0 
(define-const var107 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
(define-const var3356 Int var107) ; Statement: i8 = $i10 
(assert true) ; Non Conditional
(define-const var2199 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar 
(assert (not (= var3356 var2199))) ; Cond: i8 != $i12 
(define-const var1091 var762 var762-init) ; Statement: $r21 = new freemarker.template.SimpleScalar 
(define-const var980 var762 var1091) ; Statement: $r19 = $r21 
(define-const var2807 String (s/467378960 var341)) ; Statement: $r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert (and true (and (>= 0 0) (>= (str.len var2807) var3356) (>= var3356 0))))
(define-const var592 String (substring/-1240304868 var2807 0 var3356)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i8) 
(assert true)
;(assert (<init>/378607920 var1091 var592)) ; Statement: specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var1091!1 var762)
(declare-const var592!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var1930_size/-959786421=([java.util.List], int), this$0/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_beforeBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var2367-to-var1524=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var2306_parseFlagString/1923739702=([java.lang.String], long), cast-from-Int-to-Int=([long], int), var2306_getPattern/-2008327948=([java.lang.String, int], java.util.regex.Pattern), s/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean), var762-init=([], freemarker.template.SimpleScalar), substring/-1240304868=([java.lang.String, int, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var2047=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod, var341=r1, var1930=java.util.List, var3218=r0, var3017=i0, var2367=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI, var3334=$r2, var1524=freemarker.core.BuiltIn, var3624=1, var2929=2, var1345=$r3, var734=r4, var2251=$r17, var3461=$r18, var2306=freemarker.core.RegexpHelper, var3530=$l7, var1045=$l1, var1904=$b2, var67=$i3, var95=java.util.regex.Pattern, var1349=r5, var2524=$r6, var1828=java.util.regex.Matcher, var3426=r7, var1718=$z0, var107=$i10, var3356=i8, var2199=$i12, var762=freemarker.template.SimpleScalar, var1091=$r21, var980=$r19, var2807=$r8, var592=$r9}
; {freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod=var2047, r1=var341, java.util.List=var1930, r0=var3218, i0=var3017, freemarker.core.BuiltInsForStringsBasic$keep_beforeBI=var2367, $r2=var3334, freemarker.core.BuiltIn=var1524, 1=var3624, 2=var2929, $r3=var1345, r4=var734, $r17=var2251, $r18=var3461, freemarker.core.RegexpHelper=var2306, $l7=var3530, $l1=var1045, $b2=var1904, $i3=var67, java.util.regex.Pattern=var95, r5=var1349, $r6=var2524, java.util.regex.Matcher=var1828, r7=var3426, $z0=var1718, $i10=var107, i8=var3356, $i12=var2199, freemarker.template.SimpleScalar=var762, $r21=var1091, $r19=var980, $r8=var2807, $r9=var592}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l7 = 0L;	$r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	$r18 = virtualinvoke $r17.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1);	$l7 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r18);	goto [?= $l1 = $l7 & 4294967296L];	$l1 = $l7 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l7;	$i3 = (int) $l7;	r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3);	$r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6);	$z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $i10 = (int) -1;	$i10 = (int) -1;	i8 = $i10;	$i12 = (int) -1;	if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar;	$r21 = new freemarker.template.SimpleScalar;	$r19 = $r21;	$r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i8);	specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r19
;block_num 8