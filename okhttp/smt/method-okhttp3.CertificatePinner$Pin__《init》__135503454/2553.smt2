(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1210 0)
(declare-sort var574 0)
(declare-sort var3802 0)
(declare-sort var3599 0)
(declare-sort var2220 0)
(declare-sort var2736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3802_checkNotNullParameter/-2060636419 (var3599 String) void)
(declare-fun cast-from-String-to-var3599 (String) var3599)
(declare-fun <init>/-279557996 (var3599) void)
(declare-fun cast-from-var1210-to-var3599 (var1210) var3599)
(declare-fun var2220_startsWith$default/493066340 (String String Bool Int var3599) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2220_indexOf$default/-1977995008 (String String Int Bool Int var3599) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2736-init () var2736)
(declare-fun toString/-522406933 (var3599) String)
(declare-fun <init>/875830710 (var2736 String) void)
(declare-const null-var1210 var1210)
(declare-const null-String String)
(declare-const null-var3599 var3599)
(declare-const var1175 var1210) ; Statement: r2 := @this: okhttp3.CertificatePinner$Pin 
(assert (not (= var1175 null-var1210)))
(declare-const var1578 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1578 null-String)))
(declare-const var3769 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3769 null-String)))
;(assert (var3802_checkNotNullParameter/-2060636419 (cast-from-String-to-var3599 var1578) "pattern")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "pattern") 

(declare-const var1578!1 String)
(declare-const var445 String)
;(assert (var3802_checkNotNullParameter/-2060636419 (cast-from-String-to-var3599 var3769) "pin")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "pin") 

(declare-const var3769!1 String)
(declare-const var1080 String)
(assert true)
;(assert (<init>/-279557996 (cast-from-var1210-to-var3599 var1175))) ; Statement: specialinvoke r2.<java.lang.Object: void <init>()>() 

(declare-const var1175!1 var1210)
(define-const var2038 Bool (var2220_startsWith$default/493066340 var1578!1 "*." (ite (= 1 0) true false) 2 null-var3599)) ; Statement: $z0 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>(r0, "*.", 0, 2, null) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>(r0, "**.", 0, 2, null) 
(assert (not (= (ite var2038 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3864 String (cast-from-String-to-String var1578!1)) ; Statement: $r37 = (java.lang.CharSequence) r0 
(define-const var1070 Int (var2220_indexOf$default/-1977995008 var3864 "*" 1 (ite (= 1 0) true false) 4 null-var3599)) ; Statement: $i2 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,java.lang.String,int,boolean,int,java.lang.Object)>($r37, "*", 1, 0, 4, null) 
(define-const var862 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i2 == $i4 goto $z4 = 1 
(assert (= var1070 var862)) ; Cond: $i2 == $i4 
(define-const var2996 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z4 != 0 goto $r4 = staticinvoke <okhttp3.internal.HostnamesKt: java.lang.String toCanonicalHost(java.lang.String)>(r0) 
(assert (not (not (= (ite var2996 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var3657 String String-init) ; Statement: $r39 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3657)) ; Statement: specialinvoke $r39.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3657!1 String)
(assert (= var3657!1 ""))
(assert true)
(define-const var737 String (append/672562846 var3657!1 "Unexpected pattern: ")) ; Statement: $r32 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected pattern: ") 
(declare-const var3657!2 String)
(assert (= var3657!2 (str.++ var3657!1 "Unexpected pattern: ")))
(assert true)
(define-const var3195 String (append/672562846 var737 var1578!1)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var737!1 String)
(assert (= var737!1 (str.++ var737 var1578!1)))
(assert true)
(define-const var683 String (toString/-2075883882 var3195)) ; Statement: $r38 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var154 var2736 var2736-init) ; Statement: $r40 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var3810 String (toString/-522406933 (cast-from-String-to-var3599 var683))) ; Statement: $r35 = virtualinvoke $r38.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var154 var3810)) ; Statement: specialinvoke $r40.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r35) 

(declare-const var154!1 var2736)
(declare-const var3810!1 String)
 ; Statement: throw $r40 
(check-sat)
(get-model)
(get-unsat-core)
; {var3802_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var3599=([java.lang.String], java.lang.Object), <init>/-279557996=([java.lang.Object], void), cast-from-var1210-to-var3599=([okhttp3.CertificatePinner$Pin], java.lang.Object), var2220_startsWith$default/493066340=([java.lang.String, java.lang.String, boolean, int, java.lang.Object], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2220_indexOf$default/-1977995008=([java.lang.CharSequence, java.lang.String, int, boolean, int, java.lang.Object], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2736-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1210=okhttp3.CertificatePinner$Pin, var1175=r2, var1578=r0, var574=null_type, var3769=r1, var3802=kotlin.jvm.internal.Intrinsics, var3599=java.lang.Object, var445="pattern", var1080="pin", var2220=kotlin.text.StringsKt, var2038=$z0, var3864=$r37, var1070=$i2, var862=$i4, var2996=$z4, var3657=$r39, var737=$r32, var3195=$r33, var683=$r38, var2736=java.lang.IllegalArgumentException, var154=$r40, var3810=$r35}
; {okhttp3.CertificatePinner$Pin=var1210, r2=var1175, r0=var1578, null_type=var574, r1=var3769, kotlin.jvm.internal.Intrinsics=var3802, java.lang.Object=var3599, "pattern"=var445, "pin"=var1080, kotlin.text.StringsKt=var2220, $z0=var2038, $r37=var3864, $i2=var1070, $i4=var862, $z4=var2996, $r39=var3657, $r32=var737, $r33=var3195, $r38=var683, java.lang.IllegalArgumentException=var2736, $r40=var154, $r35=var3810}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: okhttp3.CertificatePinner$Pin;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "pattern");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "pin");	specialinvoke r2.<java.lang.Object: void <init>()>();	$z0 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>(r0, "*.", 0, 2, null);	if $z0 == 0 goto $z1 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>(r0, "**.", 0, 2, null);	$r37 = (java.lang.CharSequence) r0;	$i2 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,java.lang.String,int,boolean,int,java.lang.Object)>($r37, "*", 1, 0, 4, null);	$i4 = (int) -1;	if $i2 == $i4 goto $z4 = 1;	$z4 = 1;	goto [?= (branch)];	if $z4 != 0 goto $r4 = staticinvoke <okhttp3.internal.HostnamesKt: java.lang.String toCanonicalHost(java.lang.String)>(r0);	$r39 = new java.lang.StringBuilder;	specialinvoke $r39.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected pattern: ");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r38 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	$r40 = new java.lang.IllegalArgumentException;	$r35 = virtualinvoke $r38.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r40.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r35);	throw $r40
;block_num 5