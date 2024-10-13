(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2602 0)
(declare-sort var1390 0)
(declare-sort var2206 0)
(declare-sort var784 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-901862667 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-var1390-init () (Array Int var1390))
(declare-fun cast-from-String-to-var1390 (String) var1390)
(declare-fun getLength-Arr-var1390-1 ((Array Int var1390)) Int)
(declare-fun var2206_copyOf/-1140654950 ((Array Int var1390) Int) (Array Int var1390))
(declare-fun String_format/1339386452 (String (Array Int var1390)) String)
(declare-fun var784_checkNotNullExpressionValue/47304269 (var1390 String) void)
(declare-const null-Int Int)
(declare-const var2602-INSTANCE var2602)
(declare-const null-__Array__Int__var1390__ (Array Int var1390))
(declare-const var1422 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var1422 null-Int)))
(define-const var3005 Int (ite (> var1422 (- 999500000)) 1 (ite (< var1422 (- 999500000)) (- 1) 0))) ; Statement: $b1 = l0 cmp -999500000L 
(define-const var4 Int (cast-from-Int-to-Int var3005)) ; Statement: $i31 = (int) $b1 
 ; Statement: if $i31 > 0 goto $b2 = l0 cmp -999500L 
(assert (not (> var4 0))) ; Negate: Cond: $i31 > 0  
(define-const var1881 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1881)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1881!1 String)
(assert (= var1881!1 ""))
(define-const var2944 Int (cast-from-Int-to-Int 500000000)) ; Statement: $l26 = (long) 500000000 
(define-const var2175 Int (- var1422 var2944)) ; Statement: $l28 = l0 - $l26 
(define-const var3580 Int (cast-from-Int-to-Int 1000000000)) ; Statement: $l27 = (long) 1000000000 
(define-const var2573 Int (div var2175 var3580)) ; Statement: $l29 = $l28 / $l27 
(assert true)
(define-const var2562 String (append/-901862667 var1881!1 var2573)) ; Statement: $r17 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l29) 
(declare-const var1881!2 String)
(assert (str.prefixof var1881!1 var1881!2))
(assert true)
(define-const var3804 String (append/672562846 var2562 " s ")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" s ") 
(declare-const var2562!1 String)
(assert (= var2562!1 (str.++ var2562 " s ")))
(assert true)
(define-const var2598 String (toString/-2075883882 var3804)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r3 = <kotlin.jvm.internal.StringCompanionObject: kotlin.jvm.internal.StringCompanionObject INSTANCE>] 
(assert true) ; Non Conditional
(define-const var1945 var2602 var2602-INSTANCE) ; Statement: $r3 = <kotlin.jvm.internal.StringCompanionObject: kotlin.jvm.internal.StringCompanionObject INSTANCE> 
(define-const var3695 (Array Int var1390) arr-var1390-init) ; Statement: $r20 = newarray (java.lang.Object)[1] 
(declare-const var3695!1 (Array Int var1390))
(assert (not (= var3695!1 null-__Array__Int__var1390__)))
(assert (= (select var3695!1 0) (cast-from-String-to-var1390 var2598))) ; Statement: $r20[0] = $r19 
(define-const var3678 Int (getLength-Arr-var1390-1 var3695!1)) ; Statement: $i30 = lengthof $r20 
(define-const var1063 (Array Int var1390) (var2206_copyOf/-1140654950 var3695!1 var3678)) ; Statement: $r21 = staticinvoke <java.util.Arrays: java.lang.Object[] copyOf(java.lang.Object[],int)>($r20, $i30) 
(define-const var3587 String (String_format/1339386452 "%6s" var1063)) ; Statement: $r22 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%6s", $r21) 
;(assert (var784_checkNotNullExpressionValue/47304269 (cast-from-String-to-var1390 var3587) "format(format, *args)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r22, "format(format, *args)") 

(declare-const var3587!1 String)
(declare-const var3929 String)
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-var1390-init=([], java.lang.Object[]), cast-from-String-to-var1390=([java.lang.String], java.lang.Object), getLength-Arr-var1390-1=([java.lang.Object[]], int), var2206_copyOf/-1140654950=([java.lang.Object[], int], java.lang.Object[]), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var784_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void)}
; {var1422=l0, var3005=$b1, var4=$i31, var1881=$r23, var2944=$l26, var2175=$l28, var3580=$l27, var2573=$l29, var2562=$r17, var3804=$r18, var2598=$r19, var2602=kotlin.jvm.internal.StringCompanionObject, var1945=$r3, var1390=java.lang.Object, var3695=$r20, var3678=$i30, var2206=java.util.Arrays, var1063=$r21, var3587=$r22, var784=kotlin.jvm.internal.Intrinsics, var3929="format(format, *args)"}
; {l0=var1422, $b1=var3005, $i31=var4, $r23=var1881, $l26=var2944, $l28=var2175, $l27=var3580, $l29=var2573, $r17=var2562, $r18=var3804, $r19=var2598, kotlin.jvm.internal.StringCompanionObject=var2602, $r3=var1945, java.lang.Object=var1390, $r20=var3695, $i30=var3678, java.util.Arrays=var2206, $r21=var1063, $r22=var3587, kotlin.jvm.internal.Intrinsics=var784, "format(format, *args)"=var3929}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts l0 := @parameter0: long;	$b1 = l0 cmp -999500000L;	$i31 = (int) $b1;	if $i31 > 0 goto $b2 = l0 cmp -999500L;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$l26 = (long) 500000000;	$l28 = l0 - $l26;	$l27 = (long) 1000000000;	$l29 = $l28 / $l27;	$r17 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l29);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" s ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r3 = <kotlin.jvm.internal.StringCompanionObject: kotlin.jvm.internal.StringCompanionObject INSTANCE>];	$r3 = <kotlin.jvm.internal.StringCompanionObject: kotlin.jvm.internal.StringCompanionObject INSTANCE>;	$r20 = newarray (java.lang.Object)[1];	$r20[0] = $r19;	$i30 = lengthof $r20;	$r21 = staticinvoke <java.util.Arrays: java.lang.Object[] copyOf(java.lang.Object[],int)>($r20, $i30);	$r22 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%6s", $r21);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r22, "format(format, *args)");	return $r22
;block_num 3