(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1181 0)
(declare-sort var2784 0)
(declare-sort var915 0)
(declare-sort var1262 0)
(declare-sort var2583 0)
(declare-sort var1480 0)
(declare-sort var1278 0)
(declare-sort var1216 0)
(declare-sort var1946 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2784_size/-959786421 (var2784) Int)
(declare-fun this$0/628736067 (var1181) var915)
(declare-fun checkMethodArgCount/509013054 (var1262 Int Int Int) void)
(declare-fun cast-from-var915-to-var1262 (var915) var1262)
(declare-fun getStringMethodArg/-1432244773 (var1262 var2784 Int) String)
(declare-fun var2583_parseFlagString/1923739702 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2583_getPattern/-2008327948 (String Int) var1480)
(declare-fun s/628736067 (var1181) String)
(declare-fun matcher/468719934 (var1480 String) var1278)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var1278) Bool)
(declare-fun end/8760360 (var1278) Int)
(declare-fun var1216-init () var1216)
(declare-fun cast-from-var1216-to-var1946 (var1216) var1946)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun <init>/378607920 (var1216 String) void)
(declare-const null-var1181 var1181)
(declare-const null-var2784 var2784)
(declare-const var1189 var1181) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod 
(assert (not (= var1189 null-var1181)))
(declare-const var2783 var2784) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var2783 null-var2784)))
(define-const var101 Int (var2784_size/-959786421 var2783)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var1476 var915 (this$0/628736067 var1189)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var915-to-var1262 var1476) var101 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var1476!1 var915)
(declare-const var101!1 Int)
(declare-const var2297 Int)
(declare-const var1107 Int)
(define-const var3848 var915 (this$0/628736067 var1189)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0> 
(assert true)
(define-const var2002 String (getStringMethodArg/-1432244773 (cast-from-var915-to-var1262 var3848) var2783 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l8 = 0L 
(assert (not (<= var101!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var3257 var915 (this$0/628736067 var1189)) ; Statement: $r16 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0> 
(assert true)
(define-const var3784 String (getStringMethodArg/-1432244773 (cast-from-var915-to-var1262 var3257) var2783 1)) ; Statement: $r17 = virtualinvoke $r16.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1) 
(define-const var1557 Int (var2583_parseFlagString/1923739702 var3784)) ; Statement: $l8 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r17) 
 ; Statement: goto [?= $l1 = $l8 & 4294967296L] 
(assert true) ; Non Conditional
(define-const var3691 Int (bv2nat (bvand ((_ int2bv 64) var1557) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l8 & 4294967296L 
(define-const var1542 Int (ite (> var3691 0) 1 (ite (< var3691 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l8 
(assert (not (= var1542 0))) ; Cond: $b2 != 0 
(define-const var212 Int (cast-from-Int-to-Int var1557)) ; Statement: $i3 = (int) $l8 
(define-const var1852 var1480 (var2583_getPattern/-2008327948 var2002 var212)) ; Statement: r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3) 
(define-const var3632 String (s/628736067 var1189)) ; Statement: $r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: java.lang.String s> 
(assert true)
(define-const var1526 var1278 (matcher/468719934 var1852 (cast-from-String-to-String var3632))) ; Statement: r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6) 
(assert true)
(define-const var2202 Bool (find/1809080823 var1526)) ; Statement: $z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $i11 = (int) -1 
(assert (not (= (ite var2202 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var729 Int (end/8760360 var1526)) ; Statement: i9 = virtualinvoke r7.<java.util.regex.Matcher: int end()>() 
 ; Statement: goto [?= $i13 = (int) -1] 
(assert true) ; Non Conditional
(define-const var3802 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: if i9 != $i13 goto $r19 = new freemarker.template.SimpleScalar 
(assert (not (= var729 var3802))) ; Cond: i9 != $i13 
(define-const var951 var1216 var1216-init) ; Statement: $r19 = new freemarker.template.SimpleScalar 
(define-const var1592 var1946 (cast-from-var1216-to-var1946 var951)) ; Statement: $r18 = $r19 
(define-const var1151 String (s/628736067 var1189)) ; Statement: $r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: java.lang.String s> 
(assert (and true (and (>= var729 0) (>= (str.len var1151) var729))))
(define-const var2838 String (substring/850833817 var1151 var729)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int)>(i9) 
(assert true)
;(assert (<init>/378607920 var951 var2838)) ; Statement: specialinvoke $r19.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var951!1 var1216)
(declare-const var2838!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var2784_size/-959786421=([java.util.List], int), this$0/628736067=([freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod], freemarker.core.BuiltInsForStringsBasic$keep_afterBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var915-to-var1262=([freemarker.core.BuiltInsForStringsBasic$keep_afterBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var2583_parseFlagString/1923739702=([java.lang.String], long), cast-from-Int-to-Int=([long], int), var2583_getPattern/-2008327948=([java.lang.String, int], java.util.regex.Pattern), s/628736067=([freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean), end/8760360=([java.util.regex.Matcher], int), var1216-init=([], freemarker.template.SimpleScalar), cast-from-var1216-to-var1946=([freemarker.template.SimpleScalar], freemarker.template.TemplateModel), substring/850833817=([java.lang.String, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var1181=freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod, var1189=r1, var2784=java.util.List, var2783=r0, var101=i0, var915=freemarker.core.BuiltInsForStringsBasic$keep_afterBI, var1476=$r2, var1262=freemarker.core.BuiltIn, var2297=1, var1107=2, var3848=$r3, var2002=r4, var3257=$r16, var3784=$r17, var2583=freemarker.core.RegexpHelper, var1557=$l8, var3691=$l1, var1542=$b2, var212=$i3, var1480=java.util.regex.Pattern, var1852=r5, var3632=$r6, var1278=java.util.regex.Matcher, var1526=r7, var2202=$z0, var729=i9, var3802=$i13, var1216=freemarker.template.SimpleScalar, var951=$r19, var1946=freemarker.template.TemplateModel, var1592=$r18, var1151=$r8, var2838=$r9}
; {freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod=var1181, r1=var1189, java.util.List=var2784, r0=var2783, i0=var101, freemarker.core.BuiltInsForStringsBasic$keep_afterBI=var915, $r2=var1476, freemarker.core.BuiltIn=var1262, 1=var2297, 2=var1107, $r3=var3848, r4=var2002, $r16=var3257, $r17=var3784, freemarker.core.RegexpHelper=var2583, $l8=var1557, $l1=var3691, $b2=var1542, $i3=var212, java.util.regex.Pattern=var1480, r5=var1852, $r6=var3632, java.util.regex.Matcher=var1278, r7=var1526, $z0=var2202, i9=var729, $i13=var3802, freemarker.template.SimpleScalar=var1216, $r19=var951, freemarker.template.TemplateModel=var1946, $r18=var1592, $r8=var1151, $r9=var2838}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l8 = 0L;	$r16 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0>;	$r17 = virtualinvoke $r16.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1);	$l8 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r17);	goto [?= $l1 = $l8 & 4294967296L];	$l1 = $l8 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l8;	$i3 = (int) $l8;	r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3);	$r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: java.lang.String s>;	r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6);	$z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $i11 = (int) -1;	i9 = virtualinvoke r7.<java.util.regex.Matcher: int end()>();	goto [?= $i13 = (int) -1];	$i13 = (int) -1;	if i9 != $i13 goto $r19 = new freemarker.template.SimpleScalar;	$r19 = new freemarker.template.SimpleScalar;	$r18 = $r19;	$r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: java.lang.String s>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int)>(i9);	specialinvoke $r19.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r18
;block_num 8