(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2470 0)
(declare-sort var1614 0)
(declare-sort var2690 0)
(declare-sort var2441 0)
(declare-sort var1386 0)
(declare-sort var2025 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2690_checkNotNullParameter/-2060636419 (var2441 String) void)
(declare-fun cast-from-String-to-var2441 (String) var2441)
(define-fun cast-from-var2470-to-var2470 ((arg var2470)) var2470 arg)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1386_indexOf$default/-213079313 (String Int Int Bool Int var2441) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2025-init () var2025)
(declare-fun toString/-522406933 (var2441) String)
(declare-fun <init>/875830710 (var2025 String) void)
(declare-const null-var2470 var2470)
(declare-const null-String String)
(declare-const null-var2441 var2441)
(declare-const var3754 var2470) ; Statement: r1 := @this: okhttp3.Headers$Builder 
(assert (not (= var3754 null-var2470)))
(declare-const var3144 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3144 null-String)))
;(assert (var2690_checkNotNullParameter/-2060636419 (cast-from-String-to-var2441 var3144) "line")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "line") 

(declare-const var3144!1 String)
(declare-const var2764 String)
(define-const var2358 var2470 (cast-from-var2470-to-var2470 var3754)) ; Statement: $r2 = (okhttp3.Headers$Builder) r1 
(define-const var1329 String (cast-from-String-to-String var3144!1)) ; Statement: $r3 = (java.lang.CharSequence) r0 
(define-const var1940 Int (var1386_indexOf$default/-213079313 var1329 58 0 (ite (= 1 0) true false) 6 null-var2441)) ; Statement: i0 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r3, 58, 0, 0, 6, null) 
(define-const var1240 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 == $i3 goto $z0 = 0 
(assert (= var1940 var1240)) ; Cond: i0 == $i3 
(define-const var3863 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (not (= (ite var3863 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3193 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3193)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3193!1 String)
(assert (= var3193!1 ""))
(assert true)
(define-const var2515 String (append/672562846 var3193!1 "Unexpected header: ")) ; Statement: $r11 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected header: ") 
(declare-const var3193!2 String)
(assert (= var3193!2 (str.++ var3193!1 "Unexpected header: ")))
(assert true)
(define-const var1294 String (append/672562846 var2515 var3144!1)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2515!1 String)
(assert (= var2515!1 (str.++ var2515 var3144!1)))
(assert true)
(define-const var1352 String (toString/-2075883882 var1294)) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2032 var2025 var2025-init) ; Statement: $r17 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var3968 String (toString/-522406933 (cast-from-String-to-var2441 var1352))) ; Statement: $r14 = virtualinvoke $r15.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2032 var3968)) ; Statement: specialinvoke $r17.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14) 

(declare-const var2032!1 var2025)
(declare-const var3968!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var2690_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2441=([java.lang.String], java.lang.Object), cast-from-var2470-to-var2470=([okhttp3.Headers$Builder], okhttp3.Headers$Builder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1386_indexOf$default/-213079313=([java.lang.CharSequence, char, int, boolean, int, java.lang.Object], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2025-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2470=okhttp3.Headers$Builder, var3754=r1, var3144=r0, var1614=null_type, var2690=kotlin.jvm.internal.Intrinsics, var2441=java.lang.Object, var2764="line", var2358=$r2, var1329=$r3, var1386=kotlin.text.StringsKt, var1940=i0, var1240=$i3, var3863=$z0, var3193=$r16, var2515=$r11, var1294=$r12, var1352=$r15, var2025=java.lang.IllegalArgumentException, var2032=$r17, var3968=$r14}
; {okhttp3.Headers$Builder=var2470, r1=var3754, r0=var3144, null_type=var1614, kotlin.jvm.internal.Intrinsics=var2690, java.lang.Object=var2441, "line"=var2764, $r2=var2358, $r3=var1329, kotlin.text.StringsKt=var1386, i0=var1940, $i3=var1240, $z0=var3863, $r16=var3193, $r11=var2515, $r12=var1294, $r15=var1352, java.lang.IllegalArgumentException=var2025, $r17=var2032, $r14=var3968}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.Headers$Builder;	r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "line");	$r2 = (okhttp3.Headers$Builder) r1;	$r3 = (java.lang.CharSequence) r0;	i0 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r3, 58, 0, 0, 6, null);	$i3 = (int) -1;	if i0 == $i3 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto $r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected header: ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = new java.lang.IllegalArgumentException;	$r14 = virtualinvoke $r15.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r17.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14);	throw $r17
;block_num 4