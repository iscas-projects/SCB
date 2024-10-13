(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2265 0)
(declare-sort var635 0)
(declare-sort var2743 0)
(declare-sort var790 0)
(declare-sort var725 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2743_checkNotNullParameter/-2060636419 (var790 String) void)
(declare-fun cast-from-String-to-var790 (String) var790)
(declare-fun pattern/487783471 (var2265) String)
(declare-fun var725_startsWith$default/493066340 (String String Bool Int var790) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var725_regionMatches$default/-2137162741 (String Int String Int Int Bool Int var790) Bool)
(declare-const null-var2265 var2265)
(declare-const null-String String)
(declare-const null-var790 var790)
(declare-const var2597 var2265) ; Statement: r1 := @this: okhttp3.CertificatePinner$Pin 
(assert (not (= var2597 null-var2265)))
(declare-const var2455 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2455 null-String)))
;(assert (var2743_checkNotNullParameter/-2060636419 (cast-from-String-to-var790 var2455) "hostname")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "hostname") 

(declare-const var2455!1 String)
(declare-const var2274 String)
(define-const var1489 String (pattern/487783471 var2597)) ; Statement: $r2 = r1.<okhttp3.CertificatePinner$Pin: java.lang.String pattern> 
(define-const var2222 Bool (var725_startsWith$default/493066340 var1489 "**." (ite (= 1 0) true false) 2 null-var790)) ; Statement: $z0 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>($r2, "**.", 0, 2, null) 
 ; Statement: if $z0 == 0 goto $r3 = r1.<okhttp3.CertificatePinner$Pin: java.lang.String pattern> 
(assert (not (= (ite var2222 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3697 String (pattern/487783471 var2597)) ; Statement: $r8 = r1.<okhttp3.CertificatePinner$Pin: java.lang.String pattern> 
(assert true)
(define-const var1198 Int (length/-134980193 var3697)) ; Statement: $i6 = virtualinvoke $r8.<java.lang.String: int length()>() 
(define-const var801 Int (- var1198 3)) ; Statement: i12 = $i6 - 3 
(assert true)
(define-const var1324 Int (length/-134980193 var2455!1)) ; Statement: $i7 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1538 Int (- var1324 var801)) ; Statement: i13 = $i7 - i12 
(assert true)
(define-const var3176 Int (length/-134980193 var2455!1)) ; Statement: $i8 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3194 Int (- var3176 var801)) ; Statement: $i9 = $i8 - i12 
(define-const var1861 String (pattern/487783471 var2597)) ; Statement: $r9 = r1.<okhttp3.CertificatePinner$Pin: java.lang.String pattern> 
(define-const var64 Bool (var725_regionMatches$default/-2137162741 var2455!1 var3194 var1861 3 var801 (ite (= 1 0) true false) 16 null-var790)) ; Statement: $z3 = staticinvoke <kotlin.text.StringsKt: boolean regionMatches$default(java.lang.String,int,java.lang.String,int,int,boolean,int,java.lang.Object)>(r0, $i9, $r9, 3, i12, 0, 16, null) 
 ; Statement: if $z3 == 0 goto $z4 = 0 
(assert (= (ite var64 1 0) 0)) ; Cond: $z3 == 0 
(define-const var879 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
 ; Statement: goto [?= return $z4] 
(assert true) ; Non Conditional
 ; Statement: return $z4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2743_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var790=([java.lang.String], java.lang.Object), pattern/487783471=([okhttp3.CertificatePinner$Pin], java.lang.String), var725_startsWith$default/493066340=([java.lang.String, java.lang.String, boolean, int, java.lang.Object], boolean), length/-134980193=([java.lang.String], int), var725_regionMatches$default/-2137162741=([java.lang.String, int, java.lang.String, int, int, boolean, int, java.lang.Object], boolean)}
; {var2265=okhttp3.CertificatePinner$Pin, var2597=r1, var2455=r0, var635=null_type, var2743=kotlin.jvm.internal.Intrinsics, var790=java.lang.Object, var2274="hostname", var1489=$r2, var725=kotlin.text.StringsKt, var2222=$z0, var3697=$r8, var1198=$i6, var801=i12, var1324=$i7, var1538=i13, var3176=$i8, var3194=$i9, var1861=$r9, var64=$z3, var879=$z4}
; {okhttp3.CertificatePinner$Pin=var2265, r1=var2597, r0=var2455, null_type=var635, kotlin.jvm.internal.Intrinsics=var2743, java.lang.Object=var790, "hostname"=var2274, $r2=var1489, kotlin.text.StringsKt=var725, $z0=var2222, $r8=var3697, $i6=var1198, i12=var801, $i7=var1324, i13=var1538, $i8=var3176, $i9=var3194, $r9=var1861, $z3=var64, $z4=var879}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 3}
;stmts r1 := @this: okhttp3.CertificatePinner$Pin;	r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "hostname");	$r2 = r1.<okhttp3.CertificatePinner$Pin: java.lang.String pattern>;	$z0 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>($r2, "**.", 0, 2, null);	if $z0 == 0 goto $r3 = r1.<okhttp3.CertificatePinner$Pin: java.lang.String pattern>;	$r8 = r1.<okhttp3.CertificatePinner$Pin: java.lang.String pattern>;	$i6 = virtualinvoke $r8.<java.lang.String: int length()>();	i12 = $i6 - 3;	$i7 = virtualinvoke r0.<java.lang.String: int length()>();	i13 = $i7 - i12;	$i8 = virtualinvoke r0.<java.lang.String: int length()>();	$i9 = $i8 - i12;	$r9 = r1.<okhttp3.CertificatePinner$Pin: java.lang.String pattern>;	$z3 = staticinvoke <kotlin.text.StringsKt: boolean regionMatches$default(java.lang.String,int,java.lang.String,int,int,boolean,int,java.lang.Object)>(r0, $i9, $r9, 3, i12, 0, 16, null);	if $z3 == 0 goto $z4 = 0;	$z4 = 0;	goto [?= return $z4];	return $z4
;block_num 4