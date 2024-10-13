(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1855 0)
(declare-sort var71 0)
(declare-sort var3139 0)
(declare-sort var2854 0)
(declare-sort var2446 0)
(declare-sort var1335 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3139_checkNotNullParameter/-2060636419 (var2854 String) void)
(declare-fun cast-from-String-to-var2854 (String) var2854)
(define-fun cast-from-var1855-to-var1855 ((arg var1855)) var1855 arg)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2446_indexOf$default/-213079313 (String Int Int Bool Int var2854) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1335-init () var1335)
(declare-fun toString/-522406933 (var2854) String)
(declare-fun <init>/875830710 (var1335 String) void)
(declare-const null-var1855 var1855)
(declare-const null-String String)
(declare-const null-var2854 var2854)
(declare-const var667 var1855) ; Statement: r1 := @this: okhttp3.Headers$Builder 
(assert (not (= var667 null-var1855)))
(declare-const var2053 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2053 null-String)))
;(assert (var3139_checkNotNullParameter/-2060636419 (cast-from-String-to-var2854 var2053) "line")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "line") 

(declare-const var2053!1 String)
(declare-const var3558 String)
(define-const var605 var1855 (cast-from-var1855-to-var1855 var667)) ; Statement: $r2 = (okhttp3.Headers$Builder) r1 
(define-const var1158 String (cast-from-String-to-String var2053!1)) ; Statement: $r3 = (java.lang.CharSequence) r0 
(define-const var2357 Int (var2446_indexOf$default/-213079313 var1158 58 0 (ite (= 1 0) true false) 6 null-var2854)) ; Statement: i0 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r3, 58, 0, 0, 6, null) 
(define-const var177 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 == $i3 goto $z0 = 0 
(assert (not (= var2357 var177))) ; Negate: Cond: i0 == $i3  
(define-const var1283 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (not (= (ite var1283 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1769 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1769)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1769!1 String)
(assert (= var1769!1 ""))
(assert true)
(define-const var1459 String (append/672562846 var1769!1 "Unexpected header: ")) ; Statement: $r11 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected header: ") 
(declare-const var1769!2 String)
(assert (= var1769!2 (str.++ var1769!1 "Unexpected header: ")))
(assert true)
(define-const var326 String (append/672562846 var1459 var2053!1)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1459!1 String)
(assert (= var1459!1 (str.++ var1459 var2053!1)))
(assert true)
(define-const var3958 String (toString/-2075883882 var326)) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var745 var1335 var1335-init) ; Statement: $r17 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var2753 String (toString/-522406933 (cast-from-String-to-var2854 var3958))) ; Statement: $r14 = virtualinvoke $r15.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var745 var2753)) ; Statement: specialinvoke $r17.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14) 

(declare-const var745!1 var1335)
(declare-const var2753!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var3139_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2854=([java.lang.String], java.lang.Object), cast-from-var1855-to-var1855=([okhttp3.Headers$Builder], okhttp3.Headers$Builder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2446_indexOf$default/-213079313=([java.lang.CharSequence, char, int, boolean, int, java.lang.Object], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1335-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1855=okhttp3.Headers$Builder, var667=r1, var2053=r0, var71=null_type, var3139=kotlin.jvm.internal.Intrinsics, var2854=java.lang.Object, var3558="line", var605=$r2, var1158=$r3, var2446=kotlin.text.StringsKt, var2357=i0, var177=$i3, var1283=$z0, var1769=$r16, var1459=$r11, var326=$r12, var3958=$r15, var1335=java.lang.IllegalArgumentException, var745=$r17, var2753=$r14}
; {okhttp3.Headers$Builder=var1855, r1=var667, r0=var2053, null_type=var71, kotlin.jvm.internal.Intrinsics=var3139, java.lang.Object=var2854, "line"=var3558, $r2=var605, $r3=var1158, kotlin.text.StringsKt=var2446, i0=var2357, $i3=var177, $z0=var1283, $r16=var1769, $r11=var1459, $r12=var326, $r15=var3958, java.lang.IllegalArgumentException=var1335, $r17=var745, $r14=var2753}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.Headers$Builder;	r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "line");	$r2 = (okhttp3.Headers$Builder) r1;	$r3 = (java.lang.CharSequence) r0;	i0 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r3, 58, 0, 0, 6, null);	$i3 = (int) -1;	if i0 == $i3 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto $r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected header: ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = new java.lang.IllegalArgumentException;	$r14 = virtualinvoke $r15.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r17.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14);	throw $r17
;block_num 4