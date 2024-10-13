(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var617 0)
(declare-sort var1765 0)
(declare-sort var219 0)
(declare-sort var1554 0)
(declare-sort var1515 0)
(declare-sort var697 0)
(declare-sort var3253 0)
(declare-sort var1750 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1765_size/-959786421 (var1765) Int)
(declare-fun this$0/467378960 (var617) var219)
(declare-fun checkMethodArgCount/509013054 (var1554 Int Int Int) void)
(declare-fun cast-from-var219-to-var1554 (var219) var1554)
(declare-fun getStringMethodArg/-1432244773 (var1554 var1765 Int) String)
(declare-fun var1515_parseFlagString/1923739702 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1515_getPattern/-2008327948 (String Int) var697)
(declare-fun s/467378960 (var617) String)
(declare-fun matcher/468719934 (var697 String) var3253)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var3253) Bool)
(declare-fun start/-526965311 (var3253) Int)
(declare-fun var1750-init () var1750)
(declare-fun <init>/378607920 (var1750 String) void)
(declare-const null-var617 var617)
(declare-const null-var1765 var1765)
(declare-const var1776 var617) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod 
(assert (not (= var1776 null-var617)))
(declare-const var582 var1765) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var582 null-var1765)))
(define-const var3629 Int (var1765_size/-959786421 var582)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var2903 var219 (this$0/467378960 var1776)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var219-to-var1554 var2903) var3629 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var2903!1 var219)
(declare-const var3629!1 Int)
(declare-const var3005 Int)
(declare-const var1984 Int)
(define-const var292 var219 (this$0/467378960 var1776)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var185 String (getStringMethodArg/-1432244773 (cast-from-var219-to-var1554 var292) var582 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l7 = 0L 
(assert (not (<= var3629!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var2399 var219 (this$0/467378960 var1776)) ; Statement: $r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var2135 String (getStringMethodArg/-1432244773 (cast-from-var219-to-var1554 var2399) var582 1)) ; Statement: $r18 = virtualinvoke $r17.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1) 
(define-const var510 Int (var1515_parseFlagString/1923739702 var2135)) ; Statement: $l7 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r18) 
 ; Statement: goto [?= $l1 = $l7 & 4294967296L] 
(assert true) ; Non Conditional
(define-const var643 Int (bv2nat (bvand ((_ int2bv 64) var510) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l7 & 4294967296L 
(define-const var3048 Int (ite (> var643 0) 1 (ite (< var643 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l7 
(assert (not (= var3048 0))) ; Cond: $b2 != 0 
(define-const var2762 Int (cast-from-Int-to-Int var510)) ; Statement: $i3 = (int) $l7 
(define-const var3088 var697 (var1515_getPattern/-2008327948 var185 var2762)) ; Statement: r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3) 
(define-const var303 String (s/467378960 var1776)) ; Statement: $r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var1846 var3253 (matcher/468719934 var3088 (cast-from-String-to-String var303))) ; Statement: r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6) 
(assert true)
(define-const var2881 Bool (find/1809080823 var1846)) ; Statement: $z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $i10 = (int) -1 
(assert (not (= (ite var2881 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var125 Int (start/-526965311 var1846)) ; Statement: i8 = virtualinvoke r7.<java.util.regex.Matcher: int start()>() 
 ; Statement: goto [?= $i12 = (int) -1] 
(assert true) ; Non Conditional
(define-const var1961 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar 
(assert (not (not (= var125 var1961)))) ; Negate: Cond: i8 != $i12  
(define-const var1615 var1750 var1750-init) ; Statement: $r20 = new freemarker.template.SimpleScalar 
(define-const var2216 var1750 var1615) ; Statement: $r19 = $r20 
(define-const var2919 String (s/467378960 var1776)) ; Statement: $r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
;(assert (<init>/378607920 var1615 var2919)) ; Statement: specialinvoke $r20.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10) 

(declare-const var1615!1 var1750)
(declare-const var2919!1 String)
 ; Statement: goto [?= return $r19] 
(assert true) ; Non Conditional
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var1765_size/-959786421=([java.util.List], int), this$0/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_beforeBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var219-to-var1554=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var1515_parseFlagString/1923739702=([java.lang.String], long), cast-from-Int-to-Int=([long], int), var1515_getPattern/-2008327948=([java.lang.String, int], java.util.regex.Pattern), s/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean), start/-526965311=([java.util.regex.Matcher], int), var1750-init=([], freemarker.template.SimpleScalar), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var617=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod, var1776=r1, var1765=java.util.List, var582=r0, var3629=i0, var219=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI, var2903=$r2, var1554=freemarker.core.BuiltIn, var3005=1, var1984=2, var292=$r3, var185=r4, var2399=$r17, var2135=$r18, var1515=freemarker.core.RegexpHelper, var510=$l7, var643=$l1, var3048=$b2, var2762=$i3, var697=java.util.regex.Pattern, var3088=r5, var303=$r6, var3253=java.util.regex.Matcher, var1846=r7, var2881=$z0, var125=i8, var1961=$i12, var1750=freemarker.template.SimpleScalar, var1615=$r20, var2216=$r19, var2919=$r10}
; {freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod=var617, r1=var1776, java.util.List=var1765, r0=var582, i0=var3629, freemarker.core.BuiltInsForStringsBasic$keep_beforeBI=var219, $r2=var2903, freemarker.core.BuiltIn=var1554, 1=var3005, 2=var1984, $r3=var292, r4=var185, $r17=var2399, $r18=var2135, freemarker.core.RegexpHelper=var1515, $l7=var510, $l1=var643, $b2=var3048, $i3=var2762, java.util.regex.Pattern=var697, r5=var3088, $r6=var303, java.util.regex.Matcher=var3253, r7=var1846, $z0=var2881, i8=var125, $i12=var1961, freemarker.template.SimpleScalar=var1750, $r20=var1615, $r19=var2216, $r10=var2919}
;seq 
;cnt {}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l7 = 0L;	$r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	$r18 = virtualinvoke $r17.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1);	$l7 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r18);	goto [?= $l1 = $l7 & 4294967296L];	$l1 = $l7 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l7;	$i3 = (int) $l7;	r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3);	$r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6);	$z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $i10 = (int) -1;	i8 = virtualinvoke r7.<java.util.regex.Matcher: int start()>();	goto [?= $i12 = (int) -1];	$i12 = (int) -1;	if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar;	$r20 = new freemarker.template.SimpleScalar;	$r19 = $r20;	$r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	specialinvoke $r20.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10);	goto [?= return $r19];	return $r19
;block_num 8