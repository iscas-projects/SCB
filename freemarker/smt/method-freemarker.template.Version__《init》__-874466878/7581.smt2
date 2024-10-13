(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3693 0)
(declare-sort var475 0)
(declare-sort var1158 0)
(declare-sort var2447 0)
(declare-sort var1368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1368) void)
(declare-fun cast-from-var3693-to-var1368 (var3693) var1368)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun originalStringValue/-1880100212 (var3693) String)
(declare-fun arr-Int-init () (Array Int Int))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun extraInfo/-1880100212 (var3693) String)
(declare-fun major/-1880100212 (var3693) Int)
(declare-fun minor/-1880100212 (var3693) Int)
(declare-fun micro/-1880100212 (var3693) Int)
(declare-fun calculateIntValue/-529760356 (var3693) Int)
(declare-fun intValue/-1880100212 (var3693) Int)
(declare-fun gaeCompliant/-1880100212 (var3693) var1158)
(declare-fun buildDate/-1880100212 (var3693) var2447)
(declare-const null-var3693 var3693)
(declare-const null-String String)
(declare-const null-var1158 var1158)
(declare-const null-var2447 var2447)
(declare-const var996 var3693) ; Statement: r0 := @this: freemarker.template.Version 
(assert (not (= var996 null-var3693)))
(declare-const var3868 String) ; Statement: r27 := @parameter0: java.lang.String 
(assert (not (= var3868 null-String)))
(declare-const var329 var1158) ; Statement: r2 := @parameter1: java.lang.Boolean 
(assert (not (= var329 null-var1158)))
(declare-const var3806 var2447) ; Statement: r3 := @parameter2: java.util.Date 
(assert (not (= var3806 null-var2447)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3693-to-var1368 var996))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var996!1 var3693)
(assert true)
(define-const var457 String (trim/-847153721 var3868)) ; Statement: r28 = virtualinvoke r27.<java.lang.String: java.lang.String trim()>() 
(declare-const var996!2 var3693)
(assert (not (= var996!2 null-var3693)))
(assert (= (originalStringValue/-1880100212 var996!2) var457)) ; Statement: r0.<freemarker.template.Version: java.lang.String originalStringValue> = r28 
(define-const var2969 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (int)[3] 
(define-const var3325 String null-String) ; Statement: r29 = null 
(define-const var3088 Int 0) ; Statement: i9 = 0 
(define-const var1753 Int 0) ; Statement: i10 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3631 Int (length/-134980193 var457)) ; Statement: $i0 = virtualinvoke r28.<java.lang.String: int length()>() 
 ; Statement: if i10 >= $i0 goto (branch) 
(assert (>= var1753 var3631)) ; Cond: i10 >= $i0 
 ; Statement: if r29 == null goto r0.<freemarker.template.Version: java.lang.String extraInfo> = r29 
(assert (= var3325 null-String)) ; Cond: r29 == null 
(declare-const var996!3 var3693)
(assert (not (= var996!3 null-var3693)))
(assert (= (extraInfo/-1880100212 var996!3) var3325)) ; Statement: r0.<freemarker.template.Version: java.lang.String extraInfo> = r29 
(define-const var2315 Int (select var2969 0)) ; Statement: $i14 = r1[0] 
(declare-const var996!4 var3693)
(assert (not (= var996!4 null-var3693)))
(assert (= (major/-1880100212 var996!4) var2315)) ; Statement: r0.<freemarker.template.Version: int major> = $i14 
(define-const var2390 Int (select var2969 1)) ; Statement: $i15 = r1[1] 
(declare-const var996!5 var3693)
(assert (not (= var996!5 null-var3693)))
(assert (= (minor/-1880100212 var996!5) var2390)) ; Statement: r0.<freemarker.template.Version: int minor> = $i15 
(define-const var2130 Int (select var2969 2)) ; Statement: $i16 = r1[2] 
(declare-const var996!6 var3693)
(assert (not (= var996!6 null-var3693)))
(assert (= (micro/-1880100212 var996!6) var2130)) ; Statement: r0.<freemarker.template.Version: int micro> = $i16 
(assert true)
(define-const var561 Int (calculateIntValue/-529760356 var996!6)) ; Statement: $i17 = specialinvoke r0.<freemarker.template.Version: int calculateIntValue()>() 
(declare-const var996!7 var3693)
(assert (not (= var996!7 null-var3693)))
(assert (= (intValue/-1880100212 var996!7) var561)) ; Statement: r0.<freemarker.template.Version: int intValue> = $i17 
(declare-const var996!8 var3693)
(assert (not (= var996!8 null-var3693)))
(assert (= (gaeCompliant/-1880100212 var996!8) var329)) ; Statement: r0.<freemarker.template.Version: java.lang.Boolean gaeCompliant> = r2 
(declare-const var996!9 var3693)
(assert (not (= var996!9 null-var3693)))
(assert (= (buildDate/-1880100212 var996!9) var3806)) ; Statement: r0.<freemarker.template.Version: java.util.Date buildDate> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3693-to-var1368=([freemarker.template.Version], java.lang.Object), trim/-847153721=([java.lang.String], java.lang.String), originalStringValue/-1880100212=([freemarker.template.Version], java.lang.String), arr-Int-init=([], int[]), length/-134980193=([java.lang.String], int), extraInfo/-1880100212=([freemarker.template.Version], java.lang.String), major/-1880100212=([freemarker.template.Version], int), minor/-1880100212=([freemarker.template.Version], int), micro/-1880100212=([freemarker.template.Version], int), calculateIntValue/-529760356=([freemarker.template.Version], int), intValue/-1880100212=([freemarker.template.Version], int), gaeCompliant/-1880100212=([freemarker.template.Version], java.lang.Boolean), buildDate/-1880100212=([freemarker.template.Version], java.util.Date)}
; {var3693=freemarker.template.Version, var996=r0, var3868=r27, var475=null_type, var1158=java.lang.Boolean, var329=r2, var2447=java.util.Date, var3806=r3, var1368=java.lang.Object, var457=r28, var2969=r1, var3325=r29, var3088=i9, var1753=i10, var3631=$i0, var2315=$i14, var2390=$i15, var2130=$i16, var561=$i17}
; {freemarker.template.Version=var3693, r0=var996, r27=var3868, null_type=var475, java.lang.Boolean=var1158, r2=var329, java.util.Date=var2447, r3=var3806, java.lang.Object=var1368, r28=var457, r1=var2969, r29=var3325, i9=var3088, i10=var1753, $i0=var3631, $i14=var2315, $i15=var2390, $i16=var2130, $i17=var561}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.template.Version;	r27 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Boolean;	r3 := @parameter2: java.util.Date;	specialinvoke r0.<java.lang.Object: void <init>()>();	r28 = virtualinvoke r27.<java.lang.String: java.lang.String trim()>();	r0.<freemarker.template.Version: java.lang.String originalStringValue> = r28;	r1 = newarray (int)[3];	r29 = null;	i9 = 0;	i10 = 0;	$i0 = virtualinvoke r28.<java.lang.String: int length()>();	if i10 >= $i0 goto (branch);	if r29 == null goto r0.<freemarker.template.Version: java.lang.String extraInfo> = r29;	r0.<freemarker.template.Version: java.lang.String extraInfo> = r29;	$i14 = r1[0];	r0.<freemarker.template.Version: int major> = $i14;	$i15 = r1[1];	r0.<freemarker.template.Version: int minor> = $i15;	$i16 = r1[2];	r0.<freemarker.template.Version: int micro> = $i16;	$i17 = specialinvoke r0.<freemarker.template.Version: int calculateIntValue()>();	r0.<freemarker.template.Version: int intValue> = $i17;	r0.<freemarker.template.Version: java.lang.Boolean gaeCompliant> = r2;	r0.<freemarker.template.Version: java.util.Date buildDate> = r3;	return
;block_num 4