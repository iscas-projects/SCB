(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3987 0)
(declare-sort var1018 0)
(declare-sort var2638 0)
(declare-sort var950 0)
(declare-sort var208 0)
(declare-sort var1987 0)
(declare-sort var190 0)
(declare-sort var2748 0)
(declare-sort var1074 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1018_size/-959786421 (var1018) Int)
(declare-fun this$0/628736067 (var3987) var2638)
(declare-fun checkMethodArgCount/509013054 (var950 Int Int Int) void)
(declare-fun cast-from-var2638-to-var950 (var2638) var950)
(declare-fun getStringMethodArg/-1432244773 (var950 var1018 Int) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1987_getPattern/-2008327948 (String Int) var208)
(declare-fun s/628736067 (var3987) String)
(declare-fun matcher/468719934 (var208 String) var190)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var190) Bool)
(declare-fun end/8760360 (var190) Int)
(declare-fun var2748-init () var2748)
(declare-fun cast-from-var2748-to-var1074 (var2748) var1074)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun <init>/378607920 (var2748 String) void)
(declare-const null-var3987 var3987)
(declare-const null-var1018 var1018)
(declare-const var3140 var3987) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod 
(assert (not (= var3140 null-var3987)))
(declare-const var392 var1018) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var392 null-var1018)))
(define-const var1369 Int (var1018_size/-959786421 var392)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var145 var2638 (this$0/628736067 var3140)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var2638-to-var950 var145) var1369 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var145!1 var2638)
(declare-const var1369!1 Int)
(declare-const var1031 Int)
(declare-const var1169 Int)
(define-const var618 var2638 (this$0/628736067 var3140)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0> 
(assert true)
(define-const var3035 String (getStringMethodArg/-1432244773 (cast-from-var2638-to-var950 var618) var392 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l8 = 0L 
(assert (<= var1369!1 1)) ; Cond: i0 <= 1 
(define-const var704 Int 0) ; Statement: $l8 = 0L 
(assert true) ; Non Conditional
(define-const var3324 Int (bv2nat (bvand ((_ int2bv 64) var704) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l8 & 4294967296L 
(define-const var539 Int (ite (> var3324 0) 1 (ite (< var3324 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l8 
(assert (not (= var539 0))) ; Cond: $b2 != 0 
(define-const var2620 Int (cast-from-Int-to-Int var704)) ; Statement: $i3 = (int) $l8 
(define-const var3862 var208 (var1987_getPattern/-2008327948 var3035 var2620)) ; Statement: r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3) 
(define-const var1814 String (s/628736067 var3140)) ; Statement: $r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: java.lang.String s> 
(assert true)
(define-const var1590 var190 (matcher/468719934 var3862 (cast-from-String-to-String var1814))) ; Statement: r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6) 
(assert true)
(define-const var2551 Bool (find/1809080823 var1590)) ; Statement: $z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $i11 = (int) -1 
(assert (not (= (ite var2551 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var371 Int (end/8760360 var1590)) ; Statement: i9 = virtualinvoke r7.<java.util.regex.Matcher: int end()>() 
 ; Statement: goto [?= $i13 = (int) -1] 
(assert true) ; Non Conditional
(define-const var1217 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: if i9 != $i13 goto $r19 = new freemarker.template.SimpleScalar 
(assert (not (= var371 var1217))) ; Cond: i9 != $i13 
(define-const var3 var2748 var2748-init) ; Statement: $r19 = new freemarker.template.SimpleScalar 
(define-const var2552 var1074 (cast-from-var2748-to-var1074 var3)) ; Statement: $r18 = $r19 
(define-const var3106 String (s/628736067 var3140)) ; Statement: $r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: java.lang.String s> 
(assert (and true (and (>= var371 0) (>= (str.len var3106) var371))))
(define-const var784 String (substring/850833817 var3106 var371)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int)>(i9) 
(assert true)
;(assert (<init>/378607920 var3 var784)) ; Statement: specialinvoke $r19.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var3!1 var2748)
(declare-const var784!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var1018_size/-959786421=([java.util.List], int), this$0/628736067=([freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod], freemarker.core.BuiltInsForStringsBasic$keep_afterBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var2638-to-var950=([freemarker.core.BuiltInsForStringsBasic$keep_afterBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), cast-from-Int-to-Int=([long], int), var1987_getPattern/-2008327948=([java.lang.String, int], java.util.regex.Pattern), s/628736067=([freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean), end/8760360=([java.util.regex.Matcher], int), var2748-init=([], freemarker.template.SimpleScalar), cast-from-var2748-to-var1074=([freemarker.template.SimpleScalar], freemarker.template.TemplateModel), substring/850833817=([java.lang.String, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var3987=freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod, var3140=r1, var1018=java.util.List, var392=r0, var1369=i0, var2638=freemarker.core.BuiltInsForStringsBasic$keep_afterBI, var145=$r2, var950=freemarker.core.BuiltIn, var1031=1, var1169=2, var618=$r3, var3035=r4, var704=$l8, var3324=$l1, var539=$b2, var2620=$i3, var208=java.util.regex.Pattern, var1987=freemarker.core.RegexpHelper, var3862=r5, var1814=$r6, var190=java.util.regex.Matcher, var1590=r7, var2551=$z0, var371=i9, var1217=$i13, var2748=freemarker.template.SimpleScalar, var3=$r19, var1074=freemarker.template.TemplateModel, var2552=$r18, var3106=$r8, var784=$r9}
; {freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod=var3987, r1=var3140, java.util.List=var1018, r0=var392, i0=var1369, freemarker.core.BuiltInsForStringsBasic$keep_afterBI=var2638, $r2=var145, freemarker.core.BuiltIn=var950, 1=var1031, 2=var1169, $r3=var618, r4=var3035, $l8=var704, $l1=var3324, $b2=var539, $i3=var2620, java.util.regex.Pattern=var208, freemarker.core.RegexpHelper=var1987, r5=var3862, $r6=var1814, java.util.regex.Matcher=var190, r7=var1590, $z0=var2551, i9=var371, $i13=var1217, freemarker.template.SimpleScalar=var2748, $r19=var3, freemarker.template.TemplateModel=var1074, $r18=var2552, $r8=var3106, $r9=var784}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l8 = 0L;	$l8 = 0L;	$l1 = $l8 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l8;	$i3 = (int) $l8;	r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3);	$r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: java.lang.String s>;	r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6);	$z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $i11 = (int) -1;	i9 = virtualinvoke r7.<java.util.regex.Matcher: int end()>();	goto [?= $i13 = (int) -1];	$i13 = (int) -1;	if i9 != $i13 goto $r19 = new freemarker.template.SimpleScalar;	$r19 = new freemarker.template.SimpleScalar;	$r18 = $r19;	$r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: java.lang.String s>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int)>(i9);	specialinvoke $r19.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r18
;block_num 8