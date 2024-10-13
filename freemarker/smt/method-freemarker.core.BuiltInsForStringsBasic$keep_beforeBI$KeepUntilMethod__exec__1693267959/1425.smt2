(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1379 0)
(declare-sort var1043 0)
(declare-sort var346 0)
(declare-sort var1000 0)
(declare-sort var327 0)
(declare-sort var1981 0)
(declare-sort var1896 0)
(declare-sort var2793 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1043_size/-959786421 (var1043) Int)
(declare-fun this$0/467378960 (var1379) var346)
(declare-fun checkMethodArgCount/509013054 (var1000 Int Int Int) void)
(declare-fun cast-from-var346-to-var1000 (var346) var1000)
(declare-fun getStringMethodArg/-1432244773 (var1000 var1043 Int) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1981_getPattern/-2008327948 (String Int) var327)
(declare-fun s/467378960 (var1379) String)
(declare-fun matcher/468719934 (var327 String) var1896)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var1896) Bool)
(declare-fun var2793-init () var2793)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun <init>/378607920 (var2793 String) void)
(declare-const null-var1379 var1379)
(declare-const null-var1043 var1043)
(declare-const var3645 var1379) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod 
(assert (not (= var3645 null-var1379)))
(declare-const var992 var1043) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var992 null-var1043)))
(define-const var3688 Int (var1043_size/-959786421 var992)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var1065 var346 (this$0/467378960 var3645)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var346-to-var1000 var1065) var3688 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var1065!1 var346)
(declare-const var3688!1 Int)
(declare-const var3408 Int)
(declare-const var464 Int)
(define-const var2774 var346 (this$0/467378960 var3645)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var1313 String (getStringMethodArg/-1432244773 (cast-from-var346-to-var1000 var2774) var992 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l7 = 0L 
(assert (<= var3688!1 1)) ; Cond: i0 <= 1 
(define-const var2218 Int 0) ; Statement: $l7 = 0L 
(assert true) ; Non Conditional
(define-const var3731 Int (bv2nat (bvand ((_ int2bv 64) var2218) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l7 & 4294967296L 
(define-const var1673 Int (ite (> var3731 0) 1 (ite (< var3731 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l7 
(assert (not (= var1673 0))) ; Cond: $b2 != 0 
(define-const var3506 Int (cast-from-Int-to-Int var2218)) ; Statement: $i3 = (int) $l7 
(define-const var2015 var327 (var1981_getPattern/-2008327948 var1313 var3506)) ; Statement: r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3) 
(define-const var2133 String (s/467378960 var3645)) ; Statement: $r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var3545 var1896 (matcher/468719934 var2015 (cast-from-String-to-String var2133))) ; Statement: r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6) 
(assert true)
(define-const var288 Bool (find/1809080823 var3545)) ; Statement: $z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $i10 = (int) -1 
(assert (= (ite var288 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1951 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
(define-const var3416 Int var1951) ; Statement: i8 = $i10 
(assert true) ; Non Conditional
(define-const var320 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar 
(assert (not (= var3416 var320))) ; Cond: i8 != $i12 
(define-const var1775 var2793 var2793-init) ; Statement: $r21 = new freemarker.template.SimpleScalar 
(define-const var726 var2793 var1775) ; Statement: $r19 = $r21 
(define-const var2032 String (s/467378960 var3645)) ; Statement: $r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert (and true (and (>= 0 0) (>= (str.len var2032) var3416) (>= var3416 0))))
(define-const var1822 String (substring/-1240304868 var2032 0 var3416)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i8) 
(assert true)
;(assert (<init>/378607920 var1775 var1822)) ; Statement: specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var1775!1 var2793)
(declare-const var1822!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var1043_size/-959786421=([java.util.List], int), this$0/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_beforeBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var346-to-var1000=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), cast-from-Int-to-Int=([long], int), var1981_getPattern/-2008327948=([java.lang.String, int], java.util.regex.Pattern), s/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean), var2793-init=([], freemarker.template.SimpleScalar), substring/-1240304868=([java.lang.String, int, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var1379=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod, var3645=r1, var1043=java.util.List, var992=r0, var3688=i0, var346=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI, var1065=$r2, var1000=freemarker.core.BuiltIn, var3408=1, var464=2, var2774=$r3, var1313=r4, var2218=$l7, var3731=$l1, var1673=$b2, var3506=$i3, var327=java.util.regex.Pattern, var1981=freemarker.core.RegexpHelper, var2015=r5, var2133=$r6, var1896=java.util.regex.Matcher, var3545=r7, var288=$z0, var1951=$i10, var3416=i8, var320=$i12, var2793=freemarker.template.SimpleScalar, var1775=$r21, var726=$r19, var2032=$r8, var1822=$r9}
; {freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod=var1379, r1=var3645, java.util.List=var1043, r0=var992, i0=var3688, freemarker.core.BuiltInsForStringsBasic$keep_beforeBI=var346, $r2=var1065, freemarker.core.BuiltIn=var1000, 1=var3408, 2=var464, $r3=var2774, r4=var1313, $l7=var2218, $l1=var3731, $b2=var1673, $i3=var3506, java.util.regex.Pattern=var327, freemarker.core.RegexpHelper=var1981, r5=var2015, $r6=var2133, java.util.regex.Matcher=var1896, r7=var3545, $z0=var288, $i10=var1951, i8=var3416, $i12=var320, freemarker.template.SimpleScalar=var2793, $r21=var1775, $r19=var726, $r8=var2032, $r9=var1822}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l7 = 0L;	$l7 = 0L;	$l1 = $l7 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l7;	$i3 = (int) $l7;	r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3);	$r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6);	$z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $i10 = (int) -1;	$i10 = (int) -1;	i8 = $i10;	$i12 = (int) -1;	if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar;	$r21 = new freemarker.template.SimpleScalar;	$r19 = $r21;	$r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i8);	specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r19
;block_num 8