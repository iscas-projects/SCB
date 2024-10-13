(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var36 0)
(declare-sort var476 0)
(declare-sort var2811 0)
(declare-sort var3186 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2811_checkNotNullParameter/-2060636419 (var3186 String) void)
(declare-fun cast-from-String-to-var3186 (String) var3186)
(declare-fun append/-1166366385 (String Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var36 var36)
(declare-const null-String String)
(declare-const var1918 var36) ; Statement: r2 := @this: okhttp3.MultipartBody$Companion 
(assert (not (= var1918 null-var36)))
(declare-const var577 String) ; Statement: $r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var577 null-String)))
(declare-const var1355 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1355 null-String)))
;(assert (var2811_checkNotNullParameter/-2060636419 (cast-from-String-to-var3186 var577) "<this>")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>") 

(declare-const var577!1 String)
(declare-const var916 String)
;(assert (var2811_checkNotNullParameter/-2060636419 (cast-from-String-to-var3186 var1355) "key")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "key") 

(declare-const var1355!1 String)
(declare-const var3190 String)
(assert true)
;(assert (append/-1166366385 var577!1 34)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var577!2 String)
(assert (str.prefixof var577!1 var577!2))
(define-const var2563 Int 0) ; Statement: i2 = 0 
(assert true)
(define-const var3225 Int (length/-134980193 var1355!1)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(assert (>= var2563 var3225)) ; Cond: i2 >= i0 
(assert true)
;(assert (append/-1166366385 var577!2 34)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var577!3 String)
(assert (str.prefixof var577!2 var577!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2811_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var3186=([java.lang.StringBuilder], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), length/-134980193=([java.lang.String], int)}
; {var36=okhttp3.MultipartBody$Companion, var1918=r2, var577=$r0, var1355=r1, var476=null_type, var2811=kotlin.jvm.internal.Intrinsics, var3186=java.lang.Object, var916="<this>", var3190="key", var2563=i2, var3225=i0}
; {okhttp3.MultipartBody$Companion=var36, r2=var1918, $r0=var577, r1=var1355, null_type=var476, kotlin.jvm.internal.Intrinsics=var2811, java.lang.Object=var3186, "<this>"=var916, "key"=var3190, i2=var2563, i0=var3225}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: int length()>": 1}
;stmts r2 := @this: okhttp3.MultipartBody$Companion;	$r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "key");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	i2 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i2 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	return
;block_num 3