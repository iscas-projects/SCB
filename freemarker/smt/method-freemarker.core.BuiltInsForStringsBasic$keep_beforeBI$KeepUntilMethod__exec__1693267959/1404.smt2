(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var871 0)
(declare-sort var2528 0)
(declare-sort var2861 0)
(declare-sort var2453 0)
(declare-sort var3520 0)
(declare-sort var1154 0)
(declare-sort var900 0)
(declare-sort var2962 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2528_size/-959786421 (var2528) Int)
(declare-fun this$0/467378960 (var871) var2861)
(declare-fun checkMethodArgCount/509013054 (var2453 Int Int Int) void)
(declare-fun cast-from-var2861-to-var2453 (var2861) var2453)
(declare-fun getStringMethodArg/-1432244773 (var2453 var2528 Int) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1154_getPattern/-2008327948 (String Int) var3520)
(declare-fun s/467378960 (var871) String)
(declare-fun matcher/468719934 (var3520 String) var900)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var900) Bool)
(declare-fun start/-526965311 (var900) Int)
(declare-fun var2962-init () var2962)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun <init>/378607920 (var2962 String) void)
(declare-const null-var871 var871)
(declare-const null-var2528 var2528)
(declare-const var766 var871) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod 
(assert (not (= var766 null-var871)))
(declare-const var1964 var2528) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var1964 null-var2528)))
(define-const var2606 Int (var2528_size/-959786421 var1964)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var579 var2861 (this$0/467378960 var766)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var2861-to-var2453 var579) var2606 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var579!1 var2861)
(declare-const var2606!1 Int)
(declare-const var3246 Int)
(declare-const var2932 Int)
(define-const var1128 var2861 (this$0/467378960 var766)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var2236 String (getStringMethodArg/-1432244773 (cast-from-var2861-to-var2453 var1128) var1964 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l7 = 0L 
(assert (<= var2606!1 1)) ; Cond: i0 <= 1 
(define-const var1903 Int 0) ; Statement: $l7 = 0L 
(assert true) ; Non Conditional
(define-const var612 Int (bv2nat (bvand ((_ int2bv 64) var1903) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l7 & 4294967296L 
(define-const var3184 Int (ite (> var612 0) 1 (ite (< var612 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l7 
(assert (not (= var3184 0))) ; Cond: $b2 != 0 
(define-const var333 Int (cast-from-Int-to-Int var1903)) ; Statement: $i3 = (int) $l7 
(define-const var671 var3520 (var1154_getPattern/-2008327948 var2236 var333)) ; Statement: r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3) 
(define-const var1577 String (s/467378960 var766)) ; Statement: $r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var2688 var900 (matcher/468719934 var671 (cast-from-String-to-String var1577))) ; Statement: r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6) 
(assert true)
(define-const var1639 Bool (find/1809080823 var2688)) ; Statement: $z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $i10 = (int) -1 
(assert (not (= (ite var1639 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3315 Int (start/-526965311 var2688)) ; Statement: i8 = virtualinvoke r7.<java.util.regex.Matcher: int start()>() 
 ; Statement: goto [?= $i12 = (int) -1] 
(assert true) ; Non Conditional
(define-const var223 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar 
(assert (not (= var3315 var223))) ; Cond: i8 != $i12 
(define-const var2322 var2962 var2962-init) ; Statement: $r21 = new freemarker.template.SimpleScalar 
(define-const var2126 var2962 var2322) ; Statement: $r19 = $r21 
(define-const var1535 String (s/467378960 var766)) ; Statement: $r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert (and true (and (>= 0 0) (>= (str.len var1535) var3315) (>= var3315 0))))
(define-const var73 String (substring/-1240304868 var1535 0 var3315)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i8) 
(assert true)
;(assert (<init>/378607920 var2322 var73)) ; Statement: specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var2322!1 var2962)
(declare-const var73!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var2528_size/-959786421=([java.util.List], int), this$0/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_beforeBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var2861-to-var2453=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), cast-from-Int-to-Int=([long], int), var1154_getPattern/-2008327948=([java.lang.String, int], java.util.regex.Pattern), s/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean), start/-526965311=([java.util.regex.Matcher], int), var2962-init=([], freemarker.template.SimpleScalar), substring/-1240304868=([java.lang.String, int, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var871=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod, var766=r1, var2528=java.util.List, var1964=r0, var2606=i0, var2861=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI, var579=$r2, var2453=freemarker.core.BuiltIn, var3246=1, var2932=2, var1128=$r3, var2236=r4, var1903=$l7, var612=$l1, var3184=$b2, var333=$i3, var3520=java.util.regex.Pattern, var1154=freemarker.core.RegexpHelper, var671=r5, var1577=$r6, var900=java.util.regex.Matcher, var2688=r7, var1639=$z0, var3315=i8, var223=$i12, var2962=freemarker.template.SimpleScalar, var2322=$r21, var2126=$r19, var1535=$r8, var73=$r9}
; {freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod=var871, r1=var766, java.util.List=var2528, r0=var1964, i0=var2606, freemarker.core.BuiltInsForStringsBasic$keep_beforeBI=var2861, $r2=var579, freemarker.core.BuiltIn=var2453, 1=var3246, 2=var2932, $r3=var1128, r4=var2236, $l7=var1903, $l1=var612, $b2=var3184, $i3=var333, java.util.regex.Pattern=var3520, freemarker.core.RegexpHelper=var1154, r5=var671, $r6=var1577, java.util.regex.Matcher=var900, r7=var2688, $z0=var1639, i8=var3315, $i12=var223, freemarker.template.SimpleScalar=var2962, $r21=var2322, $r19=var2126, $r8=var1535, $r9=var73}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l7 = 0L;	$l7 = 0L;	$l1 = $l7 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l7;	$i3 = (int) $l7;	r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3);	$r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6);	$z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $i10 = (int) -1;	i8 = virtualinvoke r7.<java.util.regex.Matcher: int start()>();	goto [?= $i12 = (int) -1];	$i12 = (int) -1;	if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar;	$r21 = new freemarker.template.SimpleScalar;	$r19 = $r21;	$r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i8);	specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r19
;block_num 8