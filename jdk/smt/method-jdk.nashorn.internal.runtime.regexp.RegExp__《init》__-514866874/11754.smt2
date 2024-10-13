(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3760 0)
(declare-sort var1442 0)
(declare-sort var1572 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1572) void)
(declare-fun cast-from-var3760-to-var1572 (var3760) var1572)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun source/-1766936497 (var3760) String)
(declare-const null-var3760 var3760)
(declare-const null-String String)
(declare-const var3289 var3760) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExp 
(assert (not (= var3289 null-var3760)))
(declare-const var2846 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2846 null-String)))
(declare-const var3354 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3354 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3760-to-var1572 var3289))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3289!1 var3760)
(assert true)
(define-const var1944 Int (length/-134980193 var2846)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r4 = r1 
(assert (not (not (= var1944 0)))) ; Negate: Cond: $i0 != 0  
(define-const var1490 String "(?:)") ; Statement: $r4 = "(?:)" 
 ; Statement: goto [?= r0.<jdk.nashorn.internal.runtime.regexp.RegExp: java.lang.String source> = $r4] 
(assert true) ; Non Conditional
(declare-const var3289!2 var3760)
(assert (not (= var3289!2 null-var3760)))
(assert (= (source/-1766936497 var3289!2) var1490)) ; Statement: r0.<jdk.nashorn.internal.runtime.regexp.RegExp: java.lang.String source> = $r4 
(define-const var2990 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3196 Int (length/-134980193 var3354)) ; Statement: $i3 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i3 goto return 
(assert (>= var2990 var3196)) ; Cond: i2 >= $i3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3760-to-var1572=([jdk.nashorn.internal.runtime.regexp.RegExp], java.lang.Object), length/-134980193=([java.lang.String], int), source/-1766936497=([jdk.nashorn.internal.runtime.regexp.RegExp], java.lang.String)}
; {var3760=jdk.nashorn.internal.runtime.regexp.RegExp, var3289=r0, var2846=r1, var1442=null_type, var3354=r2, var1572=java.lang.Object, var1944=$i0, var1490=$r4, var2990=i2, var3196=$i3}
; {jdk.nashorn.internal.runtime.regexp.RegExp=var3760, r0=var3289, r1=var2846, null_type=var1442, r2=var3354, java.lang.Object=var1572, $i0=var1944, $r4=var1490, i2=var2990, $i3=var3196}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExp;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i0 != 0 goto $r4 = r1;	$r4 = "(?:)";	goto [?= r0.<jdk.nashorn.internal.runtime.regexp.RegExp: java.lang.String source> = $r4];	r0.<jdk.nashorn.internal.runtime.regexp.RegExp: java.lang.String source> = $r4;	i2 = 0;	$i3 = virtualinvoke r2.<java.lang.String: int length()>();	if i2 >= $i3 goto return;	return
;block_num 5