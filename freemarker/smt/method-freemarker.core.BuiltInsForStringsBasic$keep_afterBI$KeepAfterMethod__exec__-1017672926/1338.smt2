(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var430 0)
(declare-sort var2244 0)
(declare-sort var3311 0)
(declare-sort var1102 0)
(declare-sort var2152 0)
(declare-sort var1573 0)
(declare-sort var1046 0)
(declare-sort var2469 0)
(declare-sort var1920 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2244_size/-959786421 (var2244) Int)
(declare-fun this$0/628736067 (var430) var3311)
(declare-fun checkMethodArgCount/509013054 (var1102 Int Int Int) void)
(declare-fun cast-from-var3311-to-var1102 (var3311) var1102)
(declare-fun getStringMethodArg/-1432244773 (var1102 var2244 Int) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1573_getPattern/-2008327948 (String Int) var2152)
(declare-fun s/628736067 (var430) String)
(declare-fun matcher/468719934 (var2152 String) var1046)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var1046) Bool)
(declare-fun var2469-init () var2469)
(declare-fun cast-from-var2469-to-var1920 (var2469) var1920)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun <init>/378607920 (var2469 String) void)
(declare-const null-var430 var430)
(declare-const null-var2244 var2244)
(declare-const var2071 var430) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod 
(assert (not (= var2071 null-var430)))
(declare-const var938 var2244) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var938 null-var2244)))
(define-const var2051 Int (var2244_size/-959786421 var938)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var3496 var3311 (this$0/628736067 var2071)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var3311-to-var1102 var3496) var2051 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var3496!1 var3311)
(declare-const var2051!1 Int)
(declare-const var1349 Int)
(declare-const var1882 Int)
(define-const var396 var3311 (this$0/628736067 var2071)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0> 
(assert true)
(define-const var3510 String (getStringMethodArg/-1432244773 (cast-from-var3311-to-var1102 var396) var938 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l8 = 0L 
(assert (<= var2051!1 1)) ; Cond: i0 <= 1 
(define-const var1158 Int 0) ; Statement: $l8 = 0L 
(assert true) ; Non Conditional
(define-const var2372 Int (bv2nat (bvand ((_ int2bv 64) var1158) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l8 & 4294967296L 
(define-const var2348 Int (ite (> var2372 0) 1 (ite (< var2372 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l8 
(assert (not (= var2348 0))) ; Cond: $b2 != 0 
(define-const var1666 Int (cast-from-Int-to-Int var1158)) ; Statement: $i3 = (int) $l8 
(define-const var1407 var2152 (var1573_getPattern/-2008327948 var3510 var1666)) ; Statement: r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3) 
(define-const var1687 String (s/628736067 var2071)) ; Statement: $r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: java.lang.String s> 
(assert true)
(define-const var3885 var1046 (matcher/468719934 var1407 (cast-from-String-to-String var1687))) ; Statement: r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6) 
(assert true)
(define-const var3483 Bool (find/1809080823 var3885)) ; Statement: $z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $i11 = (int) -1 
(assert (= (ite var3483 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1254 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
(define-const var2191 Int var1254) ; Statement: i9 = $i11 
(assert true) ; Non Conditional
(define-const var2477 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: if i9 != $i13 goto $r19 = new freemarker.template.SimpleScalar 
(assert (not (= var2191 var2477))) ; Cond: i9 != $i13 
(define-const var3917 var2469 var2469-init) ; Statement: $r19 = new freemarker.template.SimpleScalar 
(define-const var3389 var1920 (cast-from-var2469-to-var1920 var3917)) ; Statement: $r18 = $r19 
(define-const var1569 String (s/628736067 var2071)) ; Statement: $r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: java.lang.String s> 
(assert (and true (and (>= var2191 0) (>= (str.len var1569) var2191))))
(define-const var2600 String (substring/850833817 var1569 var2191)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int)>(i9) 
(assert true)
;(assert (<init>/378607920 var3917 var2600)) ; Statement: specialinvoke $r19.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var3917!1 var2469)
(declare-const var2600!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var2244_size/-959786421=([java.util.List], int), this$0/628736067=([freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod], freemarker.core.BuiltInsForStringsBasic$keep_afterBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var3311-to-var1102=([freemarker.core.BuiltInsForStringsBasic$keep_afterBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), cast-from-Int-to-Int=([long], int), var1573_getPattern/-2008327948=([java.lang.String, int], java.util.regex.Pattern), s/628736067=([freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean), var2469-init=([], freemarker.template.SimpleScalar), cast-from-var2469-to-var1920=([freemarker.template.SimpleScalar], freemarker.template.TemplateModel), substring/850833817=([java.lang.String, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var430=freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod, var2071=r1, var2244=java.util.List, var938=r0, var2051=i0, var3311=freemarker.core.BuiltInsForStringsBasic$keep_afterBI, var3496=$r2, var1102=freemarker.core.BuiltIn, var1349=1, var1882=2, var396=$r3, var3510=r4, var1158=$l8, var2372=$l1, var2348=$b2, var1666=$i3, var2152=java.util.regex.Pattern, var1573=freemarker.core.RegexpHelper, var1407=r5, var1687=$r6, var1046=java.util.regex.Matcher, var3885=r7, var3483=$z0, var1254=$i11, var2191=i9, var2477=$i13, var2469=freemarker.template.SimpleScalar, var3917=$r19, var1920=freemarker.template.TemplateModel, var3389=$r18, var1569=$r8, var2600=$r9}
; {freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod=var430, r1=var2071, java.util.List=var2244, r0=var938, i0=var2051, freemarker.core.BuiltInsForStringsBasic$keep_afterBI=var3311, $r2=var3496, freemarker.core.BuiltIn=var1102, 1=var1349, 2=var1882, $r3=var396, r4=var3510, $l8=var1158, $l1=var2372, $b2=var2348, $i3=var1666, java.util.regex.Pattern=var2152, freemarker.core.RegexpHelper=var1573, r5=var1407, $r6=var1687, java.util.regex.Matcher=var1046, r7=var3885, $z0=var3483, $i11=var1254, i9=var2191, $i13=var2477, freemarker.template.SimpleScalar=var2469, $r19=var3917, freemarker.template.TemplateModel=var1920, $r18=var3389, $r8=var1569, $r9=var2600}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_afterBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l8 = 0L;	$l8 = 0L;	$l1 = $l8 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l8;	$i3 = (int) $l8;	r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3);	$r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: java.lang.String s>;	r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6);	$z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $i11 = (int) -1;	$i11 = (int) -1;	i9 = $i11;	$i13 = (int) -1;	if i9 != $i13 goto $r19 = new freemarker.template.SimpleScalar;	$r19 = new freemarker.template.SimpleScalar;	$r18 = $r19;	$r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod: java.lang.String s>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int)>(i9);	specialinvoke $r19.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r18
;block_num 8