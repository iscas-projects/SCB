(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var203 0)
(declare-sort var1631 0)
(declare-sort var11 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var11-init () var11)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun locationString/391724147 (var203) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1296723004 (var11 String) void)
(declare-const null-var203 var203)
(declare-const null-String String)
(declare-const var898 var203) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var898 null-var203)))
(declare-const var426 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var426 null-String)))
(define-const var3291 var11 var11-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.com.google.gson.stream.MalformedJsonException 
(define-const var2689 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2689)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2689!1 String)
(assert (= var2689!1 ""))
(assert true)
(define-const var712 String (append/672562846 var2689!1 var426)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2689!2 String)
(assert (= var2689!2 (str.++ var2689!1 var426)))
(assert true)
(define-const var2885 String (locationString/391724147 var898)) ; Statement: $r4 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String locationString()>() 
(assert true)
(define-const var2450 String (append/672562846 var712 var2885)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var712!1 String)
(assert (= var712!1 (str.++ var712 var2885)))
(assert true)
(define-const var3899 String (toString/-2075883882 var2450)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1296723004 var3291 var3899)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.MalformedJsonException: void <init>(java.lang.String)>($r7) 

(declare-const var3291!1 var11)
(declare-const var3899!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var11-init=([], com.google.javascript.jscomp.jarjar.com.google.gson.stream.MalformedJsonException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), locationString/391724147=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1296723004=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.MalformedJsonException, java.lang.String], void)}
; {var203=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var898=r3, var426=r2, var1631=null_type, var11=com.google.javascript.jscomp.jarjar.com.google.gson.stream.MalformedJsonException, var3291=$r0, var2689=$r1, var712=$r5, var2885=$r4, var2450=$r6, var3899=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var203, r3=var898, r2=var426, null_type=var1631, com.google.javascript.jscomp.jarjar.com.google.gson.stream.MalformedJsonException=var11, $r0=var3291, $r1=var2689, $r5=var712, $r4=var2885, $r6=var2450, $r7=var3899}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	r2 := @parameter0: java.lang.String;	$r0 = new com.google.javascript.jscomp.jarjar.com.google.gson.stream.MalformedJsonException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String locationString()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.MalformedJsonException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1