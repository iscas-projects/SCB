(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3638 0)
(declare-sort var858 0)
(declare-sort var2509 0)
(declare-sort var1570 0)
(declare-sort var1165 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var858_size/-959786421 (var858) Int)
(declare-fun this$0/-817137089 (var3638) var2509)
(declare-fun checkMethodArgCount/509013054 (var1570 Int Int Int) void)
(declare-fun cast-from-var2509-to-var1570 (var2509) var1570)
(declare-fun getStringMethodArg/-1432244773 (var1570 var858 Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun s/-817137089 (var3638) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1165-init () var1165)
(declare-fun <init>/378607920 (var1165 String) void)
(declare-const null-var3638 var3638)
(declare-const null-var858 var858)
(declare-const var3655 var3638) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod 
(assert (not (= var3655 null-var3638)))
(declare-const var3981 var858) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var3981 null-var858)))
(define-const var2305 Int (var858_size/-959786421 var3981)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var2551 var2509 (this$0/-817137089 var3655)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var2509-to-var1570 var2551) var2305 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var2551!1 var2509)
(declare-const var2305!1 Int)
(declare-const var1000 Int)
(declare-const var3127 Int)
(define-const var3766 var2509 (this$0/-817137089 var3655)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
(define-const var3757 String (getStringMethodArg/-1432244773 (cast-from-var2509-to-var1570 var3766) var3981 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l9 = 0L 
(assert (<= var2305!1 1)) ; Cond: i0 <= 1 
(define-const var3431 Int 0) ; Statement: $l9 = 0L 
(assert true) ; Non Conditional
(define-const var1339 Int (bv2nat (bvand ((_ int2bv 64) var3431) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l9 & 4294967296L 
(define-const var2861 Int (ite (> var1339 0) 1 (ite (< var1339 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
(assert (not (= var2861 0))) ; Cond: $b2 != 0 
(assert true)
(define-const var1466 Int (length/-134980193 var3757)) ; Statement: $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
 ; Statement: if $i3 != 0 goto $i4 = (int) $l9 
(assert (not (not (= var1466 0)))) ; Negate: Cond: $i3 != 0  
(define-const var3333 String (s/-817137089 var3655)) ; Statement: $r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var2718 Int (length/-134980193 var3333)) ; Statement: i10 = virtualinvoke $r11.<java.lang.String: int length()>() 
 ; Statement: goto [?= $i14 = (int) -1] 
(assert true) ; Non Conditional
(define-const var2706 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar 
(assert (not (not (= var2718 var2706)))) ; Negate: Cond: i10 != $i14  
(define-const var3087 var1165 var1165-init) ; Statement: $r21 = new freemarker.template.SimpleScalar 
(define-const var1835 var1165 var3087) ; Statement: $r20 = $r21 
(define-const var582 String (s/-817137089 var3655)) ; Statement: $r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert true)
;(assert (<init>/378607920 var3087 var582)) ; Statement: specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10) 

(declare-const var3087!1 var1165)
(declare-const var582!1 String)
 ; Statement: goto [?= return $r20] 
(assert true) ; Non Conditional
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var858_size/-959786421=([java.util.List], int), this$0/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var2509-to-var1570=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), length/-134980193=([java.lang.String], int), s/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], java.lang.String), cast-from-Int-to-Int=([int], int), var1165-init=([], freemarker.template.SimpleScalar), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var3638=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod, var3655=r1, var858=java.util.List, var3981=r0, var2305=i0, var2509=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI, var2551=$r2, var1570=freemarker.core.BuiltIn, var1000=1, var3127=2, var3766=$r3, var3757=r4, var3431=$l9, var1339=$l1, var2861=$b2, var1466=$i3, var3333=$r11, var2718=i10, var2706=$i14, var1165=freemarker.template.SimpleScalar, var3087=$r21, var1835=$r20, var582=$r10}
; {freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod=var3638, r1=var3655, java.util.List=var858, r0=var3981, i0=var2305, freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI=var2509, $r2=var2551, freemarker.core.BuiltIn=var1570, 1=var1000, 2=var3127, $r3=var3766, r4=var3757, $l9=var3431, $l1=var1339, $b2=var2861, $i3=var1466, $r11=var3333, i10=var2718, $i14=var2706, freemarker.template.SimpleScalar=var1165, $r21=var3087, $r20=var1835, $r10=var582}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l9 = 0L;	$l9 = 0L;	$l1 = $l9 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>();	$i3 = virtualinvoke r4.<java.lang.String: int length()>();	if $i3 != 0 goto $i4 = (int) $l9;	$r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	i10 = virtualinvoke $r11.<java.lang.String: int length()>();	goto [?= $i14 = (int) -1];	$i14 = (int) -1;	if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar;	$r21 = new freemarker.template.SimpleScalar;	$r20 = $r21;	$r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r10);	goto [?= return $r20];	return $r20
;block_num 8