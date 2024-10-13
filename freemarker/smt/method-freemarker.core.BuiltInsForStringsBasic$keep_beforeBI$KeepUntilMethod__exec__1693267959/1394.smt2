(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2326 0)
(declare-sort var3675 0)
(declare-sort var2570 0)
(declare-sort var129 0)
(declare-sort var188 0)
(declare-sort var176 0)
(declare-sort var2943 0)
(declare-sort var736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3675_size/-959786421 (var3675) Int)
(declare-fun this$0/467378960 (var2326) var2570)
(declare-fun checkMethodArgCount/509013054 (var129 Int Int Int) void)
(declare-fun cast-from-var2570-to-var129 (var2570) var129)
(declare-fun getStringMethodArg/-1432244773 (var129 var3675 Int) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var176_getPattern/-2008327948 (String Int) var188)
(declare-fun s/467378960 (var2326) String)
(declare-fun matcher/468719934 (var188 String) var2943)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var2943) Bool)
(declare-fun start/-526965311 (var2943) Int)
(declare-fun var736-init () var736)
(declare-fun <init>/378607920 (var736 String) void)
(declare-const null-var2326 var2326)
(declare-const null-var3675 var3675)
(declare-const var2536 var2326) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod 
(assert (not (= var2536 null-var2326)))
(declare-const var2557 var3675) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var2557 null-var3675)))
(define-const var439 Int (var3675_size/-959786421 var2557)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var1470 var2570 (this$0/467378960 var2536)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var2570-to-var129 var1470) var439 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var1470!1 var2570)
(declare-const var439!1 Int)
(declare-const var502 Int)
(declare-const var281 Int)
(define-const var3984 var2570 (this$0/467378960 var2536)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0> 
(assert true)
(define-const var591 String (getStringMethodArg/-1432244773 (cast-from-var2570-to-var129 var3984) var2557 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l7 = 0L 
(assert (<= var439!1 1)) ; Cond: i0 <= 1 
(define-const var3364 Int 0) ; Statement: $l7 = 0L 
(assert true) ; Non Conditional
(define-const var2928 Int (bv2nat (bvand ((_ int2bv 64) var3364) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l7 & 4294967296L 
(define-const var2253 Int (ite (> var2928 0) 1 (ite (< var2928 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = (int) $l7 
(assert (not (= var2253 0))) ; Cond: $b2 != 0 
(define-const var1043 Int (cast-from-Int-to-Int var3364)) ; Statement: $i3 = (int) $l7 
(define-const var428 var188 (var176_getPattern/-2008327948 var591 var1043)) ; Statement: r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3) 
(define-const var3407 String (s/467378960 var2536)) ; Statement: $r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var1719 var2943 (matcher/468719934 var428 (cast-from-String-to-String var3407))) ; Statement: r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6) 
(assert true)
(define-const var2601 Bool (find/1809080823 var1719)) ; Statement: $z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $i10 = (int) -1 
(assert (not (= (ite var2601 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var682 Int (start/-526965311 var1719)) ; Statement: i8 = virtualinvoke r7.<java.util.regex.Matcher: int start()>() 
 ; Statement: goto [?= $i12 = (int) -1] 
(assert true) ; Non Conditional
(define-const var2050 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar 
(assert (not (not (= var682 var2050)))) ; Negate: Cond: i8 != $i12  
(define-const var2708 var736 var736-init) ; Statement: $r20 = new freemarker.template.SimpleScalar 
(define-const var2609 var736 var2708) ; Statement: $r19 = $r20 
(define-const var74 String (s/467378960 var2536)) ; Statement: $r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s> 
(assert true)
;(assert (<init>/378607920 var2708 var74)) ; Statement: specialinvoke $r20.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10) 

(declare-const var2708!1 var736)
(declare-const var74!1 String)
 ; Statement: goto [?= return $r19] 
(assert true) ; Non Conditional
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var3675_size/-959786421=([java.util.List], int), this$0/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_beforeBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var2570-to-var129=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), cast-from-Int-to-Int=([long], int), var176_getPattern/-2008327948=([java.lang.String, int], java.util.regex.Pattern), s/467378960=([freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean), start/-526965311=([java.util.regex.Matcher], int), var736-init=([], freemarker.template.SimpleScalar), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var2326=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod, var2536=r1, var3675=java.util.List, var2557=r0, var439=i0, var2570=freemarker.core.BuiltInsForStringsBasic$keep_beforeBI, var1470=$r2, var129=freemarker.core.BuiltIn, var502=1, var281=2, var3984=$r3, var591=r4, var3364=$l7, var2928=$l1, var2253=$b2, var1043=$i3, var188=java.util.regex.Pattern, var176=freemarker.core.RegexpHelper, var428=r5, var3407=$r6, var2943=java.util.regex.Matcher, var1719=r7, var2601=$z0, var682=i8, var2050=$i12, var736=freemarker.template.SimpleScalar, var2708=$r20, var2609=$r19, var74=$r10}
; {freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod=var2326, r1=var2536, java.util.List=var3675, r0=var2557, i0=var439, freemarker.core.BuiltInsForStringsBasic$keep_beforeBI=var2570, $r2=var1470, freemarker.core.BuiltIn=var129, 1=var502, 2=var281, $r3=var3984, r4=var591, $l7=var3364, $l1=var2928, $b2=var2253, $i3=var1043, java.util.regex.Pattern=var188, freemarker.core.RegexpHelper=var176, r5=var428, $r6=var3407, java.util.regex.Matcher=var2943, r7=var1719, $z0=var2601, i8=var682, $i12=var2050, freemarker.template.SimpleScalar=var736, $r20=var2708, $r19=var2609, $r10=var74}
;seq 
;cnt {}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_beforeBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l7 = 0L;	$l7 = 0L;	$l1 = $l7 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = (int) $l7;	$i3 = (int) $l7;	r5 = staticinvoke <freemarker.core.RegexpHelper: java.util.regex.Pattern getPattern(java.lang.String,int)>(r4, $i3);	$r6 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	r7 = virtualinvoke r5.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r6);	$z0 = virtualinvoke r7.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $i10 = (int) -1;	i8 = virtualinvoke r7.<java.util.regex.Matcher: int start()>();	goto [?= $i12 = (int) -1];	$i12 = (int) -1;	if i8 != $i12 goto $r21 = new freemarker.template.SimpleScalar;	$r20 = new freemarker.template.SimpleScalar;	$r19 = $r20;	$r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod: java.lang.String s>;	specialinvoke $r20.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10);	goto [?= return $r19];	return $r19
;block_num 8