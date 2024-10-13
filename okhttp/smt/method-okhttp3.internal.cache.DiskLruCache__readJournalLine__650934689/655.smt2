(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1236 0)
(declare-sort var2931 0)
(declare-sort var360 0)
(declare-sort var2258 0)
(declare-sort var1219 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var360_indexOf$default/-213079313 (String Int Int Bool Int var2258) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1219-init () var1219)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var1219 String) void)
(declare-const null-var1236 var1236)
(declare-const null-String String)
(declare-const null-var2258 var2258)
(declare-const var2963 var1236) ; Statement: r4 := @this: okhttp3.internal.cache.DiskLruCache 
(assert (not (= var2963 null-var1236)))
(declare-const var400 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var400 null-String)))
(define-const var2000 String (cast-from-String-to-String var400)) ; Statement: $r1 = (java.lang.CharSequence) r0 
(define-const var2810 Int (var360_indexOf$default/-213079313 var2000 32 0 (ite (= 1 0) true false) 6 null-var2258)) ; Statement: i0 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r1, 32, 0, 0, 6, null) 
(define-const var731 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i0 != $i9 goto i1 = i0 + 1 
(assert (not (not (= var2810 var731)))) ; Negate: Cond: i0 != $i9  
(define-const var353 var1219 var1219-init) ; Statement: $r39 = new java.io.IOException 
(define-const var112 String String-init) ; Statement: $r38 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var112)) ; Statement: specialinvoke $r38.<java.lang.StringBuilder: void <init>()>() 
(declare-const var112!1 String)
(assert (= var112!1 ""))
(assert true)
(define-const var2635 String (append/672562846 var112!1 "unexpected journal line: ")) ; Statement: $r25 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unexpected journal line: ") 
(declare-const var112!2 String)
(assert (= var112!2 (str.++ var112!1 "unexpected journal line: ")))
(assert true)
(define-const var1544 String (append/672562846 var2635 var400)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2635!1 String)
(assert (= var2635!1 (str.++ var2635 var400)))
(assert true)
(define-const var3202 String (toString/-2075883882 var1544)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var353 var3202)) ; Statement: specialinvoke $r39.<java.io.IOException: void <init>(java.lang.String)>($r27) 

(declare-const var353!1 var1219)
(declare-const var3202!1 String)
 ; Statement: throw $r39 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var360_indexOf$default/-213079313=([java.lang.CharSequence, char, int, boolean, int, java.lang.Object], int), cast-from-Int-to-Int=([int], int), var1219-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1236=okhttp3.internal.cache.DiskLruCache, var2963=r4, var400=r0, var2931=null_type, var2000=$r1, var360=kotlin.text.StringsKt, var2258=java.lang.Object, var2810=i0, var731=$i9, var1219=java.io.IOException, var353=$r39, var112=$r38, var2635=$r25, var1544=$r26, var3202=$r27}
; {okhttp3.internal.cache.DiskLruCache=var1236, r4=var2963, r0=var400, null_type=var2931, $r1=var2000, kotlin.text.StringsKt=var360, java.lang.Object=var2258, i0=var2810, $i9=var731, java.io.IOException=var1219, $r39=var353, $r38=var112, $r25=var2635, $r26=var1544, $r27=var3202}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: okhttp3.internal.cache.DiskLruCache;	r0 := @parameter0: java.lang.String;	$r1 = (java.lang.CharSequence) r0;	i0 = staticinvoke <kotlin.text.StringsKt: int indexOf$default(java.lang.CharSequence,char,int,boolean,int,java.lang.Object)>($r1, 32, 0, 0, 6, null);	$i9 = (int) -1;	if i0 != $i9 goto i1 = i0 + 1;	$r39 = new java.io.IOException;	$r38 = new java.lang.StringBuilder;	specialinvoke $r38.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unexpected journal line: ");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r39.<java.io.IOException: void <init>(java.lang.String)>($r27);	throw $r39
;block_num 2