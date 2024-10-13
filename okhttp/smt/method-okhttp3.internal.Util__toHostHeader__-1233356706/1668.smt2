(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2257 0)
(declare-sort var1300 0)
(declare-sort var122 0)
(declare-sort var1252 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1300_checkNotNullParameter/-2060636419 (var122 String) void)
(declare-fun cast-from-var2257-to-var122 (var2257) var122)
(declare-fun host/1711863148 (var2257) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1252_contains$default/-455091908 (String String Bool Int var122) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun port/1842567001 (var2257) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2257 var2257)
(declare-const null-Bool Bool)
(declare-const null-var122 var122)
(declare-const var2556 var2257) ; Statement: $r0 := @parameter0: okhttp3.HttpUrl 
(assert (not (= var2556 null-var2257)))
(declare-const var2657 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2657 null-Bool)))
;(assert (var1300_checkNotNullParameter/-2060636419 (cast-from-var2257-to-var122 var2556) "<this>")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>") 

(declare-const var2556!1 var2257)
(declare-const var2945 String)
(assert true)
(define-const var1250 String (host/1711863148 var2556!1)) ; Statement: $r1 = virtualinvoke $r0.<okhttp3.HttpUrl: java.lang.String host()>() 
(define-const var147 String (cast-from-String-to-String var1250)) ; Statement: $r3 = (java.lang.CharSequence) $r1 
(define-const var3726 String (cast-from-String-to-String ":")) ; Statement: $r2 = (java.lang.CharSequence) ":" 
(define-const var3948 Bool (var1252_contains$default/-455091908 var147 var3726 (ite (= 1 0) true false) 2 null-var122)) ; Statement: $z0 = staticinvoke <kotlin.text.StringsKt: boolean contains$default(java.lang.CharSequence,java.lang.CharSequence,boolean,int,java.lang.Object)>($r3, $r2, 0, 2, null) 
 ; Statement: if $z0 == 0 goto $r16 = virtualinvoke $r0.<okhttp3.HttpUrl: java.lang.String host()>() 
(assert (= (ite var3948 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3071 String (host/1711863148 var2556!1)) ; Statement: $r16 = virtualinvoke $r0.<okhttp3.HttpUrl: java.lang.String host()>() 
(assert true) ; Non Conditional
(define-const var1525 String var3071) ; Statement: r4 = $r16 
 ; Statement: if z1 != 0 goto $r5 = new java.lang.StringBuilder 
(assert (not (= (ite var2657 1 0) 0))) ; Cond: z1 != 0 
(define-const var583 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var583)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var583!1 String)
(assert (= var583!1 ""))
(assert true)
(define-const var2055 String (append/672562846 var583!1 var1525)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var583!2 String)
(assert (= var583!2 (str.++ var583!1 var1525)))
(assert true)
(define-const var3211 String (append/-1166366385 var2055 58)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var2055!1 String)
(assert (str.prefixof var2055 var2055!1))
(assert true)
(define-const var113 Int (port/1842567001 var2556!1)) ; Statement: $i0 = virtualinvoke $r0.<okhttp3.HttpUrl: int port()>() 
(assert true)
(define-const var3579 String (append/-1001720160 var3211 var113)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3211!1 String)
(assert (str.prefixof var3211 var3211!1))
(assert true)
(define-const var1764 String (toString/-2075883882 var3579)) ; Statement: $r17 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r17] 
(assert true) ; Non Conditional
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var1300_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2257-to-var122=([okhttp3.HttpUrl], java.lang.Object), host/1711863148=([okhttp3.HttpUrl], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1252_contains$default/-455091908=([java.lang.CharSequence, java.lang.CharSequence, boolean, int, java.lang.Object], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), port/1842567001=([okhttp3.HttpUrl], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2257=okhttp3.HttpUrl, var2556=$r0, var2657=z1, var1300=kotlin.jvm.internal.Intrinsics, var122=java.lang.Object, var2945="<this>", var1250=$r1, var147=$r3, var3726=$r2, var1252=kotlin.text.StringsKt, var3948=$z0, var3071=$r16, var1525=r4, var583=$r5, var2055=$r6, var3211=$r7, var113=$i0, var3579=$r8, var1764=$r17}
; {okhttp3.HttpUrl=var2257, $r0=var2556, z1=var2657, kotlin.jvm.internal.Intrinsics=var1300, java.lang.Object=var122, "<this>"=var2945, $r1=var1250, $r3=var147, $r2=var3726, kotlin.text.StringsKt=var1252, $z0=var3948, $r16=var3071, r4=var1525, $r5=var583, $r6=var2055, $r7=var3211, $i0=var113, $r8=var3579, $r17=var1764}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 := @parameter0: okhttp3.HttpUrl;	z1 := @parameter1: boolean;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>");	$r1 = virtualinvoke $r0.<okhttp3.HttpUrl: java.lang.String host()>();	$r3 = (java.lang.CharSequence) $r1;	$r2 = (java.lang.CharSequence) ":";	$z0 = staticinvoke <kotlin.text.StringsKt: boolean contains$default(java.lang.CharSequence,java.lang.CharSequence,boolean,int,java.lang.Object)>($r3, $r2, 0, 2, null);	if $z0 == 0 goto $r16 = virtualinvoke $r0.<okhttp3.HttpUrl: java.lang.String host()>();	$r16 = virtualinvoke $r0.<okhttp3.HttpUrl: java.lang.String host()>();	r4 = $r16;	if z1 != 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$i0 = virtualinvoke $r0.<okhttp3.HttpUrl: int port()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r17 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r17];	return $r17
;block_num 5