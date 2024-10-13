(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2996 0)
(declare-sort var1939 0)
(declare-sort var37 0)
(declare-sort var3194 0)
(declare-sort var3438 0)
(declare-sort var1733 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1939_size/-959786421 (var1939) Int)
(declare-fun this$0/1071167016 (var2996) var37)
(declare-fun checkMethodArgCount/509013054 (var3194 Int Int Int) void)
(declare-fun cast-from-var37-to-var3194 (var37) var3194)
(declare-fun getStringMethodArg/-1432244773 (var3194 var1939 Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun s/1071167016 (var2996) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3438-init () var3438)
(declare-fun cast-from-var3438-to-var1733 (var3438) var1733)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun <init>/378607920 (var3438 String) void)
(declare-const null-var2996 var2996)
(declare-const null-var1939 var1939)
(declare-const var2973 var2996) ; Statement: r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod 
(assert (not (= var2973 null-var2996)))
(declare-const var3150 var1939) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var3150 null-var1939)))
(define-const var703 Int (var1939_size/-959786421 var3150)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var3336 var37 (this$0/1071167016 var2973)) ; Statement: $r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI this$0> 
(assert true)
;(assert (checkMethodArgCount/509013054 (cast-from-var37-to-var3194 var3336) var703 1 2)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2) 

(declare-const var3336!1 var37)
(declare-const var703!1 Int)
(declare-const var379 Int)
(declare-const var2005 Int)
(define-const var148 var37 (this$0/1071167016 var2973)) ; Statement: $r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI this$0> 
(assert true)
(define-const var2830 String (getStringMethodArg/-1432244773 (cast-from-var37-to-var3194 var148) var3150 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0) 
 ; Statement: if i0 <= 1 goto $l11 = 0L 
(assert (<= var703!1 1)) ; Cond: i0 <= 1 
(define-const var1334 Int 0) ; Statement: $l11 = 0L 
(assert true) ; Non Conditional
(define-const var334 Int (bv2nat (bvand ((_ int2bv 64) var1334) ((_ int2bv 64) 4294967296)))) ; Statement: $l1 = $l11 & 4294967296L 
(define-const var269 Int (ite (> var334 0) 1 (ite (< var334 0) (- 1) 0))) ; Statement: $b2 = $l1 cmp 0L 
 ; Statement: if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
(assert (not (= var269 0))) ; Cond: $b2 != 0 
(assert true)
(define-const var3203 Int (length/-134980193 var2830)) ; Statement: $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
 ; Statement: if $i3 != 0 goto $i4 = (int) $l11 
(assert (not (not (= var3203 0)))) ; Negate: Cond: $i3 != 0  
(define-const var1870 String (s/1071167016 var2973)) ; Statement: $r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: java.lang.String s> 
(assert true)
(define-const var750 Int (length/-134980193 var1870)) ; Statement: i12 = virtualinvoke $r10.<java.lang.String: int length()>() 
 ; Statement: goto [?= $i16 = (int) -1] 
(assert true) ; Non Conditional
(define-const var3817 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
 ; Statement: if i12 != $i16 goto $r20 = new freemarker.template.SimpleScalar 
(assert (not (= var750 var3817))) ; Cond: i12 != $i16 
(define-const var1197 var3438 var3438-init) ; Statement: $r20 = new freemarker.template.SimpleScalar 
(define-const var3952 var1733 (cast-from-var3438-to-var1733 var1197)) ; Statement: $r19 = $r20 
(define-const var1063 String (s/1071167016 var2973)) ; Statement: $r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: java.lang.String s> 
(assert (and true (and (>= var750 0) (>= (str.len var1063) var750))))
(define-const var928 String (substring/850833817 var1063 var750)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int)>(i12) 
(assert true)
;(assert (<init>/378607920 var1197 var928)) ; Statement: specialinvoke $r20.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var1197!1 var3438)
(declare-const var928!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var1939_size/-959786421=([java.util.List], int), this$0/1071167016=([freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod], freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI), checkMethodArgCount/509013054=([freemarker.core.BuiltIn, int, int, int], void), cast-from-var37-to-var3194=([freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), length/-134980193=([java.lang.String], int), s/1071167016=([freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod], java.lang.String), cast-from-Int-to-Int=([int], int), var3438-init=([], freemarker.template.SimpleScalar), cast-from-var3438-to-var1733=([freemarker.template.SimpleScalar], freemarker.template.TemplateModel), substring/850833817=([java.lang.String, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var2996=freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod, var2973=r1, var1939=java.util.List, var3150=r0, var703=i0, var37=freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI, var3336=$r2, var3194=freemarker.core.BuiltIn, var379=1, var2005=2, var148=$r3, var2830=r4, var1334=$l11, var334=$l1, var269=$b2, var3203=$i3, var1870=$r10, var750=i12, var3817=$i16, var3438=freemarker.template.SimpleScalar, var1197=$r20, var1733=freemarker.template.TemplateModel, var3952=$r19, var1063=$r8, var928=$r9}
; {freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod=var2996, r1=var2973, java.util.List=var1939, r0=var3150, i0=var703, freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI=var37, $r2=var3336, freemarker.core.BuiltIn=var3194, 1=var379, 2=var2005, $r3=var148, r4=var2830, $l11=var1334, $l1=var334, $b2=var269, $i3=var3203, $r10=var1870, i12=var750, $i16=var3817, freemarker.template.SimpleScalar=var3438, $r20=var1197, freemarker.template.TemplateModel=var1733, $r19=var3952, $r8=var1063, $r9=var928}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r2 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI: void checkMethodArgCount(int,int,int)>(i0, 1, 2);	$r3 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI: java.lang.String getStringMethodArg(java.util.List,int)>(r0, 0);	if i0 <= 1 goto $l11 = 0L;	$l11 = 0L;	$l1 = $l11 & 4294967296L;	$b2 = $l1 cmp 0L;	if $b2 != 0 goto $i3 = virtualinvoke r4.<java.lang.String: int length()>();	$i3 = virtualinvoke r4.<java.lang.String: int length()>();	if $i3 != 0 goto $i4 = (int) $l11;	$r10 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: java.lang.String s>;	i12 = virtualinvoke $r10.<java.lang.String: int length()>();	goto [?= $i16 = (int) -1];	$i16 = (int) -1;	if i12 != $i16 goto $r20 = new freemarker.template.SimpleScalar;	$r20 = new freemarker.template.SimpleScalar;	$r19 = $r20;	$r8 = r1.<freemarker.core.BuiltInsForStringsBasic$keep_after_lastBI$KeepAfterMethod: java.lang.String s>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int)>(i12);	specialinvoke $r20.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r19
;block_num 8