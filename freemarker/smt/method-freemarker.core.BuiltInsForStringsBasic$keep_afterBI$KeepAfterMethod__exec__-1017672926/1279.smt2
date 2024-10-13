(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var677 0)
(declare-sort var3273 0)
(declare-sort var593 0)
(declare-sort var2464 0)
(declare-sort var3662 0)
(declare-sort var1365 0)
(declare-sort var3960 0)
(declare-sort var3393 0)
(declare-sort var271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3273_size/-959786421 (var3273) Int)
(declare-fun this$0/628736067 (var677) var593)
(declare-fun checkMethodArgCount/509013054 (var2464 Int Int Int) void)
(declare-fun cast-from-var593-to-var2464 (var593) var2464)
(declare-fun getStringMethodArg/-1432244773 (var2464 var3273 Int) String)
(declare-fun var3662_parseFlagString/1923739702 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3662_getPattern/-2008327948 (String Int) var1365)
(declare-fun s/628736067 (var677) String)
(declare-fun matcher/468719934 (var1365 String) var3960)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var3960) Bool)
(declare-fun var3393-init () var3393)
(declare-fun cast-from-var3393-to-var271 (var3393) var271)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun <init>/378607920 (var3393 String) void)
(declare-const null-var677 var677)
(declare-const null-var3273 var3273)
(declare-const var1157 var677) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod 
(assert (not (= var1157 null-var677)))
(declare-const var3996 var3273) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var3996 null-var3273)))
(define-const var2834 Int (var3273_size/-959786421 var3996)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var46 var593 (this$0/628736067 var1157)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var593-to-var2464 var46) var2834 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var46!1 var593)
(declare-const var2834!1 Int)
(declare-const var764 Int)
(declare-const var2993 Int)
(define-const var3984 var593 (this$0/628736067 var1157)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0> 
(assert true)
(define-const var749 String (getStringMethodArg/-1432244773 (cast-from-var593-to-var2464 var3984) var3996 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l8 = 0L 
(assert (not (<= var2834!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var540 var593 (this$0/628736067 var1157)) ; Statement: $r16 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0> 
(assert true)
(define-const var2552 String (getStringMethodArg/-1432244773 (cast-from-var593-to-var2464 var540) var3996 1)) ; Statement: $r17 = virtualinvoke $r16.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1) 
(define-const var292 Int (var3662_parseFlagString/1923739702 var2552)) ; Statement: $l8 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r17) 
 ; Statement: goto [?= $l1 = $l8 & 4294967296L] 
(assert true) ; Non Conditional
(define-const var1791 Int (bv2nat (bvand ((_ int2bv 64) var292) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l8 & 4294967296L 
(define-const var3302 Int (ite (> var1791 0) 1 (ite (< var1791 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l8 
(assert (not (= var3302 0))) ; Cond: $b2 != 0 
(define-const var3894 Int (cast-from-Int-to-Int var292)) ; Statement: $i3 = (int) $l8 
(define-const var2459 var1365 (var3662_getPattern/-2008327948 var749 var3894)) ; Statement: r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3) 
(define-const var3720 String (s/628736067 var1157)) ; Statement: $r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: java.lang.String s> 
(assert true)
(define-const var1836 var3960 (matcher/468719934 var2459 (cast-from-String-to-String var3720))) ; Statement: r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6) 
(assert true)
(define-const var3240 Bool (find/1809080823 var1836)) ; Statement: $z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $i11 = (int) -1 
(assert (= (ite var3240 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1441 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
(define-const var642 Int var1441) ; Statement: i9 = $i11 
(assert true) ; Non Conditional
(define-const var1044 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: if i9 != $i13 goto $r19 = new freemarker.template.SimpleScalar 
(assert (not (= var642 var1044))) ; Cond: i9 != $i13 
(define-const var3540 var3393 var3393-init) ; Statement: $r19 = new freemarker.template.SimpleScalar 
(define-const var1231 var271 (cast-from-var3393-to-var271 var3540)) ; Statement: $r18 = $r19 
(define-const var1246 String (s/628736067 var1157)) ; Statement: $r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: java.lang.String s> 
(assert (and true (and (>= var642 0) (>= (str.len var1246) var642))))
(define-const var3003 String (substring/850833817 var1246 var642)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int)>(i9) 
(assert true)
;(assert (<init>/378607920 var3540 var3003)) ; Statement: specialinvoke $r19.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var3540!1 var3393)
(declare-const var3003!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var3273_size/-959786421=([java.util.List], int), this$0/628736067=([freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod], freemarker.core.BuiltInsForStringsBasic$keep_afterBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var593-to-var2464=([freemarker.core.BuiltInsForStringsBasic$keep_afterBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var3662_parseFlagString/1923739702=([java.lang.String], long), cast-from-Int-to-Int=([long], int), var3662_getPattern/-2008327948=([java.lang.String, int], java.util.regex.Pattern), s/628736067=([freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean), var3393-init=([], freemarker.template.SimpleScalar), cast-from-var3393-to-var271=([freemarker.template.SimpleScalar], freemarker.template.TemplateModel), substring/850833817=([java.lang.String, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var677=freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod, var1157=r1, var3273=java.util.List, var3996=r0, var2834=i0, var593=freemarker.core.BuiltInsForStringsBasic$keep_afterBI, var46=$r2, var2464=freemarker.core.BuiltIn, var764=1, var2993=2, var3984=$r3, var749=r4, var540=$r16, var2552=$r17, var3662=freemarker.core.RegexpHelper, var292=$l8, var1791=$l1, var3302=$b2, var3894=$i3, var1365=java.util.regex.Pattern, var2459=r5, var3720=$r6, var3960=java.util.regex.Matcher, var1836=r7, var3240=$z0, var1441=$i11, var642=i9, var1044=$i13, var3393=freemarker.template.SimpleScalar, var3540=$r19, var271=freemarker.template.TemplateModel, var1231=$r18, var1246=$r8, var3003=$r9}
; {freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod=var677, r1=var1157, java.util.List=var3273, r0=var3996, i0=var2834, freemarker.core.BuiltInsForStringsBasic$keep_afterBI=var593, $r2=var46, freemarker.core.BuiltIn=var2464, 1=var764, 2=var2993, $r3=var3984, r4=var749, $r16=var540, $r17=var2552, freemarker.core.RegexpHelper=var3662, $l8=var292, $l1=var1791, $b2=var3302, $i3=var3894, java.util.regex.Pattern=var1365, r5=var2459, $r6=var3720, java.util.regex.Matcher=var3960, r7=var1836, $z0=var3240, $i11=var1441, i9=var642, $i13=var1044, freemarker.template.SimpleScalar=var3393, $r19=var3540, freemarker.template.TemplateModel=var271, $r18=var1231, $r8=var1246, $r9=var3003}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l8 = 0L;	$r16 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0>;	$r17 = virtualinvoke $r16.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1);	$l8 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r17);	goto [?= $l1 = $l8 & 4294967296L];	$l1 = $l8 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l8;	$i3 = (int) $l8;	r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3);	$r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: java.lang.String s>;	r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6);	$z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $i11 = (int) -1;	$i11 = (int) -1;	i9 = $i11;	$i13 = (int) -1;	if i9 != $i13 goto $r19 = new freemarker.template.SimpleScalar;	$r19 = new freemarker.template.SimpleScalar;	$r18 = $r19;	$r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: java.lang.String s>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int)>(i9);	specialinvoke $r19.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r18
;block_num 8