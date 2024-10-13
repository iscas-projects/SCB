(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1529 0)
(declare-sort var20 0)
(declare-sort var2756 0)
(declare-sort var2596 0)
(declare-sort var1744 0)
(declare-sort var2156 0)
(declare-sort var567 0)
(declare-sort var3975 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var20_size/-959786421 (var20) Int)
(declare-fun this$0/467378960 (var1529) var2756)
(declare-fun checkMethodArgCount/509013054 (var2596 Int Int Int) void)
(declare-fun cast-from-var2756-to-var2596 (var2756) var2596)
(declare-fun getStringMethodArg/-1432244773 (var2596 var20 Int) String)
(declare-fun var1744_parseFlagString/1923739702 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1744_getPattern/-2008327948 (String Int) var2156)
(declare-fun s/467378960 (var1529) String)
(declare-fun matcher/468719934 (var2156 String) var567)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var567) Bool)
(declare-fun var3975-init () var3975)
(declare-fun <init>/378607920 (var3975 String) void)
(declare-const null-var1529 var1529)
(declare-const null-var20 var20)
(declare-const var522 var1529) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod 
(assert (not (= var522 null-var1529)))
(declare-const var949 var20) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var949 null-var20)))
(define-const var3 Int (var20_size/-959786421 var949)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var857 var2756 (this$0/467378960 var522)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var2756-to-var2596 var857) var3 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var857!1 var2756)
(declare-const var3!1 Int)
(declare-const var1019 Int)
(declare-const var1177 Int)
(define-const var2898 var2756 (this$0/467378960 var522)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var2714 String (getStringMethodArg/-1432244773 (cast-from-var2756-to-var2596 var2898) var949 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l7 = 0L 
(assert (not (<= var3!1 1))) ; Negate: Cond: i0 <= 1  
(define-const var1807 var2756 (this$0/467378960 var522)) ; Statement: $r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var397 String (getStringMethodArg/-1432244773 (cast-from-var2756-to-var2596 var1807) var949 1)) ; Statement: $r18 = virtualinvoke $r17.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1) 
(define-const var3248 Int (var1744_parseFlagString/1923739702 var397)) ; Statement: $l7 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r18) 
 ; Statement: goto [?= $l1 = $l7 & 4294967296L] 
(assert true) ; Non Conditional
(define-const var2592 Int (bv2nat (bvand ((_ int2bv 64) var3248) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l7 & 4294967296L 
(define-const var148 Int (ite (> var2592 0) 1 (ite (< var2592 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l7 
(assert (not (= var148 0))) ; Cond: $b2 != 0 
(define-const var3057 Int (cast-from-Int-to-Int var3248)) ; Statement: $i3 = (int) $l7 
(define-const var2215 var2156 (var1744_getPattern/-2008327948 var2714 var3057)) ; Statement: r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3) 
(define-const var375 String (s/467378960 var522)) ; Statement: $r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var2277 var567 (matcher/468719934 var2215 (cast-from-String-to-String var375))) ; Statement: r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6) 
(assert true)
(define-const var548 Bool (find/1809080823 var2277)) ; Statement: $z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $i10 = (int) -1 
(assert (= (ite var548 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2902 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
(define-const var2644 Int var2902) ; Statement: i8 = $i10 
(assert true) ; Non Conditional
(define-const var2649 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar 
(assert (not (not (= var2644 var2649)))) ; Negate: Cond: i8 != $i12  
(define-const var746 var3975 var3975-init) ; Statement: $r20 = new freemarker.template.SimpleScalar 
(define-const var1046 var3975 var746) ; Statement: $r19 = $r20 
(define-const var1585 String (s/467378960 var522)) ; Statement: $r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
;(assert (<init>/378607920 var746 var1585)) ; Statement: specialinvoke $r20.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10) 

(declare-const var746!1 var3975)
(declare-const var1585!1 String)
 ; Statement: goto [?= return $r19] 
(assert true) ; Non Conditional
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var20_size/-959786421=([java.util.List], int), this$0/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_beforeBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var2756-to-var2596=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var1744_parseFlagString/1923739702=([java.lang.String], long), cast-from-Int-to-Int=([long], int), var1744_getPattern/-2008327948=([java.lang.String, int], java.util.regex.Pattern), s/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean), var3975-init=([], freemarker.template.SimpleScalar), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var1529=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod, var522=r1, var20=java.util.List, var949=r0, var3=i0, var2756=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI, var857=$r2, var2596=freemarker.core.BuiltIn, var1019=1, var1177=2, var2898=$r3, var2714=r4, var1807=$r17, var397=$r18, var1744=freemarker.core.RegexpHelper, var3248=$l7, var2592=$l1, var148=$b2, var3057=$i3, var2156=java.util.regex.Pattern, var2215=r5, var375=$r6, var567=java.util.regex.Matcher, var2277=r7, var548=$z0, var2902=$i10, var2644=i8, var2649=$i12, var3975=freemarker.template.SimpleScalar, var746=$r20, var1046=$r19, var1585=$r10}
; {freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod=var1529, r1=var522, java.util.List=var20, r0=var949, i0=var3, freemarker.core.BuiltInsForStringsBasic$keep_beforeBI=var2756, $r2=var857, freemarker.core.BuiltIn=var2596, 1=var1019, 2=var1177, $r3=var2898, r4=var2714, $r17=var1807, $r18=var397, freemarker.core.RegexpHelper=var1744, $l7=var3248, $l1=var2592, $b2=var148, $i3=var3057, java.util.regex.Pattern=var2156, r5=var2215, $r6=var375, java.util.regex.Matcher=var567, r7=var2277, $z0=var548, $i10=var2902, i8=var2644, $i12=var2649, freemarker.template.SimpleScalar=var3975, $r20=var746, $r19=var1046, $r10=var1585}
;seq 
;cnt {}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l7 = 0L;	$r17 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	$r18 = virtualinvoke $r17.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 1);	$l7 = staticinvoke <freemarker.core.RegexpHelper: long parseFlagString(java.lang.String)>($r18);	goto [?= $l1 = $l7 & 4294967296L];	$l1 = $l7 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l7;	$i3 = (int) $l7;	r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3);	$r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6);	$z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $i10 = (int) -1;	$i10 = (int) -1;	i8 = $i10;	$i12 = (int) -1;	if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar;	$r20 = new freemarker.template.SimpleScalar;	$r19 = $r20;	$r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	specialinvoke $r20.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10);	goto [?= return $r19];	return $r19
;block_num 8