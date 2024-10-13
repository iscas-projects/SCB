(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2183 0)
(declare-sort var2185 0)
(declare-sort var985 0)
(declare-sort var3539 0)
(declare-sort var371 0)
(declare-sort var3426 0)
(declare-sort var3015 0)
(declare-sort var2686 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2185_size/-959786421 (var2185) Int)
(declare-fun this$0/467378960 (var2183) var985)
(declare-fun checkMethodArgCount/509013054 (var3539 Int Int Int) void)
(declare-fun cast-from-var985-to-var3539 (var985) var3539)
(declare-fun getStringMethodArg/-1432244773 (var3539 var2185 Int) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3426_getPattern/-2008327948 (String Int) var371)
(declare-fun s/467378960 (var2183) String)
(declare-fun matcher/468719934 (var371 String) var3015)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var3015) Bool)
(declare-fun var2686-init () var2686)
(declare-fun <init>/378607920 (var2686 String) void)
(declare-const null-var2183 var2183)
(declare-const null-var2185 var2185)
(declare-const var459 var2183) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod 
(assert (not (= var459 null-var2183)))
(declare-const var3919 var2185) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var3919 null-var2185)))
(define-const var3317 Int (var2185_size/-959786421 var3919)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var391 var985 (this$0/467378960 var459)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var985-to-var3539 var391) var3317 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var391!1 var985)
(declare-const var3317!1 Int)
(declare-const var3979 Int)
(declare-const var2949 Int)
(define-const var3192 var985 (this$0/467378960 var459)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var1122 String (getStringMethodArg/-1432244773 (cast-from-var985-to-var3539 var3192) var3919 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l7 = 0L 
(assert (<= var3317!1 1)) ; Cond: i0 <= 1 
(define-const var2619 Int 0) ; Statement: $l7 = 0L 
(assert true) ; Non Conditional
(define-const var2206 Int (bv2nat (bvand ((_ int2bv 64) var2619) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l7 & 4294967296L 
(define-const var2589 Int (ite (> var2206 0) 1 (ite (< var2206 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l7 
(assert (not (= var2589 0))) ; Cond: $b2 != 0 
(define-const var27 Int (cast-from-Int-to-Int var2619)) ; Statement: $i3 = (int) $l7 
(define-const var1462 var371 (var3426_getPattern/-2008327948 var1122 var27)) ; Statement: r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3) 
(define-const var2683 String (s/467378960 var459)) ; Statement: $r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var2559 var3015 (matcher/468719934 var1462 (cast-from-String-to-String var2683))) ; Statement: r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6) 
(assert true)
(define-const var781 Bool (find/1809080823 var2559)) ; Statement: $z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $i10 = (int) -1 
(assert (= (ite var781 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3308 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
(define-const var881 Int var3308) ; Statement: i8 = $i10 
(assert true) ; Non Conditional
(define-const var1721 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar 
(assert (not (not (= var881 var1721)))) ; Negate: Cond: i8 != $i12  
(define-const var765 var2686 var2686-init) ; Statement: $r20 = new freemarker.template.SimpleScalar 
(define-const var583 var2686 var765) ; Statement: $r19 = $r20 
(define-const var2796 String (s/467378960 var459)) ; Statement: $r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
;(assert (<init>/378607920 var765 var2796)) ; Statement: specialinvoke $r20.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10) 

(declare-const var765!1 var2686)
(declare-const var2796!1 String)
 ; Statement: goto [?= return $r19] 
(assert true) ; Non Conditional
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var2185_size/-959786421=([java.util.List], int), this$0/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_beforeBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var985-to-var3539=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), cast-from-Int-to-Int=([long], int), var3426_getPattern/-2008327948=([java.lang.String, int], java.util.regex.Pattern), s/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean), var2686-init=([], freemarker.template.SimpleScalar), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var2183=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod, var459=r1, var2185=java.util.List, var3919=r0, var3317=i0, var985=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI, var391=$r2, var3539=freemarker.core.BuiltIn, var3979=1, var2949=2, var3192=$r3, var1122=r4, var2619=$l7, var2206=$l1, var2589=$b2, var27=$i3, var371=java.util.regex.Pattern, var3426=freemarker.core.RegexpHelper, var1462=r5, var2683=$r6, var3015=java.util.regex.Matcher, var2559=r7, var781=$z0, var3308=$i10, var881=i8, var1721=$i12, var2686=freemarker.template.SimpleScalar, var765=$r20, var583=$r19, var2796=$r10}
; {freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod=var2183, r1=var459, java.util.List=var2185, r0=var3919, i0=var3317, freemarker.core.BuiltInsForStringsBasic$keep_beforeBI=var985, $r2=var391, freemarker.core.BuiltIn=var3539, 1=var3979, 2=var2949, $r3=var3192, r4=var1122, $l7=var2619, $l1=var2206, $b2=var2589, $i3=var27, java.util.regex.Pattern=var371, freemarker.core.RegexpHelper=var3426, r5=var1462, $r6=var2683, java.util.regex.Matcher=var3015, r7=var2559, $z0=var781, $i10=var3308, i8=var881, $i12=var1721, freemarker.template.SimpleScalar=var2686, $r20=var765, $r19=var583, $r10=var2796}
;seq 
;cnt {}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l7 = 0L;	$l7 = 0L;	$l1 = $l7 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l7;	$i3 = (int) $l7;	r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3);	$r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6);	$z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $i10 = (int) -1;	$i10 = (int) -1;	i8 = $i10;	$i12 = (int) -1;	if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar;	$r20 = new freemarker.template.SimpleScalar;	$r19 = $r20;	$r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	specialinvoke $r20.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10);	goto [?= return $r19];	return $r19
;block_num 8