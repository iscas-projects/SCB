(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2324 0)
(declare-sort var3815 0)
(declare-sort var669 0)
(declare-sort var92 0)
(declare-sort var2918 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3815_size/-959786421 (var3815) Int)
(declare-fun this$0/-817137089 (var2324) var669)
(declare-fun checkMethodArgCount/509013054 (var92 Int Int Int) void)
(declare-fun cast-from-var669-to-var92 (var669) var92)
(declare-fun getStringMethodArg/-1432244773 (var92 var3815 Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun s/-817137089 (var2324) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2918-init () var2918)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun <init>/378607920 (var2918 String) void)
(declare-const null-var2324 var2324)
(declare-const null-var3815 var3815)
(declare-const var3514 var2324) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod 
(assert (not (= var3514 null-var2324)))
(declare-const var2430 var3815) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var2430 null-var3815)))
(define-const var3301 Int (var3815_size/-959786421 var2430)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var38 var669 (this$0/-817137089 var3514)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var669-to-var92 var38) var3301 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var38!1 var669)
(declare-const var3301!1 Int)
(declare-const var1028 Int)
(declare-const var2972 Int)
(define-const var1784 var669 (this$0/-817137089 var3514)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0> 
(assert true)
(define-const var3708 String (getStringMethodArg/-1432244773 (cast-from-var669-to-var92 var1784) var2430 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l9 = 0L 
(assert (<= var3301!1 1)) ; Cond: i0 <= 1 
(define-const var2206 Int 0) ; Statement: $l9 = 0L 
(assert true) ; Non Conditional
(define-const var2833 Int (bv2nat (bvand ((_ int2bv 64) var2206) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l9 & 4294967296L 
(define-const var987 Int (ite (> var2833 0) 1 (ite (< var2833 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
(assert (not (= var987 0))) ; Cond: $b2 != 0 
(assert true)
(define-const var1181 Int (length/-134980193 var3708)) ; Statement: $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
 ; Statement: if $i3 != 0 goto $i4 = (int) $l9 
(assert (not (not (= var1181 0)))) ; Negate: Cond: $i3 != 0  
(define-const var3952 String (s/-817137089 var3514)) ; Statement: $r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert true)
(define-const var813 Int (length/-134980193 var3952)) ; Statement: i10 = virtualinvoke $r11.<java.lang.String: int length()>() 
 ; Statement: goto [?= $i14 = (int) -1] 
(assert true) ; Non Conditional
(define-const var972 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar 
(assert (not (= var813 var972))) ; Cond: i10 != $i14 
(define-const var1167 var2918 var2918-init) ; Statement: $r22 = new freemarker.template.SimpleScalar 
(define-const var1499 var2918 var1167) ; Statement: $r20 = $r22 
(define-const var527 String (s/-817137089 var3514)) ; Statement: $r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s> 
(assert (and true (and (>= 0 0) (>= (str.len var527) var813) (>= var813 0))))
(define-const var1890 String (substring/-1240304868 var527 0 var813)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i10) 
(assert true)
;(assert (<init>/378607920 var1167 var1890)) ; Statement: specialinvoke $r22.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var1167!1 var2918)
(declare-const var1890!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var3815_size/-959786421=([java.util.List], int), this$0/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var669-to-var92=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), length/-134980193=([java.lang.String], int), s/-817137089=([freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod], java.lang.String), cast-from-Int-to-Int=([int], int), var2918-init=([], freemarker.template.SimpleScalar), substring/-1240304868=([java.lang.String, int, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var2324=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod, var3514=r1, var3815=java.util.List, var2430=r0, var3301=i0, var669=freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI, var38=$r2, var92=freemarker.core.BuiltIn, var1028=1, var2972=2, var1784=$r3, var3708=r4, var2206=$l9, var2833=$l1, var987=$b2, var1181=$i3, var3952=$r11, var813=i10, var972=$i14, var2918=freemarker.template.SimpleScalar, var1167=$r22, var1499=$r20, var527=$r8, var1890=$r9}
; {freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod=var2324, r1=var3514, java.util.List=var3815, r0=var2430, i0=var3301, freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI=var669, $r2=var38, freemarker.core.BuiltIn=var92, 1=var1028, 2=var2972, $r3=var1784, r4=var3708, $l9=var2206, $l1=var2833, $b2=var987, $i3=var1181, $r11=var3952, i10=var813, $i14=var972, freemarker.template.SimpleScalar=var2918, $r22=var1167, $r20=var1499, $r8=var527, $r9=var1890}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l9 = 0L;	$l9 = 0L;	$l1 = $l9 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>();	$i3 = virtualinvoke r4.<java.lang.String: int length()>();	if $i3 != 0 goto $i4 = (int) $l9;	$r11 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	i10 = virtualinvoke $r11.<java.lang.String: int length()>();	goto [?= $i14 = (int) -1];	$i14 = (int) -1;	if i10 != $i14 goto $r22 = new freemarker.template.SimpleScalar;	$r22 = new freemarker.template.SimpleScalar;	$r20 = $r22;	$r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_before_lastBI$KeepUntilMethod: java.lang.String s>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(0, i10);	specialinvoke $r22.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r20
;block_num 8